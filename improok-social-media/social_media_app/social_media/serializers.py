from rest_framework import serializers

from .models import Role, User, Post, Account, PostImage, InvitationGroup, Comment, ConfirmStatus, AlumniAccount, \
    Reaction, PostReaction, PostInvitation, PostSurvey, SurveyQuestion, SurveyQuestionOption, SurveyAnswer, \
    SurveyResponse, SurveyQuestionType, Room, Message


# -Role-
class RoleSerializer(serializers.ModelSerializer):
    class Meta:
        model = Role
        fields = '__all__'


# -ConfirmStatus-
class ConfirmStatusSerializer(serializers.ModelSerializer):
    class Meta:
        model = ConfirmStatus
        fields = '__all__'


# -SurveyQuestionType-
class SurveyQuestionTypeSerializer(serializers.ModelSerializer):
    class Meta:
        model = SurveyQuestionType
        fields = '__all__'


# -InvitationGroup-
class AccountSerializerForInvitationGroup(serializers.ModelSerializer):
    avatar = serializers.SerializerMethodField(source='avatar')
    cover_avatar = serializers.SerializerMethodField(source='cover_avatar')

    @staticmethod
    def get_avatar(account):
        if account.avatar:
            return account.avatar.name

    @staticmethod
    def get_cover_avatar(account):
        if account.cover_avatar:
            return account.cover_avatar.name

    # def get_avatar(self, account):
    #     if account.avatar:
    #         request = self.context.get('request')
    #         if request:
    #             return request.build_absolute_uri('/static/%s' % account.avatar.name)
    #     return '/static/%s' % account.avatar.name
    #
    # def get_cover_avatar(self, account):
    #     if account.cover_avatar:
    #         request = self.context.get('request')
    #         if request:
    #             return request.build_absolute_uri('/static/%s' % account.cover_avatar.name)
    #     return '/static/%s' % account.cover_avatar.name

    class Meta:
        model = Account
        fields = '__all__'


class CreateInvitationGroupSerializer(serializers.ModelSerializer):
    id = serializers.IntegerField(source='pk', read_only=True)

    class Meta:
        model = InvitationGroup
        fields = ['id', 'invitation_group_name']


class UpdateInvitationGroupSerializer(serializers.ModelSerializer):
    id = serializers.IntegerField(source='pk', read_only=True)

    class Meta:
        model = InvitationGroup
        fields = ['id', 'invitation_group_name']


class InvitationGroupSerializer(serializers.ModelSerializer):
    class Meta:
        model = InvitationGroup
        fields = '__all__'


