import math

from django.contrib import admin
from django.template.response import TemplateResponse
from django.urls import path
from django.utils.html import mark_safe

from social_media import dao
from .models import Role, ConfirmStatus, User, Account, AlumniAccount, Post, PostSurvey, Reaction, PostReaction, \
    PostImage, Comment, SurveyQuestionType, SurveyQuestion, SurveyQuestionOption, SurveyResponse, SurveyAnswer, \
    PostInvitation, InvitationGroup, Room, Message


class SocialMediaAppAdminSite(admin.AdminSite):
    site_header = 'HỆ THỐNG MẠNG XÃ HỘI TRỰC TUYẾN'
    index_title = 'Tuấn Trần Django administration'

    def get_urls(self):
        return [
                   path('stats-admin/', self.stats_view_user),  # Cái này là url
                   path('stats-post/', self.stats_view_post)
               ] + super().get_urls()

    @staticmethod
    def stats_view_user(request):
        start_date = request.GET.get('start_date')
        end_date = request.GET.get('end_date')

        params = {
            'start_date': start_date,
            'end_date': end_date
        }

        # Cái này dẫn tới folder templates/
        return TemplateResponse(request, 'admin/stats.html', {
            'top_accounts_post': dao.top_accounts_post(params),
            'top_accounts_comment': dao.top_accounts_comment(params)
        })

    @staticmethod
    def stats_view_post(request):
        start_date = request.GET.get('start_date')
        end_date = request.GET.get('end_date')

        params = {
            'start_date': start_date,
            'end_date': end_date
        }

        # Cái này dẫn tới folder templates/
        return TemplateResponse(request, 'admin/stats_post.html', {
            'top_posts_reaction': dao.top_posts_reaction(params),
            'top_posts_comment': dao.top_posts_comment(params)
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
    list_display = ['id', 'question_content', 'is_required', 'post_survey', 'survey_question_type']
    inlines = [SurveyQuestionOptionInLineAdmin]


class SurveyQuestionOptionAdmin(admin.ModelAdmin):
    list_display = ['id', 'question_option_value', 'survey_question']


class SurveyResponseAdmin(admin.ModelAdmin):
    list_display = ['id', 'account', 'post_survey']


class SurveyQuestionOptionInLineAdmin(admin.StackedInline):
    model = SurveyQuestionOption.survey_answers.through


class SurveyAnswerAdmin(admin.ModelAdmin):
    list_display = ['id', 'survey_question', 'survey_response']
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


class RoomAdmin(admin.ModelAdmin):
    pass


class MessageAdmin(admin.ModelAdmin):
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
my_admin_site.register(Room, RoomAdmin)
my_admin_site.register(Message, MessageAdmin)

from django_celery_beat.models import PeriodicTask, IntervalSchedule, ClockedSchedule, SolarSchedule, CrontabSchedule, \
    PeriodicTasks

my_admin_site.register(PeriodicTask)
my_admin_site.register(IntervalSchedule)
my_admin_site.register(ClockedSchedule)
my_admin_site.register(SolarSchedule)
my_admin_site.register(CrontabSchedule)
my_admin_site.register(PeriodicTasks)

from django_celery_results.models import TaskResult, GroupResult
my_admin_site.register(TaskResult)
my_admin_site.register(GroupResult)

from social_django.models import UserSocialAuth, Association, Code, Nonce, Partial
my_admin_site.register(UserSocialAuth)
my_admin_site.register(Association)
my_admin_site.register(Code)
my_admin_site.register(Nonce)
my_admin_site.register(Partial)
