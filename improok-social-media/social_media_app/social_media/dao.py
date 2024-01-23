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


def count_posts_by_account(params={}):
    # post__id là trong Post có id của Account (ở models)
    # Nên dùng post__id để truy vấn post_id từ Account (Trong Account không hề có id của Post)

    # user__username là user.username/userId.username như hồi ở Java :)))
    # user là khóa ngoại của User trong Account (ở models)
    query = Account.objects.annotate(count=Count('post__id')).values('id', 'phone_number', 'user__username',
                                                                     'user__first_name', 'user__last_name',
                                                                     'count').order_by('-count')

    start_date = params.get('start_date')
    end_date = params.get('end_date')

    print(start_date)
    print(end_date)

    if start_date and end_date:
        query = query.filter(post__created_date__range=(start_date, end_date))
    elif start_date:
        query = query.filter(post__created_date__gte=start_date)
    elif end_date:
        query = query.filter(post__created_date__lte=end_date)

    print(query[:5].query)
    return query[:5]


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


def count_comment_by_user(params={}):
    query = User.objects.annotate(comment_count=Count('account')) \
        .values('id', 'last_name', 'first_name', 'comment_count') \
        .order_by('-comment_count')

    start_date = params.get('start_date')
    end_date = params.get('end_date')

    print(start_date)
    print(end_date)

    if start_date:
        query = query.filter(account__comment__created_date__gte=start_date)

    elif end_date:
        query = query.filter(account__comment__created_date__lte=end_date)

    elif start_date and end_date:
        query = query.filter(account__comment__created_date__range=(start_date, end_date))

    print(query[:5].query)

    return query[:5]


def top_accounts_post(params={}):
    print("======= top_accounts_post =========")
    query = Account.objects.all()
    start_date = params.get('start_date')
    end_date = params.get('end_date')

    print(start_date)
    print(end_date)

    if start_date and len(start_date) > 0 and len(end_date) == 0:
        query = query.filter(post__created_date__gte=start_date)
        print("1")

    elif end_date and len(end_date) > 0 and len(start_date) == 0:
        query = query.filter(post__created_date__lte=end_date)
        print("2")

    elif start_date and end_date and len(start_date) > 0 and len(end_date) > 0:
        query = query.filter(post__created_date__range=(start_date, end_date))
        print("3")

    query = query.annotate(count=Count('post')).values('user_id', 'user__first_name', 'user__last_name',
                                                       'count').order_by('-count')
    print(query[:5].query)
    return query[:5]


def top_accounts_comment(params={}):
    print("======= top_accounts_comment =========")
    query = Account.objects.all()

    start_date = params.get('start_date')
    end_date = params.get('end_date')

    print(start_date)
    print(end_date)

    if start_date and len(start_date) > 0 and len(end_date) == 0:
        query = query.filter(comment__created_date__gte=start_date)
        print("1")

    elif end_date and len(end_date) > 0 and len(start_date) == 0:
        query = query.filter(comment__created_date__lte=end_date)
        print("2")

    elif start_date and end_date and len(start_date) > 0 and len(end_date) > 0:
        query = query.filter(comment__created_date__range=(start_date, end_date))
        print("3")

    query = query.annotate(comment_count=Count('comment')).values('id', 'user__first_name', 'user__last_name',
                                                                  'comment_count').order_by('-comment_count')[:5]
    print(query[:5].query)

    return query[:5]
