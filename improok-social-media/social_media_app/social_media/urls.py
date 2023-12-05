from django.urls import path, re_path, include
from rest_framework import routers
# from social_media import views

from .views import RoleViewSet, UserModelViewSet, UserViewSet, PostViewSet, PostModelViewSet, AccountModelViewSet, \
    AccountViewSet, PostImageModelViewSet, PostImageViewSet

router = routers.DefaultRouter()
router.register('roles', RoleViewSet, basename='roles')
router.register('users_all_methods', UserModelViewSet, basename='users_all_methods')
router.register('users', UserViewSet, basename='users')
router.register('posts_all_methods', PostModelViewSet, basename='posts_all_methods')
router.register('posts', PostViewSet, basename='posts')
router.register('accounts_all_methods', AccountModelViewSet, basename='accounts_all_methods')
router.register('accounts', AccountViewSet, basename='accounts')
router.register('post_images_all_methods', PostImageModelViewSet, basename='post_images_all_methods')
router.register('post_images', PostImageViewSet, basename='post_images')

urlpatterns = [
    path('', include(router.urls)),
]
