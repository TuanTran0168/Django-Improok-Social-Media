from django.urls import path, re_path, include
from rest_framework import routers
# from social_media import views

from .views import RoleViewSet, UserModelViewSet, UserViewSet, PostViewSet, PostModelViewSet

router = routers.DefaultRouter()
router.register('roles', RoleViewSet, basename='roles')
router.register('users_all_methods', UserModelViewSet, basename='users_all_methods')
router.register('users', UserViewSet, basename='users')
router.register('posts_all_methods', PostModelViewSet, basename='posts_all_methods')
router.register('posts', PostViewSet, basename='posts')

urlpatterns = [
    path('', include(router.urls)),
]
