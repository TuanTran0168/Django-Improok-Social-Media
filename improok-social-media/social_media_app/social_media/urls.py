from django.urls import path, re_path, include
from rest_framework import routers

from .views import RoleViewSet, UserViewSet, PostViewSet, \
    AccountViewSet, PostImageViewSet, CommentViewSet, ConfirmStatusViewSet, AlumniAccountViewSet, ReactionViewSet, \
    PostReactionViewSet, InvitationGroupViewSet, PostInvitationViewSet, SendEmailView, PostSurveyViewSet, \
    SurveyQuestionViewSet, SurveyQuestionOptionViewSet, SurveyAnswerViewSet, SurveyResponseViewSet, UploadView, \
    SurveyQuestionTypeViewSet, API_TEST

router = routers.DefaultRouter()
router.register('roles', RoleViewSet, basename='roles')

router.register('confirm_status', ConfirmStatusViewSet, basename='confirm_status')

router.register('users', UserViewSet, basename='users')

# post/{post_id}/comments/
router.register('posts', PostViewSet, basename='posts')

router.register('reactions', ReactionViewSet, basename='reactions')

router.register('post_reactions', PostReactionViewSet, basename='post_reactions')

router.register('accounts', AccountViewSet, basename='accounts')

router.register('alumni_accounts', AlumniAccountViewSet, basename='alumni_accounts')

router.register('post_images', PostImageViewSet, basename='post_images')

router.register('comment', CommentViewSet, basename='comment')

router.register('invitation_groups', InvitationGroupViewSet, basename='invitation_groups')

router.register('post_invitations', PostInvitationViewSet, basename='post_invitations')

router.register('post_surveys', PostSurveyViewSet, basename='post_surveys')

router.register('survey_questions', SurveyQuestionViewSet, basename='survey_questions')

router.register('survey_question_options', SurveyQuestionOptionViewSet, basename='survey_question_options')

router.register('survey_responses', SurveyResponseViewSet, basename='survey_responses')

router.register('survey_answers', SurveyAnswerViewSet, basename='survey_answers')

router.register('survey_question_type', SurveyQuestionTypeViewSet, basename='survey_question_type')

urlpatterns = [
    path('', include(router.urls)),
    path('send-email/', SendEmailView.as_view(), name='send-email'),
    path('upload-image/', UploadView.as_view()),
    path('api-test/', API_TEST.as_view()),
]
