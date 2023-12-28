from django.http import HttpResponseForbidden
from rest_framework.views import Response
from rest_framework import status
from rest_framework.exceptions import PermissionDenied
from social_media_app.settings import CLIENT_ID, CLIENT_SECRET


class Oauth2MiddleWare(object):
    def __init__(self, get_response):
        self.get_response = get_response

    def __call__(self, request):
        if request.method == 'POST' and str(request.path).__eq__('/o/token/'):
            print('Đây là login với url: ' + request.path)
            data = request.POST.dict()  # Lấy data từ body mà client gửi nè

            # Thêm dữ liệu vào body
            data['client_id'] = CLIENT_ID
            data['client_secret'] = CLIENT_SECRET
            data['grant_type'] = 'password'
            # Cập nhật body của yêu cầu với dữ liệu mới
            print(data)
            request.POST = data

        response = self.get_response(request)
        return response
