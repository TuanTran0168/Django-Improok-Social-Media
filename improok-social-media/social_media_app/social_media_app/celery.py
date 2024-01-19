import logging
import os

from celery import Celery
from celery.schedules import crontab

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'social_media_app.settings')

app = Celery('social_media_app')

app.config_from_object('django.conf:settings', namespace='CELERY')

# app.autodiscover_tasks()
app.autodiscover_tasks(['social_media.tasks'])


@app.task(bind=True)
def debug_task(self):
    print('Request: {0!r}'.format(self.request))


app.conf.beat_schedule = {
    # 'run-tuan-tran-task': {
    #     'task': 'social_media.tasks.tuan_tran_task',
    #     'schedule': crontab(minute='*/1'),  # Chạy task mỗi 1 phút
    # },
    # 'run-tuan-tran-task-1': {
    #     'task': 'social_media.tasks.tuan_tran_task_1',
    #     'schedule': crontab(minute='*/2'),  # Chạy task mỗi 2 phút
    # },
    # 'run-tuan-tran-task-2': {
    #     'task': 'social_media.tasks.tuan_tran_task_2',
    #     'schedule': crontab(minute='*/3'),  # Chạy task mỗi 3 phút
    # },
    # 'run-tuan-tran-task-3': {
    #     'task': 'social_media.tasks.tuan_tran_task_2',
    #     'schedule': crontab(minute='*/5'),  # Chạy task mỗi 5 phút
    # },
    # 'run-tuan-tran-task-4': {
    #     'task': 'social_media.tasks.tuan_tran_task_3',
    #     'schedule': 5,  # Chạy task mỗi 5 giay
    # },
    'run-create-invitation-group': {
        'task': 'social_media.tasks.tuan_tran_create_invitation_group',
        'schedule': 30,  # Chạy task mỗi 30 giay
    },
    'run-tuan-tran-change-password-after-1-days': {
        'task': 'social_media.tasks.tuan_tran_change_password_after_1_days',
        'schedule': crontab(minute=0, hour=0),  # Chạy task mỗi ngày vào lúc 12h đêm
    },
}

app.conf.broker_connection_retry_on_startup = True

# celery -A social_media_app worker --loglevel=info
# celery -A social_media_app beat -l INFO --scheduler django_celery_beat.schedulers:DatabaseScheduler
# celery -A social_media_app beat -l DEBUG --scheduler django_celery_beat.schedulers:DatabaseScheduler
# celery -A social_media_app inspect registered

logger = logging.getLogger("celery")

# @app.task
# def show_hello_world():
#     logger.info("-" * 25)
#     logger.info("Printing Hello from Celery")
#     logger.info("-" * 25)
