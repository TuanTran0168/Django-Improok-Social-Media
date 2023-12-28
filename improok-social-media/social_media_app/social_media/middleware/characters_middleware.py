from django.http import HttpResponseForbidden, HttpResponseBadRequest
from rest_framework.views import Response
from rest_framework import status
from rest_framework.exceptions import PermissionDenied
from social_media_app.settings import CLIENT_ID, CLIENT_SECRET, ALLOWED_HOSTS
import re, json


def contains_dangerous_characters(value):
    pattern = r'[<>*&;|`]'  # Biểu thức chính quy mô tả các kí tự nguy hiểm

    if re.search(pattern, value):
        return True
    return False


class BlockInvalidCharactersMiddleware:
    def __init__(self, get_response):
        self.get_response = get_response

    def __call__(self, request):
        if request.method == 'POST':
            if request.content_type == 'application/json':
                try:
                    data = json.loads(request.body)
                    print(data)
                    if isinstance(data, dict):
                        for key, value in data.items():
                            if contains_dangerous_characters(value):
                                return HttpResponseBadRequest('Đã phát hiện các ký tự không hợp lệ trong dữ liệu JSON!',
                                                              status=400)
                except json.decoder.JSONDecodeError:
                    return HttpResponseBadRequest('Định dạng JSON không hợp lệ!.', status=400)

            else:
                print(request.POST.items())
                print(request.POST.dict())
                for key, value in request.POST.items():
                    if contains_dangerous_characters(value):
                        return HttpResponseBadRequest('Đã phát hiện các ký tự không hợp lệ trong dữ liệu form-data.',
                                                      status=400)

        response = self.get_response(request)
        return response
