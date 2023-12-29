from rest_framework import permissions


class CommentOwner(permissions.IsAuthenticated):
    def has_object_permission(self, request, view, comment):
        if view.action == 'destroy':
            return request.user == comment.post.account.user \
                   or request.user == comment.account.user \
                   or request.user.account.role.role_name == 'Admin'
        elif view.action in ['update', 'partial_update']:
            return request.user == comment.account.user


# class PostCommentOwner(permissions.IsAuthenticated):
#     def has_object_permission(self, request, view, comment):
#         return request.user == comment.post.account.user


class PostOwner(permissions.IsAuthenticated):
    def has_object_permission(self, request, view, post):
        if view.action == 'destroy':
            return request.user == post.account.user \
                   or request.user.account.role.role_name == 'Admin'
        elif view.action in ['update', 'partial_update']:
            return request.user == post.account.user


class PostOwnerAdmin(permissions.IsAuthenticated):
    def has_object_permission(self, request, view, post):
        return request.user == post.account.user


class IsAdmin(permissions.BasePermission):
    def has_permission(self, request, view):
        if request.user.is_authenticated:
            return request.user.account.role.role_name == 'Admin'
