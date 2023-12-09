from rest_framework import viewsets, generics, status
from rest_framework.decorators import action
from rest_framework.parsers import MultiPartParser
from rest_framework.views import Response

from .models import Role, User, Post, Account, PostImage, Comment
from .paginators import PostPagination, MyPageSize
from .serializers import UserSerializer, RoleSerializer, PostSerializer, AccountSerializer, PostImageSerializer, \
    CommentSerializer, CreateAccountSerializer


class RoleViewSet(viewsets.ViewSet, generics.ListAPIView):
    queryset = Role.objects.all()
    serializer_class = RoleSerializer


# class UserModelViewSet(viewsets.ModelViewSet):
#     queryset = User.objects.all()
#     serializer_class = UserSerializer
#     pagination_class = MyPageSize


class UserViewSet(viewsets.ViewSet, generics.ListAPIView):
    queryset = User.objects.all()
    serializer_class = UserSerializer
    pagination_class = MyPageSize


# class PostModelViewSet(viewsets.ModelViewSet):
#     queryset = Post.objects.all()
#     serializer_class = PostSerializer
#     pagination_class = PostPagination


class PostViewSet(viewsets.ViewSet, generics.ListAPIView):
    queryset = Post.objects.filter(active=True).all()
    serializer_class = PostSerializer
    pagination_class = PostPagination

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

    def get_queryset(self):
        queries = self.queryset
        keyword = self.request.query_params.get('keyword')

        if keyword:
            queries = queries.filter(post_content__icontains=keyword)

        account_id = self.request.query_params.get('account_id')
        if account_id:
            queries = queries.filter(account=account_id)

        return queries


# class AccountModelViewSet(viewsets.ModelViewSet):
#     queryset = Account.objects.all()
#     serializer_class = AccountSerializer
#     pagination_class = MyPageSize


class AccountViewSet(viewsets.ViewSet, generics.ListAPIView, generics.CreateAPIView):
    queryset = Account.objects.select_related('role', 'user').filter(active=True).all()
    serializer_class = AccountSerializer
    pagination_class = MyPageSize
    parser_classes = [MultiPartParser, ]

    # Override lại để dùng cái Serializer create
    def get_serializer_class(self):
        if self.action.__eq__('create'):
            return CreateAccountSerializer
        return self.serializer_class


# class PostImageModelViewSet(viewsets.ModelViewSet):
#     queryset = PostImage.objects.all()
#     serializer_class = PostImageSerializer
#     pagination_class = MyPageSize


class PostImageViewSet(viewsets.ViewSet, generics.ListAPIView):
    queryset = PostImage.objects.filter(active=True).all()
    serializer_class = PostImageSerializer
    pagination_class = MyPageSize


# class CommentModelViewSet(viewsets.ModelViewSet):
#     queryset = Comment.objects.all()
#     serializer_class = CommentSerializer
#     pagination_class = MyPageSize


class CommentViewSet(viewsets.ViewSet, generics.ListAPIView):
    queryset = Comment.objects.filter(active=True).all()
    serializer_class = CommentSerializer
    pagination_class = MyPageSize
