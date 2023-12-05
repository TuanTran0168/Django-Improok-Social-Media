from rest_framework import viewsets, generics

# from social_media import serializers
from .models import Role, User, Post
from .paginators import PostPagination, MyPageSize
from .serializers import UserSerializer, RoleSerializer, PostSerializer


class RoleViewSet(viewsets.ViewSet, generics.ListAPIView):
    queryset = Role.objects.all()
    serializer_class = RoleSerializer


class UserModelViewSet(viewsets.ModelViewSet):
    queryset = User.objects.all()
    serializer_class = UserSerializer
    pagination_class = MyPageSize


class UserViewSet(viewsets.ViewSet, generics.ListAPIView):
    queryset = User.objects.all()
    serializer_class = UserSerializer
    pagination_class = MyPageSize


class PostModelViewSet(viewsets.ModelViewSet):
    queryset = Post.objects.all()
    serializer_class = PostSerializer
    pagination_class = PostPagination


class PostViewSet(viewsets.ViewSet, generics.ListAPIView):
    queryset = Post.objects.filter(active=True).all()
    serializer_class = PostSerializer
    pagination_class = PostPagination
