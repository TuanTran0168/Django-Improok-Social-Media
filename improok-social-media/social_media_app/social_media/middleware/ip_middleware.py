from django.http import HttpResponseForbidden
from rest_framework.views import Response
from rest_framework import status
from rest_framework.exceptions import PermissionDenied
from social_media_app.settings import CLIENT_ID, CLIENT_SECRET, ALLOWED_HOSTS


class IPFilterMiddleWare(object):
    def __init__(self, get_response):
        """
        Chạy 1 lần khi server chạy
        """
        self.get_response = get_response

    def __call__(self, request):
        """
        Trước khi view run thì viết ở đây
        """
        print('_____________ START _________________')

        ip = request.META.get('REMOTE_ADDR')
        method = request.META.get('REQUEST_METHOD')

        print('ip address: ' + ip if ip is not None else "None")
        print('method: ' + method if method is not None else "None")

        allowed_ips = ALLOWED_HOSTS
        ip = request.META.get('REMOTE_ADDR')  # Get client IP

        if ip in allowed_ips:
            print("Địa chỉ IP của bạn OK nha!")
        else:
            return HttpResponseForbidden("Địa chỉ IP vầy mà đòi fetch API của tôi ư?")

        response = self.get_response(request)

        """
        Sau khi view run thì viết ở đây
        """

        print('_____________ END _________________')
        return response

    def process_view(self, request, view_func, view_args, view_kwargs):
        """
        Called just before Django calls the view.
        """
        return None

    def process_exception(self, request, exception):
        """
        Called when a view raises an exception.
        """
        print("Exception")
        return None

    def process_template_response(self, request, response):
        """
        Called just after the view has finished executing.
        """
        return response
