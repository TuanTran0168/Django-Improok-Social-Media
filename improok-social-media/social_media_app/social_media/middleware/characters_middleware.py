from django.http import HttpResponseForbidden, HttpResponseBadRequest
from rest_framework.views import Response
from rest_framework import status
from rest_framework.exceptions import PermissionDenied
from social_media_app.settings import CLIENT_ID, CLIENT_SECRET, ALLOWED_HOSTS
import re, json

pattern = r'[><*&;|`]'  # Biểu thức chính quy mô tả các kí tự nguy hiểm
pattern_string = ' '.join(str(char) for char in pattern)


def check_characters(value):
    if re.search(pattern, value):
        return True
    return False


# Kiểm tra các request có cấu trúc phức tạp
# {
#     "post_content": "Bài Post để khảo sát 5",
#     "account_id": 1,
#     "post_survey_title": "Khảo sát chất lượng giảng viên E",
#     "start_time": "2023-12-21T10:46:28.771Z",
#     "end_time": "2023-12-21T10:46:28.771Z",
#     "survey_question_list": [
#         {
#             "survey_question_type_id": 1,
#             "question_content": "Giảng viên E thế nào",
#             "question_order": 1,
#             "is_required": true,
#             "survey_question_option_list": [
#                 {
#                     "question_option_value": "Tốt",
#                     "question_option_order": 1
#                 },
#                 {
#                     "question_option_value": "Bình thường",
#                     "question_option_order": 2
#                 },
#                 {
#                     "question_option_value": "tệ",
#                     "question_option_order": 3
#                 }
#             ]
#         },
#         {
#             "survey_question_type_id": 3,
#             "question_content": "Bạn thích điều gì ở giảng viên E",
#             "question_order": 2,
#             "is_required": true,
#             "survey_question_option_list": [
#                 {
#                     "question_option_value": "Hiền",
#                     "question_option_order": 1
#                 },
#                 {
#                     "question_option_value": "Nhân hậu",
#                     "question_option_order": 2
#                 },
#                 {
#                     "question_option_value": "Giỏi",
#                     "question_option_order": 3
#                 }
#             ]
#         }
#     ]
# }
# contains_special_characters() kiểm tra các request có cấu trúc phức tạp như trên

def contains_special_characters(value):
    if isinstance(value, dict):  # Nếu value mà là dict tiếp thì đệ quy vào trong
        for sub_value in value.values():
            if contains_special_characters(sub_value):
                return True
    elif isinstance(value, list):  # Nếu value mà là danh sách thì cũng đệ quy vào trong
        for item in value:
            if contains_special_characters(item):
                return True
    elif isinstance(value, str):  # Nếu là chuỗi thì kiểm tra ký tự lạ nguy hiểm
        return check_characters(value);
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
                            if contains_special_characters(value):
                                return HttpResponseBadRequest(
                                    'Đã phát hiện các ký tự không hợp lệ trong dữ liệu JSON!\n'
                                    'Bao gồm: ' + pattern_string,
                                    status=400)
                except json.decoder.JSONDecodeError:
                    return HttpResponseBadRequest('Định dạng JSON không hợp lệ!.', status=400)

            else:
                print(request.POST.items())
                print(request.POST.dict())
                for key, value in request.POST.items():
                    if contains_special_characters(value):
                        return HttpResponseBadRequest('Đã phát hiện các ký tự không hợp lệ trong dữ liệu form-data!\n'
                                                      'Bao gồm: ' + pattern_string,
                                                      status=400)

        response = self.get_response(request)
        return response
