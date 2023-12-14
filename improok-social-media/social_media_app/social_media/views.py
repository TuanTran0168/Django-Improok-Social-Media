from django.core.exceptions import ObjectDoesNotExist
from drf_yasg import openapi
from drf_yasg.utils import swagger_auto_schema
from rest_framework import viewsets, generics, status, permissions
from rest_framework.decorators import action
from rest_framework.exceptions import NotFound
from rest_framework.parsers import MultiPartParser
from rest_framework.views import Response

from .models import Role, User, Post, Account, PostImage, Comment, ConfirmStatus, AlumniAccount, Reaction, PostReaction, \
    InvitationGroup
from .paginators import PostPagination, MyPageSize
from .serializers import UserSerializer, RoleSerializer, PostSerializer, AccountSerializer, PostImageSerializer, \
    CommentSerializer, CreateAccountSerializer, CreateUserSerializer, UpdateUserSerializer, CreatePostSerializer, \
    UpdatePostSerializer, CreatePostImageSerializer, UpdatePostImageSerializer, CreateCommentSerializer, \
    UpdateCommentSerializer, UpdateAccountSerializer, ConfirmStatusSerializer, AlumniAccountSerializer, \
    CreateAlumniAccountSerializer, UpdateAlumniAccountSerializer, ReactionSerializer, PostReactionSerializer, \
    CreatePostReactionSerializer, UpdatePostReactionSerializer, InvitationGroupSerializer, \
    CreateInvitationGroupSerializer, UpdateInvitationGroupSerializer, AccountSerializerForInvitationGroup


# Role
class RoleViewSet(viewsets.ViewSet, generics.ListAPIView, generics.RetrieveAPIView):
    queryset = Role.objects.all()
    serializer_class = RoleSerializer


# ConfirmStatus
class ConfirmStatusViewSet(viewsets.ViewSet, generics.ListAPIView, generics.RetrieveAPIView):
    queryset = ConfirmStatus.objects.all()
    serializer_class = ConfirmStatusSerializer


# InvitationGroup
class InvitationGroupViewSet(viewsets.ViewSet, generics.ListAPIView, generics.RetrieveAPIView, generics.CreateAPIView,
                             generics.UpdateAPIView, generics.DestroyAPIView):
    queryset = InvitationGroup.objects.filter(active=True)
    serializer_class = InvitationGroupSerializer
    pagination_class = MyPageSize

    def get_serializer_class(self):
        if self.action.__eq__('create'):
            return CreateInvitationGroupSerializer
        if self.action.__eq__('update') or self.action.__eq__('partial_update'):
            return UpdateInvitationGroupSerializer
        return self.serializer_class

    @action(methods=['GET'], detail=True, url_path='accounts')
    def get_accounts(self, request, pk):
        accounts = self.get_object().accounts.filter(active=True).all()
        return Response(AccountSerializerForInvitationGroup(accounts, many=True, context={'request': request}).data,
                        status=status.HTTP_200_OK)

    # {
    #   "account_id": 7
    # }
    # @action(methods=['POST'], detail=True, url_path='add_account')
    # def add_account(self, request, pk):
    #     invitation_group = self.get_object()
    #     account_id = request.data.get('account_id')
    #
    #     try:
    #         account = Account.objects.get(id=account_id)
    #         invitation_group.accounts.add(account)
    #         invitation_group.save()
    #         return Response(status=status.HTTP_200_OK)
    #     except Account.DoesNotExist:
    #         return Response(status=status.HTTP_404_NOT_FOUND)

    @action(methods=['POST'], detail=True, url_path='add_and_update_accounts')
    @swagger_auto_schema(
        request_body=openapi.Schema(
            type=openapi.TYPE_OBJECT,
            properties={
                'list_account_id': openapi.Schema(
                    type=openapi.TYPE_ARRAY,
                    items=openapi.Schema(type=openapi.TYPE_INTEGER),
                    description='List of account IDs',
                    example=[1, 2, 3]
                ),
            },
            required=['list_account_id'],
        ),
        responses={
            status.HTTP_201_CREATED: openapi.Response(
                description='Success',
                schema=InvitationGroupSerializer,
            ),
            status.HTTP_400_BAD_REQUEST: openapi.Response(
                description='Bad request',
            ),
            status.HTTP_500_INTERNAL_SERVER_ERROR: openapi.Response(
                description='Internal server error',
            ),
        }
    )
    def add_and_update_accounts(self, request, pk):
        try:
            invitation_group = self.get_object()
            list_account_id = request.data.get('list_account_id', [])
            # Truy vấn mấy tài khoản cần thêm này ra
            # Nếu mấy cái mới lấy ra mà không trùng với danh sách cần thêm thì khỏi :)))
            accounts = Account.objects.filter(id__in=list_account_id)
            if len(accounts) != len(list_account_id):
                missing_ids = set(list_account_id) - set(accounts.values_list('id', flat=True))
                raise NotFound(f"Accounts with IDs {missing_ids} do not exist.")

            invitation_group.accounts.add(*accounts)  # Truyền lẻ từng account vào nhanh hơn truyền list accounts vào
            invitation_group.save()

            return Response(InvitationGroupSerializer(invitation_group).data, status=status.HTTP_201_CREATED)
        except Exception as e:
            error_message = str(e)
            return Response({'error kìa: ': error_message}, status=status.HTTP_500_INTERNAL_SERVER_ERROR)

    @action(methods=['POST'], detail=True, url_path='delete_accounts')
    @swagger_auto_schema(
        request_body=openapi.Schema(
            type=openapi.TYPE_OBJECT,
            properties={
                'list_account_id': openapi.Schema(
                    type=openapi.TYPE_ARRAY,
                    items=openapi.Schema(type=openapi.TYPE_INTEGER),
                    description='List of account IDs',
                    example=[1, 2, 3]
                ),
            },
            required=['list_account_id'],
        ),
        responses={
            status.HTTP_204_NO_CONTENT: openapi.Response(
                description='Success',
                schema=InvitationGroupSerializer,
            ),
            status.HTTP_400_BAD_REQUEST: openapi.Response(
                description='Bad request',
            ),
            status.HTTP_500_INTERNAL_SERVER_ERROR: openapi.Response(
                description='Internal server error',
            ),
        }
    )
    def delete_account(self, request, pk):
        try:
            invitation_group = self.get_object()
            list_account_id = request.data.get('list_account_id', [])
            accounts = invitation_group.accounts.filter(id__in=list_account_id)
            if len(accounts) != len(list_account_id):
                missing_ids = set(list_account_id) - set(accounts.values_list('id', flat=True))
                raise NotFound(f"Accounts with IDs {missing_ids} do not exist.")

            invitation_group.accounts.remove(*accounts)
            invitation_group.save()

            return Response(InvitationGroupSerializer(invitation_group).data, status=status.HTTP_204_NO_CONTENT)
        except Exception as e:
            error_message = str(e)
            return Response({'error: ': error_message}, status=status.HTTP_500_INTERNAL_SERVER_ERROR)


