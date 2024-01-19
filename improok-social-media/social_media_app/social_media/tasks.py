# ce/taks.py
# Create your tasks here
import logging

from celery import shared_task
from rest_framework.renderers import JSONRenderer

from .models import InvitationGroup, User
from .serializers import InvitationGroupSerializer

# @shared_task
# def tuan_tran_task():
#     print("Hello from tuan_tran_task!")
#
#
# @shared_task
# def tuan_tran_task_1():
#     print("Hello from tuan_tran_task! 1")
#
#
# @shared_task
# def tuan_tran_task_2():
#     print("Hello from tuan_tran_task! 2")
#
#
# @shared_task
# def tuan_tran_task_3():
#     InvitationGroup.objects.create(invitation_group_name="Tạo bằng task")

logger = logging.getLogger("celery")


@shared_task
def tuan_tran_create_invitation_group():
    logging.info("Đây là: tuan_tran_create_invitation_group")
    try:
        invitation_group_task = InvitationGroup.objects.create(invitation_group_name="Tạo bằng task")
        invitation_group_task.save()
        serializer = InvitationGroupSerializer(invitation_group_task)
        serialized_data = JSONRenderer().render(serializer.data)
        logger.info("Task đã hoàn thành thành công. Kết quả: %s", serialized_data)
    except Exception as e:
        logger.error("Lỗi khi lưu thông tin InvitationGroup: %s", str(e))


@shared_task
def tuan_tran_change_password_after_1_days():
    try:
        temp_user = User(username='temp')
        temp_user.set_password('ou@123')
        temp_user.save()
        user_list = User.objects.filter(temp_user.password)
        if user_list:
            for user in user_list:
                user.confirm_status.id = 2
        logger.info("Task đã hoàn thành thành công")
    except Exception as e:
        logger.error("Task thất bại: %s", str(e))
