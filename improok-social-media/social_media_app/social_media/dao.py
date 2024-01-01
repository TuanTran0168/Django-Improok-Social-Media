from django.db.models import Count

from .models import User, Post, Account, SurveyQuestion, SurveyResponse, SurveyAnswer, SurveyQuestionOption


def load_users(params={}):
    query = User.objects.filter(active=True)

    keyword = params.get("keyword")
    if keyword:
        query = query.filter(username__icontains=keyword)

    return query


def load_account(params={}):
    query = Account.objects.filter(active=True)

    keyword = params.get("keyword")
    if keyword:
        query = query.filter(phone_number__icontains=keyword)

    role_id = params.get("role_id")
    if role_id:
        query = query.filter(role_id=role_id)

    # How to truy vấn cái bảng trung gian Many To Many :)))))
    group_account_id = params.get("group_account_id")
    if group_account_id:
        query = query.filter(group_account_id=group_account_id)

    return query


def load_posts(params={}):
    query = Post.objects.filter(active=True)

    keyword = params.get("keyword")
    if keyword:
        query = query.filter(post_content__icontains=keyword)

    return query


def count_posts_by_account():
    # post__id là trong Post có id của Account (ở models)
    # Nên dùng post__id để truy vấn post_id từ Account (Trong Account không hề có id của Post)

    # user__username là user.username/userId.username như hồi ở Java :)))
    # user là khóa ngoại của User trong Account (ở models)
    query = Account.objects.annotate(count=Count('post__id')).values('id', 'phone_number', 'user__username',
                                                                     'count').order_by('-count')
    return query


def count_answer_by_question(question_id):
    query = SurveyQuestionOption.objects.filter(survey_question_id=question_id) \
        .annotate(count=Count('survey_answers')) \
        .values('survey_question', 'id', 'count')

    return query


def count_response_by_post_survey(post_survey_id):
    query = SurveyResponse.objects.filter(post_survey_id=post_survey_id).values('post_survey_id').annotate(
        so_nguoi_phan_hoi=Count('id'))

    return query


def get_answer_by_question_id(question_id):
    query = SurveyAnswer.objects.filter(survey_question_id=question_id).values('survey_question_id', 'answer_value')

    return query
