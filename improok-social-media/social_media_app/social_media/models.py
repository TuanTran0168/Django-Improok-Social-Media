from ckeditor.fields import RichTextField
from django.db import models
from django.contrib.auth.models import AbstractUser


class BaseModel(models.Model):
    created_date = models.DateField(auto_now_add=True, null=True)
    updated_date = models.DateField(auto_now=True, null=True)
    deleted_date = models.DateField(auto_now=True, null=True)
    active = models.BooleanField(default=True)

    class Meta:
        abstract = True
        ordering = ['-id']


class Role(BaseModel):
    role_name = models.CharField(max_length=255)

    def __str__(self):
        return self.role_name


class ConfirmStatus(BaseModel):
    confirm_status_value = models.CharField(max_length=255)

    def __str__(self):
        return self.confirm_status_value


class User(AbstractUser):
    confirm_status = models.ForeignKey(ConfirmStatus, on_delete=models.CASCADE, null=True)

    def __str__(self):
        return self.username


class Account(BaseModel):
    phone_number = models.CharField(max_length=255, unique=True, null=True)
    date_of_birth = models.DateTimeField(null=True)
    avatar = models.ImageField(upload_to="images/accounts/avatar/%Y/%m", null=True, blank=True)
    cover_avatar = models.ImageField(upload_to="images/accounts/cover_avatar/%Y/%m", null=True, blank=True)
    account_status = models.BooleanField(default=False)
    user = models.OneToOneField(User, on_delete=models.CASCADE, null=True)
    role = models.ForeignKey(Role, on_delete=models.CASCADE, null=True)
    group_account = models.ManyToManyField('InvitationGroup')
    invitation_account = models.ManyToManyField('PostInvitation')

    def __str__(self):
        return self.phone_number


class AlumniAccount(BaseModel):
    alumni_account_code = models.CharField(max_length=255)
    account = models.OneToOneField(Account, on_delete=models.CASCADE)

    def __str__(self):
        return self.alumni_account_code


class Post(BaseModel):
    post_content = RichTextField()
    comment_lock = models.BooleanField(default=False)
    account = models.ForeignKey(Account, on_delete=models.CASCADE, null=True)

    def __str__(self):
        return self.post_content


class Reaction(BaseModel):
    reaction_name = models.CharField(max_length=255)

    def __str__(self):
        return self.reaction_name


class PostReaction(BaseModel):
    account = models.ForeignKey(Account, on_delete=models.CASCADE, null=True)
    post = models.ForeignKey(Post, on_delete=models.CASCADE)
    reaction = models.ForeignKey(Reaction, on_delete=models.CASCADE)


class PostImage(BaseModel):
    post_image_url = models.ImageField(upload_to="images/post_images/%Y/%m", null=True, blank=True)
    post = models.ForeignKey(Post, on_delete=models.CASCADE)

    def __str__(self):
        return self.post_image_url.name


class Comment(BaseModel):
    comment_content = models.TextField()
    comment_image_url = models.ImageField(upload_to="images/comments/%Y/%m", null=True, blank=True)
    account = models.ForeignKey(Account, on_delete=models.CASCADE, null=True)
    post = models.ForeignKey(Post, on_delete=models.CASCADE)

    def __str__(self):
        return self.comment_content


class PostSurvey(BaseModel):
    post_survey_title = models.CharField(max_length=255)
    start_time = models.DateTimeField()
    end_time = models.DateTimeField()
    is_closed = models.BooleanField(default=False)
    post = models.OneToOneField(Post, on_delete=models.CASCADE)

    def __str__(self):
        return self.post_survey_title


class SurveyQuestionType(BaseModel):
    question_type_name = models.CharField(max_length=255)

    def __str__(self):
        return self.question_type_name


class SurveyQuestion(BaseModel):
    question_content = models.TextField()
    question_order = models.IntegerField()
    is_required = models.BooleanField(default=False)
    post_survey = models.ForeignKey(PostSurvey, on_delete=models.CASCADE)
    survey_question_type = models.ForeignKey(SurveyQuestionType, on_delete=models.CASCADE)

    def __str__(self):
        return self.question_content


class SurveyQuestionOption(BaseModel):
    question_option_value = models.TextField()
    question_option_order = models.IntegerField()
    survey_question = models.ForeignKey(SurveyQuestion, on_delete=models.CASCADE)
    survey_answer_option = models.ManyToManyField('SurveyAnswer')

    def __str__(self):
        return self.question_option_value


class SurveyResponse(BaseModel):
    account = models.ForeignKey(Account, on_delete=models.CASCADE, null=True)
    post_survey = models.ForeignKey(PostSurvey, on_delete=models.CASCADE)

    def __str__(self):
        return self.account.user.username + ' - ' + self.post_survey.post_survey_title


class SurveyAnswer(BaseModel):
    question_option_value = models.CharField(max_length=10000, null=True, blank=True)
    survey_question = models.ForeignKey(SurveyQuestion, on_delete=models.CASCADE)
    survey_response = models.ForeignKey(SurveyResponse, on_delete=models.CASCADE)

    def __str__(self):
        if not self.question_option_value:
            return 'Not input text type' + \
                   ' (' + self.survey_question.question_content + ' - ' + self.survey_response.__str__() + ') '
        else:
            return self.question_option_value


# class SurveyAnswerOption(BaseModel):
#     survey_question_option = models.ForeignKey(SurveyQuestionOption, on_delete=models.CASCADE)
#     survey_answer = models.ForeignKey(SurveyAnswer, on_delete=models.CASCADE)
#
#     def __str__(self):
#         return self.survey_answer.__str__() + self.survey_question_option.__str__()


class PostInvitation(BaseModel):
    event_name = models.CharField(max_length=255)
    start_time = models.DateTimeField()
    end_time = models.DateTimeField()
    post = models.OneToOneField(Post, on_delete=models.CASCADE)

    def __str__(self):
        return self.event_name


class InvitationGroup(BaseModel):
    invitation_group_name = models.CharField(max_length=255)

    def __str__(self):
        return self.invitation_group_name


# class GroupAccount(BaseModel):
#     account = models.ForeignKey(Account, on_delete=models.CASCADE)
#     invitation_group = models.ForeignKey(InvitationGroup, on_delete=models.CASCADE)


# class InvitationAccount(BaseModel):
#     account = models.ForeignKey(Account, on_delete=models.CASCADE)
#     post_invitation = models.ForeignKey(PostInvitation, on_delete=models.CASCADE)
