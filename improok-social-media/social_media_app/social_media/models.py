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
    avatar = models.ImageField(upload_to="accounts/avatar/%Y/%m", null=True, blank=True)
    cover_avatar = models.ImageField(upload_to="accounts/cover_avatar/%Y/%m", null=True, blank=True)
    account_status = models.BooleanField(default=False)
    user = models.OneToOneField(User, on_delete=models.CASCADE, null=True)
    role = models.ForeignKey(Role, on_delete=models.CASCADE, null=True)

    def __str__(self):
        return self.phone_number


class AlumniAccount(BaseModel):
    alumni_account_code = models.CharField(max_length=255)
    account = models.OneToOneField(Account, on_delete=models.CASCADE)

    def __str__(self):
        return self.alumni_account_code


class Post(BaseModel):
    post_content = models.CharField(max_length=255)
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
    post_image_url = models.ImageField(upload_to="post_images/%Y/%m", null=True, blank=True)
    post = models.ForeignKey(Post, on_delete=models.CASCADE)

    def __str__(self):
        return self.post_image_url


class Comment(BaseModel):
    comment_content = models.CharField(max_length=255)
    comment_image_url = models.ImageField(upload_to="comments/%Y/%m", null=True, blank=True)
    account = models.ForeignKey(Account, on_delete=models.CASCADE, null=True)
    post = models.ForeignKey(Post, on_delete=models.CASCADE)

    def __str__(self):
        return self.comment_content


class PostSurvey(BaseModel):
    post_survey_title = models.CharField(max_length=255)
    start_time = models.DateTimeField()
    end_time = models.DateTimeField()
    post_survey_status = models.BooleanField()
    post = models.OneToOneField(Post, on_delete=models.CASCADE)

    def __str__(self):
        return self.post_survey_title


class SurveyQuestionType(BaseModel):
    question_type_name = models.CharField(max_length=255)

    def __str__(self):
        return self.question_type_name


class SurveyQuestion(BaseModel):
    question_content = models.CharField(max_length=255)
    question_order = models.IntegerField()
    post_survey = models.ForeignKey(PostSurvey, on_delete=models.CASCADE)
    survey_question_type = models.ForeignKey(SurveyQuestionType, on_delete=models.CASCADE)

    def __str__(self):
        return self.question_content


class SurveyQuestionOption(BaseModel):
    question_option_value = models.CharField(max_length=255)
    question_option_order = models.IntegerField()
    survey_question = models.ForeignKey(SurveyQuestion, on_delete=models.CASCADE)

    def __str__(self):
        return self.question_option_value


class SurveyResponse(BaseModel):
    account = models.ForeignKey(Account, on_delete=models.CASCADE, null=True)
    post_survey = models.ForeignKey(PostSurvey, on_delete=models.CASCADE)


class SurveyAnswer(BaseModel):
    question_option_value = models.CharField(max_length=255)
    survey_question = models.ForeignKey(SurveyQuestion, on_delete=models.CASCADE)
    survey_response = models.ForeignKey(SurveyResponse, on_delete=models.CASCADE)

    def __str__(self):
        return self.question_option_value


class SurveyAnswerOption(BaseModel):
    survey_question_option = models.ForeignKey(SurveyQuestionOption, on_delete=models.CASCADE)
    survey_answer = models.ForeignKey(SurveyAnswer, on_delete=models.CASCADE)


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


class GroupAccount(BaseModel):
    account = models.ForeignKey(Account, on_delete=models.CASCADE)
    invitation_group = models.ForeignKey(InvitationGroup, on_delete=models.CASCADE)


class InvitationAccount(BaseModel):
    account = models.ForeignKey(Account, on_delete=models.CASCADE)
    post_invitation = models.ForeignKey(PostInvitation, on_delete=models.CASCADE)
