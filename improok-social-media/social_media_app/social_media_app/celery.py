import os

from celery import Celery

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'social_media_app.settings')

app = Celery('social_media_app')

app.config_from_object('django.conf:settings', namespace='CELERY')

app.autodiscover_tasks()


@app.task(bind=True)
def debug_task(self):
    print('Request: {0!r}'.format(self.request))


app.conf.beat_schedule = {
    'run_every_5_seconds': {
        'task': 'tuan_tran_task',
        'schedule': 5.0,
    },
}

app.conf.broker_connection_retry_on_startup = True
