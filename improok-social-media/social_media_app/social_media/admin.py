import math

from django.contrib import admin
from django.utils.html import mark_safe

from .models import Role, ConfirmStatus, User, Account, AlumniAccount, Post, PostSurvey, Reaction, PostReaction, \
    PostImage, Comment, SurveyQuestionType, SurveyQuestion, SurveyQuestionOption, SurveyResponse, SurveyAnswer, \
    SurveyAnswerOption, PostInvitation, InvitationGroup, GroupAccount, InvitationAccount


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
    list_display = ['id', 'phone_number', 'role', 'user', 'account_status']
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


class PostImageInLineAdmin(admin.TabularInline):
    model = PostImage


class PostSurveyInLineAdmin(admin.TabularInline):
    model = PostSurvey


class PostInvitationInLineAdmin(admin.TabularInline):
    model = PostInvitation


class PostAdmin(admin.ModelAdmin):
    list_display = ['id', 'post_content', 'comment_lock', 'account']
    search_fields = ['post_content', 'account']
    list_filter = ['comment_lock']
    inlines = [PostImageInLineAdmin, PostSurveyInLineAdmin, PostInvitationInLineAdmin]


class ReactionAdmin(admin.ModelAdmin):
    list_filter = ['reaction_name']


class PostReactionAdmin(admin.ModelAdmin):
    list_display = ['id', 'post_id', 'post', 'reaction', 'account']


class PostImageAdmin(admin.ModelAdmin):
    list_display = ['id', 'post_image_url', 'post_id']


class CommentAdmin(admin.ModelAdmin):
    list_display = ['id', 'account_id', 'comment_content', 'comment_image_url', 'post_id']
    search_fields = ['comment_content']


class SurveyQuestionInLineAdmin(admin.TabularInline):
    model = SurveyQuestion


class PostSurveyAdmin(admin.ModelAdmin):
    list_display = ['id', 'post_survey_title', 'start_time', 'end_time', 'is_closed', 'post']
    search_fields = ['post_survey_title']
    inlines = [SurveyQuestionInLineAdmin]


class SurveyQuestionTypeAdmin(admin.ModelAdmin):
    pass


class SurveyQuestionOptionInLineAdmin(admin.TabularInline):
    model = SurveyQuestionOption


class SurveyQuestionAdmin(admin.ModelAdmin):
    inlines = [SurveyQuestionOptionInLineAdmin]


class SurveyQuestionOptionAdmin(admin.ModelAdmin):
    pass


class SurveyResponseAdmin(admin.ModelAdmin):
    pass


class SurveyAnswerAdmin(admin.ModelAdmin):
    pass


class SurveyAnswerOptionAdmin(admin.ModelAdmin):
    pass


class PostInvitationAdmin(admin.ModelAdmin):
    pass


class InvitationGroupAdmin(admin.ModelAdmin):
    pass


class GroupAccountAdmin(admin.ModelAdmin):
    pass


class InvitationAccountAdmin(admin.ModelAdmin):
    pass


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
admin.site.register(PostSurvey, PostSurveyAdmin)
admin.site.register(SurveyQuestionType, SurveyQuestionTypeAdmin)
admin.site.register(SurveyQuestion, SurveyQuestionAdmin)
admin.site.register(SurveyQuestionOption, SurveyQuestionOptionAdmin)
admin.site.register(SurveyResponse, SurveyResponseAdmin)
admin.site.register(SurveyAnswer, SurveyAnswerAdmin)
admin.site.register(SurveyAnswerOption, SurveyAnswerOptionAdmin)
admin.site.register(PostInvitation, PostInvitationAdmin)
admin.site.register(InvitationGroup, InvitationGroupAdmin)
admin.site.register(GroupAccount, GroupAccountAdmin)
admin.site.register(InvitationAccount, InvitationAccountAdmin)
