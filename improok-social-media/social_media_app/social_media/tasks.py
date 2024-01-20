# ce/taks.py
# Create your tasks here
import logging
from time import sleep

from celery import shared_task
from rest_framework.renderers import JSONRenderer

from .models import InvitationGroup, User, Account
from .serializers import InvitationGroupSerializer
from social_media_app.celery import app

logger = logging.getLogger("celery")


@shared_task(bind=True)
def tuan_tran_create_invitation_group(self):
    logging.info("Đây là: tuan_tran_create_invitation_group")
    try:
        invitation_group_task = InvitationGroup.objects.create(invitation_group_name="Tạo bằng task (CELERY BEAT)")
        invitation_group_task.save()
        serializer = InvitationGroupSerializer(invitation_group_task)
        serialized_data = JSONRenderer().render(serializer.data)
        logger.info("Task đã hoàn thành thành công. Kết quả: %s", serialized_data)
        print("Task đã hoàn thành thành công. Kết quả: %s", serialized_data)
        return "Task (tuan_tran_create_invitation_group) Completed!"
    except Exception as e:
        logger.error("Lỗi khi lưu thông tin InvitationGroup: %s", str(e))
        return "Task (tuan_tran_create_invitation_group) Failed!"


@shared_task(bind=True)
def tuan_tran_change_password_after_1_days():
    try:
        temp_user = User(username='temp')
        temp_user.set_password('ou@123')
        temp_user.save()
        user_list = User.objects.filter(temp_user.password)
        if user_list:
            for user in user_list:
                account = Account.objects().filter(user=user)
                if account:
                    account.account_status = False
                    account.save()
        logger.info("Task (tuan_tran_change_password_after_1_days) đã hoàn thành thành công")
        print("Task (tuan_tran_change_password_after_1_days) đã hoàn thành thành công")
        return 'Task (tuan_tran_change_password_after_1_days) Completed'
    except Exception as e:
        logger.error("Task (tuan_tran_change_password_after_1_days) thất bại: %s", str(e))
        return 'Task (tuan_tran_change_password_after_1_days) Failed'


@shared_task(bind=True)
def test_count_task(self):
    for i in range(11):
        print(i)
        sleep(1)
    return 'Task complete'

# app.tasks.register(test_count_task)
# app.tasks.register(tuan_tran_create_invitation_group)