# User
class UserViewSet(viewsets.ViewSet, generics.RetrieveAPIView, generics.ListAPIView, generics.CreateAPIView,
                  generics.UpdateAPIView, generics.DestroyAPIView):
    queryset = User.objects.all()
    serializer_class = UserSerializer
    pagination_class = MyPageSize

    # Override lại để dùng cái Serializer create, update
    def get_serializer_class(self):
        if self.action.__eq__('create'):
            return CreateUserSerializer
        if self.action.__eq__('update') or self.action.__eq__('partial_update'):
            return UpdateUserSerializer
        return self.serializer_class

    @action(methods=['get'], detail=False, url_path='current-user')
    def current_user(self, request):
        return Response(UserSerializer(request.user).data)

    @action(methods=['GET'], detail=True, url_path='account')
    def get_account_by_user_id(self, request, pk):
        try:
            # Lạy chúa thì ra đây là truy vấn ngược của OneToOne :)))
            user = self.get_object()
            account = user.account
            return Response(AccountSerializer(account, context={'request': request}).data, status=status.HTTP_200_OK)
        except ObjectDoesNotExist:
            return Response({'detail': 'Account not found!!!'}, status=status.HTTP_404_NOT_FOUND)
        except Exception as e:
            error_message = str(e)
            return Response({'error kìa: ': error_message}, status=status.HTTP_500_INTERNAL_SERVER_ERROR)


# Post
class PostViewSet(viewsets.ViewSet, generics.ListAPIView, generics.RetrieveAPIView, generics.CreateAPIView,
                  generics.UpdateAPIView, generics.DestroyAPIView):
    queryset = Post.objects.filter(active=True).all()
    serializer_class = PostSerializer
    pagination_class = PostPagination

    # permission_classes = [permissions.IsAuthenticated]

    def get_serializer_class(self):
        if self.action.__eq__('create'):
            return CreatePostSerializer
        if self.action.__eq__('update') or self.action.__eq__('partial_update'):
            return UpdatePostSerializer
        return self.serializer_class

    # detail=True thì kẹp thêm pk (primary key)
    # Cái url_path kia là nó tạo thành enpoint ở cuối
    # post/{post_id}/comments/
    # Nếu xài cái def comments(self, request, pk) luôn thì khỏi url_path
    # Nhức nhức cái đầu ghê :v
    @action(methods=['GET'], detail=True, url_path='comments')
    def get_comments(self, request, pk):
        comments = self.get_object().comment_set.filter(active=True).all()

        # Nhớ .data chứ không nó lỗi
        # Thả request dô cho cái CommentSerializer bên kia nó nhận nó gắn static cho image
        return Response(CommentSerializer(comments, many=True, context={'request': request}).data,
                        status=status.HTTP_200_OK)

    @action(methods=['GET'], detail=True, url_path='post-images')
    def get_post_images(self, request, pk):
        post_images = self.get_object().postimage_set.filter(active=True).all()
        return Response(PostImageSerializer(post_images, many=True, context={'request': request}).data,
                        status=status.HTTP_200_OK)

    def get_queryset(self):
        queries = self.queryset
        keyword = self.request.query_params.get('keyword')

        if keyword:
            queries = queries.filter(post_content__icontains=keyword)

        account_id = self.request.query_params.get('account_id')
        if account_id:
            queries = queries.filter(account=account_id)

        return queries


