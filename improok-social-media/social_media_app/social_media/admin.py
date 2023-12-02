from django.contrib import admin
from django.utils.html import mark_safe

from .models import Role, ConfirmStatus, User, Account, AlumniAccount, Post, PostSurvey, Reaction, PostReaction, \
    PostImage, Comment


class RoleAdmin(admin.ModelAdmin):
    pass
    # list_display = ['id', 'role_name']


class ConfirmStatusAdmin(admin.ModelAdmin):
    pass
    # list_display = ['id', 'confirm_status_value']


class UserAdmin(admin.ModelAdmin):
    list_display = ['id', 'username', 'confirm_status']
    search_fields = ['username']
    list_filter = ['confirm_status']


class AccountAdmin(admin.ModelAdmin):
    list_display = ['id', 'phone_number', 'user_id', 'role_id', 'user', 'account_status']
    search_fields = ['phone_number']
    list_filter = ['role_id', 'account_status']
    readonly_fields = ['show_avatar', 'show_cover_avatar']

    @staticmethod
    def show_avatar(account):
        if account:
            return mark_safe(
                '<img src="/static/{url}" width="120" />'.format(url=account.avatar.name)
            )

    @staticmethod
    def show_cover_avatar(account):
        if account:
            return mark_safe(
                '<img src="/static/{url}" width="120" />'.format(url=account.cover_avatar.name)
            )

    # class Media:
    #     css = {
    #         'all': ('/static/css/style.css',)
    #     }
    #     js = ('/static/js/script.js',)


class AlumniAccountAdmin(admin.ModelAdmin):
    list_display = ['id', 'alumni_account_code']


class PostAdmin(admin.ModelAdmin):
    list_display = ['id', 'post_content', 'comment_lock', 'account']
    search_fields = ['post_content', 'account']
    list_filter = ['comment_lock']


class ReactionAdmin(admin.ModelAdmin):
    list_filter = ['reaction_name']


class PostReactionAdmin(admin.ModelAdmin):
    list_display = ['id', 'post_id', 'reaction_id', 'account_id']


class PostImageAdmin(admin.ModelAdmin):
    list_display = ['id', 'post_image_url', 'post_id']


class CommentAdmin(admin.ModelAdmin):
    list_display = ['id', 'account_id', 'comment_content', 'comment_image_url', 'post_id']
    search_fields = ['comment_content']


admin.site.register(Role, RoleAdmin)
admin.site.register(ConfirmStatus, ConfirmStatusAdmin)
admin.site.register(User, UserAdmin)
admin.site.register(Account, AccountAdmin)
admin.site.register(AlumniAccount, AlumniAccountAdmin)
admin.site.register(Post, PostAdmin)
admin.site.register(Reaction, ReactionAdmin)
admin.site.register(PostReaction, PostReactionAdmin)
admin.site.register(PostImage, PostImageAdmin)
admin.site.register(Comment, CommentAdmin)
