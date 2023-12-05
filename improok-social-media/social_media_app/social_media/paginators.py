from rest_framework.pagination import PageNumberPagination


class MyPageSize(PageNumberPagination):
    page_size = 3


class PostPagination(PageNumberPagination):
    page_size = 2
