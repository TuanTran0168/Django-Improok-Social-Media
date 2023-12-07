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
        extra_kwargs = {'password': {'write_only': True}} # Không có cho xem password :)

    # Cái này xài bên giao diện admin của django nó không băm :))) để mò thêm
    def create(self, validated_data):
        data = validated_data.copy()
        user = User(**data)
        user.set_password(user.password)
        user.save()
        return user

    def update(self, instance, validated_data):
        password = validated_data.pop('password', None)
        if password:
            instance.set_password(password)
        return super().update(instance, validated_data)


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
    # Xài cái này tốn tận 2 truy vấn để lấy group account ra từ cái khóa ngoại
    # Qua bên views xài select_related() ngon hơn (foreign key)
    group_account = InvitationGroupSerializer(many=True) # Cái này Many To Many
    role = RoleSerializer()
    user = UserSerializer()

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
