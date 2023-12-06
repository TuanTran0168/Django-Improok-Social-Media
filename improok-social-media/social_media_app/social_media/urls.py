from django.urls import path, re_path, include
from rest_framework import routers
# from social_media import views

from .views import RoleViewSet, UserModelViewSet, UserViewSet, PostViewSet, PostModelViewSet, AccountModelViewSet, \
    AccountViewSet, PostImageModelViewSet, PostImageViewSet, CommentModelViewSet, CommentViewSet

router = routers.DefaultRouter()
router.register('roles', RoleViewSet, basename='roles')

router.register('users', UserViewSet, basename='users')
router.register('users_all_methods', UserModelViewSet, basename='users_all_methods')

# post/{post_id}/comments/
router.register('posts', PostViewSet, basename='posts')
router.register('posts_all_methods', PostModelViewSet, basename='posts_all_methods')

router.register('accounts', AccountViewSet, basename='accounts')
router.register('accounts_all_methods', AccountModelViewSet, basename='accounts_all_methods')

router.register('post_images', PostImageViewSet, basename='post_images')
router.register('post_images_all_methods', PostImageModelViewSet, basename='post_images_all_methods')

router.register('comment', CommentViewSet, basename='comment')
router.register('comments_all_methods', CommentModelViewSet, basename='comments_all_methods')


urlpatterns = [
    path('', include(router.urls)),
]
