# ce/taks.py
# Create your tasks here
from celery import shared_task


@shared_task
def tuan_tran_task():
    print("Hello from tuan_tran_task!")


@shared_task
def tuan_tran_task_1():
    print("Hello from tuan_tran_task!")


@shared_task
def tuan_tran_task_2():
    print("Hello from tuan_tran_task!")