# Reaction
class ReactionViewSet(viewsets.ViewSet, generics.ListAPIView, generics.RetrieveAPIView):
    queryset = Reaction.objects.filter(active=True).all()
    serializer_class = ReactionSerializer
    pagination_class = MyPageSize


# PostReaction
class PostReactionViewSet(viewsets.ViewSet, generics.ListAPIView, generics.RetrieveAPIView, generics.CreateAPIView,
                          generics.UpdateAPIView, generics.DestroyAPIView):
    queryset = PostReaction.objects.select_related('account', 'post', 'reaction').filter(active=True).all()
    serializer_class = PostReactionSerializer
    pagination_class = MyPageSize

    def get_serializer_class(self):
        if self.action.__eq__('create'):
            return CreatePostReactionSerializer
        if self.action.__eq__('update') or self.action.__eq__('partial_update'):
            return UpdatePostReactionSerializer
        return self.serializer_class


# Account
class AccountViewSet(viewsets.ViewSet, generics.ListAPIView, generics.RetrieveAPIView, generics.CreateAPIView,
                     generics.UpdateAPIView, generics.DestroyAPIView):
    queryset = Account.objects.select_related('role', 'user').filter(active=True).all()
    serializer_class = AccountSerializer
    pagination_class = MyPageSize
    parser_classes = [MultiPartParser, ]

    # Override lại để dùng cái Serializer create, update
    def get_serializer_class(self):
        if self.action.__eq__('create'):
            return CreateAccountSerializer
        if self.action.__eq__('update') or self.action.__eq__('partial_update'):
            return UpdateAccountSerializer
        return self.serializer_class

    @action(methods=['GET'], detail=True, url_path='posts')
    def get_posts_by_account(self, request, pk):
        posts = self.get_object().post_set.filter(active=True).all()
        return Response(PostSerializer(posts, many=True, context={'request': request}).data,
                        status=status.HTTP_200_OK)

    @action(methods=['GET'], detail=True, url_path='invitation_groups')
    def get_invitation_groups_by_account(self, request, pk):
        # ManyToMany query ngược
        invitation_groups = self.get_object().invitationgroup_set.filter(active=True).all()
        return Response(InvitationGroupSerializer(invitation_groups, many=True, context={'request': request}).data,
                        status=status.HTTP_200_OK)


# AlumniAccount
class AlumniAccountViewSet(viewsets.ViewSet, generics.ListAPIView, generics.RetrieveAPIView, generics.CreateAPIView,
                           generics.UpdateAPIView):
    queryset = AlumniAccount.objects.all()
    serializer_class = AlumniAccountSerializer

    # Override lại để dùng cái Serializer create, update
    def get_serializer_class(self):
        if self.action.__eq__('create'):
            return CreateAlumniAccountSerializer
        if self.action.__eq__('update') or self.action.__eq__('partial_update'):
            return UpdateAlumniAccountSerializer
        return self.serializer_class


# PostImage
class PostImageViewSet(viewsets.ViewSet, generics.ListAPIView, generics.RetrieveAPIView, generics.CreateAPIView,
                       generics.UpdateAPIView, generics.DestroyAPIView):
    queryset = PostImage.objects.filter(active=True).all()
    serializer_class = PostImageSerializer
    pagination_class = MyPageSize
    parser_classes = [MultiPartParser, ]

    # permission_classes = [permissions.IsAuthenticated]

    def get_serializer_class(self):
        if self.action.__eq__('create'):
            return CreatePostImageSerializer
        if self.action.__eq__('update') or self.action.__eq__('partial_update'):
            return UpdatePostImageSerializer
        return self.serializer_class


# Comment
class CommentViewSet(viewsets.ViewSet, generics.ListAPIView, generics.RetrieveAPIView, generics.CreateAPIView,
                     generics.UpdateAPIView, generics.DestroyAPIView):
    queryset = Comment.objects.filter(active=True).all()
    serializer_class = CommentSerializer
    pagination_class = MyPageSize
    parser_classes = [MultiPartParser, ]

    # permission_classes = [permissions.IsAuthenticated]

    def get_serializer_class(self):
        if self.action.__eq__('create'):
            return CreateCommentSerializer
        if self.action.__eq__('update') or self.action.__eq__('partial_update'):
            return UpdateCommentSerializer
        return self.serializer_class
