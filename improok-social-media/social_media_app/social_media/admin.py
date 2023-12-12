import math

from django.contrib import admin
from django.template.response import TemplateResponse
from django.urls import path
from django.utils.html import mark_safe

from social_media import dao
from .models import Role, ConfirmStatus, User, Account, AlumniAccount, Post, PostSurvey, Reaction, PostReaction, \
    PostImage, Comment, SurveyQuestionType, SurveyQuestion, SurveyQuestionOption, SurveyResponse, SurveyAnswer, \
    PostInvitation, InvitationGroup


class SocialMediaAppAdminSite(admin.AdminSite):
    site_header = 'HỆ THỐNG MẠNG XÃ HỘI TRỰC TUYẾN'
    index_title = 'Tuấn Trần Django administration'

    def get_urls(self):
        return [
                   path('stats-admin/', self.stats_view) # Cái này là url
               ] + super().get_urls()

    @staticmethod
    def stats_view(request):
        # Cái này dẫn tới folder templates/
        return TemplateResponse(request, 'admin/stats.html', {
            'stats': dao.count_posts_by_account()
        })


my_admin_site = SocialMediaAppAdminSite(name='TuanTranAdmin')


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


class SurveyQuestionOptionInLineAdmin(admin.StackedInline):
    model = SurveyQuestionOption.survey_answer_option.through


class SurveyAnswerAdmin(admin.ModelAdmin):
    inlines = [SurveyQuestionOptionInLineAdmin]


class SurveyAnswerOptionAdmin(admin.ModelAdmin):
    pass


# class AccountInLineAdmin(admin.TabularInline):
#     model = Account.invitation_account.through


class PostInvitationAdmin(admin.ModelAdmin):
    # inlines = [AccountInLineAdmin]
    pass

# class AccountInLineAdmin(admin.TabularInline):
#     model = Account.group_account.through


class InvitationGroupAdmin(admin.ModelAdmin):
    pass
    # inlines = [AccountInLineAdmin]


class GroupAccountAdmin(admin.ModelAdmin):
    pass


class InvitationAccountAdmin(admin.ModelAdmin):
    pass


my_admin_site.register(Role, RoleAdmin)
my_admin_site.register(ConfirmStatus, ConfirmStatusAdmin)
my_admin_site.register(User, UserAdmin)
my_admin_site.register(Account, AccountAdmin)
my_admin_site.register(AlumniAccount, AlumniAccountAdmin)
my_admin_site.register(Post, PostAdmin)
my_admin_site.register(Reaction, ReactionAdmin)
my_admin_site.register(PostReaction, PostReactionAdmin)
my_admin_site.register(PostImage, PostImageAdmin)
my_admin_site.register(Comment, CommentAdmin)
my_admin_site.register(PostSurvey, PostSurveyAdmin)
my_admin_site.register(SurveyQuestionType, SurveyQuestionTypeAdmin)
my_admin_site.register(SurveyQuestion, SurveyQuestionAdmin)
my_admin_site.register(SurveyQuestionOption, SurveyQuestionOptionAdmin)
my_admin_site.register(SurveyResponse, SurveyResponseAdmin)
my_admin_site.register(SurveyAnswer, SurveyAnswerAdmin)
# admin.site.register(SurveyAnswerOption, SurveyAnswerOptionAdmin)
my_admin_site.register(PostInvitation, PostInvitationAdmin)
my_admin_site.register(InvitationGroup, InvitationGroupAdmin)
# admin.site.register(GroupAccount, GroupAccountAdmin)
# admin.site.register(InvitationAccount, InvitationAccountAdmin)
