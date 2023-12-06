from rest_framework import serializers

from .models import Role, User, Post, Account, PostImage, InvitationGroup, Comment


class RoleSerializer(serializers.ModelSerializer):
    class Meta:
        model = Role
        fields = '__all__'


class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = '__all__'


class PostSerializer(serializers.ModelSerializer):
    class Meta:
        model = Post
        fields = '__all__'


class InvitationGroupSerializer(serializers.ModelSerializer):
    class Meta:
        model = InvitationGroup
        fields = '__all__'


class AccountSerializer(serializers.ModelSerializer):
    avatar = serializers.SerializerMethodField(source='avatar')
    cover_avatar = serializers.SerializerMethodField(source='cover_avatar')
    group_account = InvitationGroupSerializer(many=True)

    def get_avatar(self, account):
        if account.avatar:
            request = self.context.get('request')
            if request:
                return request.build_absolute_uri('/static/%s' % account.avatar.name)
        return '/static/%s' % account.avatar.name

    def get_cover_avatar(self, account):
        if account.cover_avatar:
            request = self.context.get('request')
            if request:
                return request.build_absolute_uri('/static/%s' % account.cover_avatar.name)
        return '/static/%s' % account.cover_avatar.name

    class Meta:
        model = Account
        fields = '__all__'


class PostImageSerializer(serializers.ModelSerializer):
    post_image_url = serializers.SerializerMethodField(source='post_image_url')

    def get_post_image_url(self, post_image):
        if post_image.post_image_url:
            request = self.context.get('request')
            if request:
                return request.build_absolute_uri('/static/%s' % post_image.post_image_url.name)
        return '/static/%s' % post_image.post_image_url.name

    class Meta:
        model = PostImage
        fields = '__all__'


class CommentSerializer(serializers.ModelSerializer):
    comment_image_url = serializers.SerializerMethodField(source='comment_image_url')

    def get_comment_image_url(self, comment):
        if comment.comment_image_url:
            request = self.context.get('request')
            if request:
                return request.build_absolute_uri('/static/%s' % comment.comment_image_url.name)
        return '/static/%s' % comment.comment_image_url.name

    class Meta:
        model = Comment
        fields = '__all__'
