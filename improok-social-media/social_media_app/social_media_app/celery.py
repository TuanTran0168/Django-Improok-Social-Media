import logging
import os

from celery import Celery
from celery.schedules import crontab

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'social_media_app.settings')

app = Celery('social_media_app')

app.config_from_object('django.conf:settings', namespace='CELERY')


# Celery Beat Setting
app.autodiscover_tasks()


# app.autodiscover_tasks(['social_media.tasks'])


@app.task(bind=True)
def debug_task(self):
    print('Request: {0!r}'.format(self.request))


app.conf.beat_schedule = {
    'run-create-invitation-group': {
        'task': 'social_media.tasks.tuan_tran_create_invitation_group',
        'schedule': 30,  # Chạy task mỗi 30 giay
    },
    'run-tuan-tran-change-password-after-1-days': {
        'task': 'social_media.tasks.tuan_tran_change_password_after_1_days',
        'schedule': crontab(minute=0, hour=0),  # Chạy task mỗi ngày vào lúc 12h đêm
    },
    'test-count-task': {
        'task': 'social_media.tasks.test_count_task',
        'schedule': 5
    },
}

app.conf.broker_connection_retry_on_startup = True
# celery -A social_media_app worker --loglevel=info
# celery -A social_media_app worker -n tuantranworker --loglevel=info
# celery -A social_media_app beat -l INFO --scheduler django_celery_beat.schedulers:DatabaseScheduler
# celery -A social_media_app beat -l DEBUG --scheduler django_celery_beat.schedulers:DatabaseScheduler
# celery -A social_media_app inspect registered

# celery -A social_media_app.celery worker -l info
# celery -A social_media_app.celery worker --pool=solo -l info
