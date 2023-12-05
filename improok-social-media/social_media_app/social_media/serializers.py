from rest_framework import serializers

from .models import Role, User, Post, Account, PostImage


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


class AccountSerializer(serializers.ModelSerializer):
    avatar = serializers.SerializerMethodField(source='avatar')
    cover_avatar = serializers.SerializerMethodField(source='cover_avatar')

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
