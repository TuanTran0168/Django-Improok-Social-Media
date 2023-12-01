from django.db import models
from django.contrib.auth.models import AbstractUser


class BaseModel(models.Model):
    created_date = models.DateField(auto_now_add=True, null=True)
    updated_date = models.DateField(auto_now=True, null=True)
    deleted_date = models.DateField(auto_now=True, null=True)
    active = models.BooleanField(default=True)

    class Meta:
        abstract = True
        # ordering = ['-id']


class Role(BaseModel):
    role_name = models.CharField(max_length=255)


class AccountStatus(BaseModel):
    account_status_value = models.CharField(max_length=255)


# class Account(BaseModel):
#     phone_number = models.CharField(max_length=255, unique=True)
#     password = models.CharField(max_length=255)
#     role = models.ForeignKey(Role, on_delete=models.CASCADE)
#     # account_status = models.ForeignKey(AccountStatus, on_delete=models.CASCADE)


class User(AbstractUser):
    phone_number = models.CharField(max_length=255, unique=True)
    date_of_birth = models.DateTimeField()
    avatar = models.CharField(max_length=255)
    cover_avatar = models.CharField(max_length=255)
    account_status = models.ForeignKey(AccountStatus, on_delete=models.CASCADE)
    role = models.ForeignKey(Role, on_delete=models.CASCADE)
    # account = models.OneToOneField(Account, on_delete=models.CASCADE)


class AlumniUser(BaseModel):
    alumni_user_code = models.CharField(max_length=255)
    user = models.OneToOneField(User, on_delete=models.CASCADE)


class Post(BaseModel):
    post_content = models.CharField(max_length=255)
    comment_lock = models.BooleanField()
    user = models.ForeignKey(User, on_delete=models.CASCADE)


class Reaction(BaseModel):
    reaction_name = models.CharField(max_length=255)


class PostReaction(BaseModel):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    post = models.ForeignKey(Post, on_delete=models.CASCADE)
    reaction = models.ForeignKey(Reaction, on_delete=models.CASCADE)


class PostImage(BaseModel):
    post_image_url = models.CharField(max_length=255)
    post = models.ForeignKey(Post, on_delete=models.CASCADE)


class Comment(BaseModel):
    comment_content = models.CharField(max_length=255)
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    post = models.ForeignKey(Post, on_delete=models.CASCADE)


class PostSurvey(BaseModel):
    post_survey_title = models.CharField(max_length=255)
    start_time = models.DateTimeField()
    end_time = models.DateTimeField()
    post_survey_status = models.BooleanField()
    post = models.OneToOneField(Post, on_delete=models.CASCADE)


class SurveyQuestionType(BaseModel):
    question_type_name = models.CharField(max_length=255)


class SurveyQuestion(BaseModel):
    question_content = models.CharField(max_length=255)
    question_order = models.IntegerField()
    post_survey = models.ForeignKey(PostSurvey, on_delete=models.CASCADE)
    survey_question_type = models.ForeignKey(SurveyQuestionType, on_delete=models.CASCADE)


class SurveyQuestionOption(BaseModel):
    question_option_value = models.CharField(max_length=255)
    question_option_order = models.IntegerField()
    survey_question = models.ForeignKey(SurveyQuestion, on_delete=models.CASCADE)


class SurveyResponse(BaseModel):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    post_survey = models.ForeignKey(PostSurvey, on_delete=models.CASCADE)


class SurveyAnswer(BaseModel):
    question_option_value = models.CharField(max_length=255)
    survey_question = models.ForeignKey(SurveyQuestion, on_delete=models.CASCADE)
    survey_response = models.ForeignKey(SurveyResponse, on_delete=models.CASCADE)


class SurveyAnswerOption(BaseModel):
    survey_question_option = models.ForeignKey(SurveyQuestionOption, on_delete=models.CASCADE)
    survey_answer = models.ForeignKey(SurveyAnswer, on_delete=models.CASCADE)


class PostInvitation(BaseModel):
    event_name = models.CharField(max_length=255)
    start_time = models.DateTimeField()
    end_time = models.DateTimeField()
    post = models.OneToOneField(Post, on_delete=models.CASCADE)


class InvitationGroup(BaseModel):
    invitation_group_name = models.CharField(max_length=255)


class GroupUser(BaseModel):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    invitation_group = models.ForeignKey(InvitationGroup, on_delete=models.CASCADE)


class InvitationUser(BaseModel):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    post_invitation = models.ForeignKey(PostInvitation, on_delete=models.CASCADE)
