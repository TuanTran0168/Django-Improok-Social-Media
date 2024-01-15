from .tasks import tuan_tran_task

result = tuan_tran_task.delay()

print(result.status)

print(result.get())