class UserSerializerForInvitationGroup(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ['first_name', 'last_name', 'email']


class AccountSerializerForRetrieveInvitationGroup(serializers.ModelSerializer):
    user = UserSerializerForInvitationGroup()
    avatar = serializers.SerializerMethodField(source='avatar')

    @staticmethod
    def get_avatar(account):
        if account.avatar:
            return account.avatar.name

    # def get_avatar(self, account):
    #     if account.avatar:
    #         request = self.context.get('request')
    #         if request:
    #             return request.build_absolute_uri('/static/%s' % account.avatar.name)
    #     return '/static/%s' % account.avatar.name

    class Meta:
        model = Account
        fields = ['id', 'user', 'avatar']


class RetrieveInvitationGroupSerializer(serializers.ModelSerializer):
    # accounts = AccountSerializerForRetrieveInvitationGroup()
    accounts = serializers.SerializerMethodField()

    def get_accounts(self, invitation_group):
        accounts = invitation_group.accounts.all()
        # Gửi context để lấy host ra cho thằng avatar
        serializer = AccountSerializerForRetrieveInvitationGroup(accounts, many=True, context=self.context)
        return serializer.data

    class Meta:
        model = InvitationGroup
        fields = '__all__'


# -User-
class CreateUserSerializer(serializers.ModelSerializer):
    id = serializers.IntegerField(source='pk', read_only=True)

    class Meta:
        model = User
        fields = ['id', 'username', 'password', 'first_name', 'last_name', 'email']

    # Cái này xài bên giao diện admin của django nó không băm :))) để mò thêm
    def create(self, validated_data):
        data = validated_data.copy()
        user = User(**data)
        user.set_password(user.password)
        user.save()
        return user


class UpdateUserSerializer(serializers.ModelSerializer):
    id = serializers.IntegerField(source='pk', read_only=True)

    class Meta:
        model = User
        fields = ['id', 'password', 'first_name', 'last_name', 'email', 'confirm_status']

    def update(self, instance, validated_data):
        password = validated_data.pop('password', None)
        if password:
            instance.set_password(password)
        return super().update(instance, validated_data)


class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = '__all__'
        extra_kwargs = {'password': {'write_only': True}}  # Không có cho xem password :)

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


class UserSerializerForSearch(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ['id', 'username', 'first_name', 'last_name', 'email']


class AccountSerializerForUser(serializers.ModelSerializer):
    user = UserSerializerForSearch()
    role = RoleSerializer()

    avatar = serializers.SerializerMethodField(source='avatar')
    cover_avatar = serializers.SerializerMethodField(source='cover_avatar')

    def to_representation(self, instance):
        representation = super().to_representation(instance)
        representation['role'] = str(representation['role']['id']) + '/' + representation['role']['role_name']
        return representation

    @staticmethod
    def get_avatar(account):
        if account.avatar:
            return account.avatar.name

    @staticmethod
    def get_cover_avatar(account):
        if account.cover_avatar:
            return account.cover_avatar.name

    class Meta:
        model = Account
        fields = ['user', 'avatar', 'cover_avatar', 'phone_number', 'role']


# -Post-
class UserSerializerForComment(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ['id', 'first_name', 'last_name']


class AccountSerializerForComment(serializers.ModelSerializer):
    # role = RoleSerializer()
    user = UserSerializerForComment()
    avatar = serializers.SerializerMethodField(source='avatar')

    @staticmethod
    def get_avatar(account):
        if account.avatar:
            return account.avatar.name

    # def get_avatar(self, account):
    #     if account.avatar:
    #         request = self.context.get('request')
    #         if request:
    #             return request.build_absolute_uri('/static/%s' % account.avatar.name)
    #     return '/static/%s' % account.avatar.name

    class Meta:
        model = Account
        fields = ['id', 'user', 'role', 'avatar']


class CommentSerializerForPost(serializers.ModelSerializer):
    comment_image_url = serializers.SerializerMethodField(source='comment_image_url')
    account = AccountSerializerForComment()

    @staticmethod
    def get_comment_image_url(comment):
        if comment.comment_image_url:
            return comment.comment_image_url.name

    class Meta:
        model = Comment
        fields = '__all__'


class CreatePostSerializer(serializers.ModelSerializer):
    id = serializers.IntegerField(source='pk', read_only=True)

    class Meta:
        model = Post
        fields = ['id', 'post_content', 'account']


class UpdatePostSerializer(serializers.ModelSerializer):
    id = serializers.IntegerField(source='pk', read_only=True)

    class Meta:
        model = Post
        fields = ['id', 'post_content', 'comment_lock']


class PostSerializer(serializers.ModelSerializer):
    class Meta:
        model = Post
        fields = '__all__'


class PostSerializerForList(serializers.ModelSerializer):
    account = AccountSerializerForComment()

    class Meta:
        model = Post
        fields = '__all__'


# -Reaction-
class ReactionSerializer(serializers.ModelSerializer):
    class Meta:
        model = Reaction
        fields = '__all__'


# -PostReaction-
class AccountSerializerForPostReaction(serializers.ModelSerializer):
    role = RoleSerializer()
    user = UserSerializer()

    class Meta:
        model = Account
        fields = ['id', 'user', 'role']

    # Truy cập trường role_name trong trường Role và username trong User của Account (chỉ để hiển thị cho ĐẸP)
    def to_representation(self, instance):
        representation = super().to_representation(instance)
        representation['role'] = representation['role']['role_name']
        representation['user'] = 'id:' + str(representation['user']['id']) + \
                                 '/username:' + representation['user']['username']
        return representation


class ReactionSerializerForPostReaction(serializers.ModelSerializer):
    class Meta:
        model = Reaction
        fields = ['id', 'reaction_name']


class PostSerializerForPostReaction(serializers.ModelSerializer):
    class Meta:
        model = Post
        fields = ['id', 'post_content']


class CreatePostReactionSerializer(serializers.ModelSerializer):
    id = serializers.IntegerField(source='pk', read_only=True)

    class Meta:
        model = PostReaction
        fields = ['id', 'reaction', 'post', 'account']


class UpdatePostReactionSerializer(serializers.ModelSerializer):
    id = serializers.IntegerField(source='pk', read_only=True)

    class Meta:
        model = PostReaction
        fields = ['id', 'reaction', 'post']


class PostReactionSerializer(serializers.ModelSerializer):
    account = AccountSerializerForPostReaction()
    reaction = ReactionSerializerForPostReaction()
    post = PostSerializerForPostReaction()

    class Meta:
        model = PostReaction
        fields = '__all__'


class TempSerializer(serializers.ModelSerializer):
    class Meta:
        model = PostReaction
        fields = ['id']


# -Account-

# Serializer dùng để tạo riêng
# Vì Cái AccountSerializer kia dùng để hiển thị đã serializer luôn các object bên phía ForeignKey rồi
# Lúc Deserializer lại thì phải trả cho nó cả object (đâu có điên)
# Nên cái CreateAccountSerializer này được ra đời
class CreateAccountSerializer(serializers.ModelSerializer):
    id = serializers.IntegerField(source='pk', read_only=True)

    user = serializers.PrimaryKeyRelatedField(queryset=User.objects.all())
    role = serializers.PrimaryKeyRelatedField(queryset=Role.objects.all())
    date_of_birth = serializers.DateField(format='%Y-%m-%d')

    class Meta:
        model = Account
        fields = ['id', 'phone_number', 'gender', 'date_of_birth', 'avatar', 'cover_avatar', 'account_status', 'user',
                  'role']


class UpdateAccountSerializer(serializers.ModelSerializer):
    id = serializers.IntegerField(source='pk', read_only=True)

    # role = serializers.PrimaryKeyRelatedField(queryset=Role.objects.all())
    # date_of_birth = serializers.DateField(format='%Y-%m-%d', required=False)

    class Meta:
        model = Account
        fields = ['id', 'phone_number', 'date_of_birth', 'avatar', 'cover_avatar', 'account_status', 'role']


class AccountSerializer(serializers.ModelSerializer):
    avatar = serializers.SerializerMethodField(source='avatar')
    cover_avatar = serializers.SerializerMethodField(source='cover_avatar')
    # Xài cái many=True này tốn tận 2 tới 4 câu query
    # để lấy role, user ra từ cái khóa ngoại
    # Qua bên views xài select_related() ngon hơn (foreign key) vì nó INNER_JOIN (debug toolbar check)
    role = RoleSerializer()
    user = UserSerializer()

    @staticmethod
    def get_avatar(account):
        if account.avatar:
            return account.avatar.name

    @staticmethod
    def get_cover_avatar(account):
        if account.cover_avatar:
            return account.cover_avatar.name

    # def get_avatar(self, account):
    #     if account.avatar:
    #         request = self.context.get('request')
    #         if request:
    #             return request.build_absolute_uri('/static/%s' % account.avatar.name)
    #     return '/static/%s' % account.avatar.name
    #
    # def get_cover_avatar(self, account):
    #     if account.cover_avatar:
    #         request = self.context.get('request')
    #         if request:
    #             return request.build_absolute_uri('/static/%s' % account.cover_avatar.name)
    #     return '/static/%s' % account.cover_avatar.name

    class Meta:
        model = Account
        fields = '__all__'
        # fields = ['invitation_group_account', 'role', 'user', 'avatar', 'cover_avatar']


class PostReactionSerializerForAccount(serializers.ModelSerializer):
    class Meta:
        model = PostReaction
        fields = ['reaction_id']


# Ở CreateAccountSerializer lỡ chỉnh date_of_birth thành Date chứ không phải DateTime nên lỗi :)))
# class AccountSerializer(CreateAccountSerializer):
#     avatar = serializers.SerializerMethodField(source='avatar')
#     cover_avatar = serializers.SerializerMethodField(source='cover_avatar')
#     group_account = InvitationGroupSerializer(many=True)  # Cái này Many To Many
#     # Xài cái many=True này tốn tận 2 tới 4 câu query
#     # để lấy role, user ra từ cái khóa ngoại
#     # Qua bên views xài select_related() ngon hơn (foreign key) vì nó INNER_JOIN (debug toolbar check)
#     role = RoleSerializer()
#     user = UserSerializer()
#
#     def get_avatar(self, account):
#         if account.avatar:
#             request = self.context.get('request')
#             if request:
#                 return request.build_absolute_uri('/static/%s' % account.avatar.name)
#         return '/static/%s' % account.avatar.name
#
#     def get_cover_avatar(self, account):
#         if account.cover_avatar:
#             request = self.context.get('request')
#             if request:
#                 return request.build_absolute_uri('/static/%s' % account.cover_avatar.name)
#         return '/static/%s' % account.cover_avatar.name
#
#     class Meta:
#         model = CreateAccountSerializer.Meta.model
#         fields = CreateAccountSerializer.Meta.fields + ['id', 'group_account', 'invitation_account']


# -AlumniAccount-
class CreateAlumniAccountSerializer(serializers.ModelSerializer):
    id = serializers.IntegerField(source='pk', read_only=True)

    class Meta:
        model = AlumniAccount
        fields = ['id', 'alumni_account_code', 'account']


class UpdateAlumniAccountSerializer(serializers.ModelSerializer):
    id = serializers.IntegerField(source='pk', read_only=True)

    class Meta:
        model = AlumniAccount
        fields = ['id', 'alumni_account_code']


class AlumniAccountSerializer(serializers.ModelSerializer):
    class Meta:
        model = AlumniAccount
        fields = '__all__'


# -PostImage-
class CreatePostImageSerializer(serializers.ModelSerializer):
    id = serializers.IntegerField(source='pk', read_only=True)

    # Mở cái này ra thì override được cái localhost nhưng mà nó mất cái ô chọn file ở swagger
    # post_image_url = serializers.SerializerMethodField(source='post_image_url')
    #
    # @staticmethod
    # def get_post_image_url(post_image):
    #     return post_image.post_image_url.name

    class Meta:
        model = PostImage
        fields = ['id', 'post_image_url', 'post']


class UpdatePostImageSerializer(serializers.ModelSerializer):
    id = serializers.IntegerField(source='pk', read_only=True)

    # post_image_url = serializers.SerializerMethodField(source='post_image_url')
    #
    # @staticmethod
    # def get_post_image_url(post_image):
    #     return post_image.post_image_url.name

    class Meta:
        model = PostImage
        fields = ['id', 'post_image_url']  # Cái này lỏ rồi


class PostImageSerializer(serializers.ModelSerializer):
    post_image_url = serializers.SerializerMethodField(source='post_image_url')

    # def get_post_image_url(self, post_image):
    #     if post_image.post_image_url:
    #         request = self.context.get('request')
    #         if request:
    #             return request.build_absolute_uri('/static/%s' % post_image.post_image_url.name)
    #     return '/static/%s' % post_image.post_image_url.name

    @staticmethod
    def get_post_image_url(post_image):
        if post_image.post_image_url:
            return post_image.post_image_url.name

    class Meta:
        model = PostImage
        fields = '__all__'


# -Comment-
class CreateCommentSerializer(serializers.ModelSerializer):
    id = serializers.IntegerField(source='pk', read_only=True)

    class Meta:
        model = Comment
        fields = ['id', 'comment_content', 'comment_image_url', 'account', 'post']


class UpdateCommentSerializer(serializers.ModelSerializer):
    id = serializers.IntegerField(source='pk', read_only=True)

    class Meta:
        model = Comment
        fields = ['id', 'comment_content', 'comment_image_url']


class CommentSerializer(serializers.ModelSerializer):
    comment_image_url = serializers.SerializerMethodField(source='comment_image_url')

    @staticmethod
    def get_comment_image_url(comment):
        if comment.comment_image_url:
            return comment.comment_image_url.name

    # def get_comment_image_url(self, comment):
    #     if comment.comment_image_url:
    #         request = self.context.get('request')
    #         if request:
    #             return request.build_absolute_uri('/static/%s' % comment.comment_image_url.name)
    #     return '/static/%s' % comment.comment_image_url.name

    class Meta:
        model = Comment
        fields = '__all__'


# -PostInvitation-
class CreatePostInvitationSerializer(serializers.ModelSerializer):
    id = serializers.IntegerField(source='pk', read_only=True)

    class Meta:
        model = PostInvitation
        fields = ['id', 'event_name', 'start_time', 'end_time', 'post']


class UpdatePostInvitationSerializer(serializers.ModelSerializer):
    id = serializers.IntegerField(source='pk', read_only=True)

    class Meta:
        model = PostInvitation
        fields = ['id', 'event_name', 'start_time', 'end_time']


class PostInvitationSerializer(serializers.ModelSerializer):
    class Meta:
        model = PostInvitation
        fields = '__all__'


# -PostSurvey-
class CreatePostSurveySerializer(serializers.ModelSerializer):
    id = serializers.IntegerField(source='pk', read_only=True)

    class Meta:
        model = PostSurvey
        fields = ['id', 'post_survey_title', 'start_time', 'end_time', 'post']


class UpdatePostSurveySerializer(serializers.ModelSerializer):
    id = serializers.IntegerField(source='pk', read_only=True)

    class Meta:
        model = PostSurvey
        fields = ['id', 'post_survey_title', 'start_time', 'end_time', 'is_closed']


class PostSerializerForPostSurvey(serializers.ModelSerializer):
    account = AccountSerializerForComment()

    class Meta:
        model = Post
        fields = '__all__'


class PostSurveySerializer(serializers.ModelSerializer):
    post = PostSerializerForPostSurvey()

    class Meta:
        model = PostSurvey
        fields = '__all__'


# -SurveyQuestion-

class CreateSurveyQuestionSerializer(serializers.ModelSerializer):
    id = serializers.IntegerField(source='pk', read_only=True)

    class Meta:
        model = SurveyQuestion
        fields = ['id', 'is_required', 'question_content', 'question_order', 'post_survey', 'survey_question_type']


class UpdateSurveyQuestionSerializer(serializers.ModelSerializer):
    id = serializers.IntegerField(source='pk', read_only=True)

    class Meta:
        model = SurveyQuestion
        # survey_question_type có nên cho đổi sau khi đăng bài không ta?
        # Vì nếu đổi từ dạng multi choice về input text thì phải hủy hết các lựa chọn (SurveyQuestionOption)
        fields = ['id', 'is_required', 'question_content', 'question_order', 'survey_question_type']


class SurveyQuestionSerializer(serializers.ModelSerializer):
    class Meta:
        model = SurveyQuestion
        fields = '__all__'


# -SurveyQuestionOption-
class CreateSurveyQuestionOptionSerializer(serializers.ModelSerializer):
    id = serializers.IntegerField(source='pk', read_only=True)

    class Meta:
        model = SurveyQuestionOption
        fields = ['id', 'question_option_value', 'question_option_order', 'survey_question']


class UpdateSurveyQuestionOptionSerializer(serializers.ModelSerializer):
    id = serializers.IntegerField(source='pk', read_only=True)

    class Meta:
        model = SurveyQuestionOption
        fields = ['id', 'question_option_value', 'question_option_order']


class SurveyQuestionOptionSerializer(serializers.ModelSerializer):
    class Meta:
        model = SurveyQuestionOption
        fields = '__all__'


# -SurveyResponse-

class CreateSurveyResponseSerializer(serializers.ModelSerializer):
    id = serializers.IntegerField(source='pk', read_only=True)

    class Meta:
        model = SurveyResponse
        fields = ['id', 'account', 'post_survey']


class SurveyResponseSerializer(serializers.ModelSerializer):
    class Meta:
        model = SurveyResponse
        fields = '__all__'


# -SurveyAnswer-

class CreateSurveyAnswerSerializer(serializers.ModelSerializer):
    id = serializers.IntegerField(source='pk', read_only=True)

    class Meta:
        model = SurveyAnswer
        fields = ['id', 'answer_value', 'survey_question', 'survey_response']


class UpdateSurveyAnswerSerializer(serializers.ModelSerializer):
    id = serializers.IntegerField(source='pk', read_only=True)

    class Meta:
        model = SurveyAnswer
        fields = ['id', 'answer_value']


# Serializer zậy cho client fetch nhìn đỡ bị lú relationship db
# cái này nằm trong cái dưới
class PostSurveySerializerForSurveyQuestion(serializers.ModelSerializer):
    class Meta:
        model = PostSurvey
        fields = ['id', 'post_survey_title']


# Rồi cái này cũng nằm trong cái dưới
class SurveyQuestionSerializerSerializerForSurveyAnswer(serializers.ModelSerializer):
    post_survey = PostSurveySerializerForSurveyQuestion()  # nó nè

    class Meta:
        model = SurveyQuestion
        fields = ['question_content', 'post_survey', 'survey_question_type']


class SurveyAnswerSerializerForRelated(serializers.ModelSerializer):
    survey_question = SurveyQuestionSerializerSerializerForSurveyAnswer()  # Nó nè

    class Meta:
        model = SurveyAnswer
        fields = '__all__'


class SurveyAnswerSerializer(serializers.ModelSerializer):
    class Meta:
        model = SurveyAnswer
        fields = '__all__'


# -Room-
# class AccountSerializerForRoom(serializers.ModelSerializer):

class RoomSerializer(serializers.ModelSerializer):
    # Các field serializer ra cho client React giống với Comment nên xài lại luôn
    first_user = AccountSerializerForComment()
    second_user = AccountSerializerForComment()

    class Meta:
        model = Room
        fields = '__all__'


# -Message-
class MessageSerializer(serializers.ModelSerializer):
    class Meta:
        model = Message
        fields = '__all__'


# -other serializer-
# -Email-
class EmailSerializer(serializers.Serializer):
    def update(self, instance, validated_data):
        pass

    def create(self, validated_data):
        pass

    subject = serializers.CharField(max_length=100)
    message = serializers.CharField()
    recipient_list = serializers.ListField(child=serializers.EmailField())
