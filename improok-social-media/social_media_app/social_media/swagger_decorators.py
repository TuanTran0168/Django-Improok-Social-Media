from tkinter.scrolledtext import example

from drf_yasg import openapi
from drf_yasg.utils import swagger_auto_schema
from rest_framework import status

from .serializers import InvitationGroupSerializer, PostInvitationSerializer, EmailSerializer, SurveyAnswerSerializer, \
    SurveyQuestionOptionSerializer, PostReactionSerializer

header_authorization = swagger_auto_schema(
    manual_parameters=[
        openapi.Parameter(
            name='Authorization',
            in_=openapi.IN_HEADER,
            type=openapi.TYPE_STRING,
            description='Token for authentication (Nhớ thêm Bearer nha)',
            required=True
        )
    ],
    order=['Authorization', 'header']  # Sao nó không lên đầu tiên???
)

warning_api = swagger_auto_schema(
    manual_parameters=[
        openapi.Parameter(
            name='WARNING!!!',
            in_=openapi.TYPE_STRING,
            type=openapi.TYPE_STRING,
            description='API NÀY CHƯA CÓ XÀI ĐƯỢC ĐÂU, ĐỪNG CÓ FETCH :)',
        )
    ],
)

add_or_update_accounts_from_invitation_group = swagger_auto_schema(
    manual_parameters=[
        openapi.Parameter(
            name='Authorization',
            in_=openapi.IN_HEADER,
            type=openapi.TYPE_STRING,
            description='Token for authentication (Nhớ thêm Bearer nha)',
            required=True
        )
    ],
    request_body=openapi.Schema(
        type=openapi.TYPE_OBJECT,
        properties={
            'list_account_id': openapi.Schema(
                type=openapi.TYPE_ARRAY,
                items=openapi.Schema(type=openapi.TYPE_INTEGER),
                description='List of account IDs',
                example=[1, 2, 3]
            ),
        },
        required=['list_account_id'],
    ),
    responses={
        status.HTTP_201_CREATED: openapi.Response(
            description='Success',
            schema=InvitationGroupSerializer,
        ),
        status.HTTP_400_BAD_REQUEST: openapi.Response(
            description='Bad request',
        ),
        status.HTTP_500_INTERNAL_SERVER_ERROR: openapi.Response(
            description='Internal server error',
        ),
    }
)

delete_accounts_from_invitation_group = swagger_auto_schema(
    manual_parameters=[
        openapi.Parameter(
            name='Authorization',
            in_=openapi.IN_HEADER,
            type=openapi.TYPE_STRING,
            description='Token for authentication (Nhớ thêm Bearer nha)',
            required=True
        )
    ],
    request_body=openapi.Schema(
        type=openapi.TYPE_OBJECT,
        properties={
            'list_account_id': openapi.Schema(
                type=openapi.TYPE_ARRAY,
                items=openapi.Schema(type=openapi.TYPE_INTEGER),
                description='List of account IDs',
                example=[1, 2, 3]
            ),
        },
        required=['list_account_id'],
    ),
    responses={
        status.HTTP_204_NO_CONTENT: openapi.Response(
            description='Success',
            schema=InvitationGroupSerializer,
        ),
        status.HTTP_400_BAD_REQUEST: openapi.Response(
            description='Bad request',
        ),
        status.HTTP_500_INTERNAL_SERVER_ERROR: openapi.Response(
            description='Internal server error',
        ),
    }
)

add_or_update_accounts_from_post_invitation = swagger_auto_schema(
    manual_parameters=[
        openapi.Parameter(
            name='Authorization',
            in_=openapi.IN_HEADER,
            type=openapi.TYPE_STRING,
            description='Token for authentication (Nhớ thêm Bearer nha)',
            required=True
        )
    ],
    request_body=openapi.Schema(
        type=openapi.TYPE_OBJECT,
        properties={
            'list_account_id': openapi.Schema(
                type=openapi.TYPE_ARRAY,
                items=openapi.Schema(type=openapi.TYPE_INTEGER),
                description='List of account IDs',
                example=[1, 2, 3]
            ),
        },
        required=['list_account_id'],
    ),
    responses={
        status.HTTP_201_CREATED: openapi.Response(
            description='Success',
            schema=PostInvitationSerializer,
        ),
        status.HTTP_400_BAD_REQUEST: openapi.Response(
            description='Bad request',
        ),
        status.HTTP_500_INTERNAL_SERVER_ERROR: openapi.Response(
            description='Internal server error',
        ),
    }
)

delete_accounts_from_post_invitation = swagger_auto_schema(
    manual_parameters=[
        openapi.Parameter(
            name='Authorization',
            in_=openapi.IN_HEADER,
            type=openapi.TYPE_STRING,
            description='Token for authentication (Nhớ thêm Bearer nha)',
            required=True
        )
    ],
    request_body=openapi.Schema(
        type=openapi.TYPE_OBJECT,
        properties={
            'list_account_id': openapi.Schema(
                type=openapi.TYPE_ARRAY,
                items=openapi.Schema(type=openapi.TYPE_INTEGER),
                description='List of account IDs',
                example=[1, 2, 3]
            ),
        },
        required=['list_account_id'],
    ),
    responses={
        status.HTTP_204_NO_CONTENT: openapi.Response(
            description='Success',
            schema=PostInvitationSerializer,
        ),
        status.HTTP_400_BAD_REQUEST: openapi.Response(
            description='Bad request',
        ),
        status.HTTP_500_INTERNAL_SERVER_ERROR: openapi.Response(
            description='Internal server error',
        ),
    }
)

add_or_update_survey_answer_to_survey_question_option = swagger_auto_schema(
    manual_parameters=[
        openapi.Parameter(
            name='Authorization',
            in_=openapi.IN_HEADER,
            type=openapi.TYPE_STRING,
            description='Token for authentication (Nhớ thêm Bearer nha)',
            required=True
        )
    ],
    request_body=openapi.Schema(
        type=openapi.TYPE_OBJECT,
        properties={
            'list_survey_answer_id': openapi.Schema(
                type=openapi.TYPE_ARRAY,
                items=openapi.Schema(type=openapi.TYPE_INTEGER),
                description='List of survey_answer IDs',
                example=[1, 2, 3]
            ),
        },
        required=['list_survey_answer_id'],
    ),
    responses={
        status.HTTP_201_CREATED: openapi.Response(
            description='Success',
            schema=SurveyQuestionOptionSerializer,
        ),
        status.HTTP_400_BAD_REQUEST: openapi.Response(
            description='Bad request',
        ),
        status.HTTP_500_INTERNAL_SERVER_ERROR: openapi.Response(
            description='Internal server error',
        ),
    }
)

add_or_update_survey_question_option_to_survey_answer = swagger_auto_schema(
    manual_parameters=[
        openapi.Parameter(
            name='Authorization',
            in_=openapi.IN_HEADER,
            type=openapi.TYPE_STRING,
            description='Token for authentication (Nhớ thêm Bearer nha)',
            required=True
        )
    ],
    request_body=openapi.Schema(
        type=openapi.TYPE_OBJECT,
        properties={
            'list_survey_question_option_id': openapi.Schema(
                type=openapi.TYPE_ARRAY,
                items=openapi.Schema(type=openapi.TYPE_INTEGER),
                description='List of survey_question_option IDs',
                example=[1, 2, 3]
            ),
        },
        required=['list_survey_question_option_id'],
    ),
    responses={
        status.HTTP_201_CREATED: openapi.Response(
            description='Success',
            schema=SurveyAnswerSerializer,
        ),
        status.HTTP_400_BAD_REQUEST: openapi.Response(
            description='Bad request',
        ),
        status.HTTP_500_INTERNAL_SERVER_ERROR: openapi.Response(
            description='Internal server error',
        ),
    }
)

params_for_post_reaction = swagger_auto_schema(
    manual_parameters=[
        openapi.Parameter(
            name='Authorization',
            in_=openapi.IN_HEADER,
            type=openapi.TYPE_STRING,
            description='Token for authentication (Nhớ thêm Bearer nha)',
            required=True
        ),
        openapi.Parameter(
            name='reaction_id',
            in_=openapi.IN_QUERY,
            type=openapi.TYPE_STRING,
            description='The id of reaction (1 or 2 or etc.)'
        ),
        openapi.Parameter(
            name='account_id',
            in_=openapi.IN_QUERY,
            type=openapi.TYPE_STRING,
            description='The id of account (1 or 2 or etc.)'
        )
    ],
    responses={
        status.HTTP_200_OK: openapi.Response(
            description='Success',
            schema=PostReactionSerializer,
        )
    }
)

params_for_account_reacted_to_the_post = swagger_auto_schema(
    manual_parameters=[
        openapi.Parameter(
            name='Authorization',
            in_=openapi.IN_HEADER,
            type=openapi.TYPE_STRING,
            description='Token for authentication (Nhớ thêm Bearer nha)',
            required=True
        ),
        openapi.Parameter(
            name='post_id',
            in_=openapi.IN_QUERY,
            type=openapi.TYPE_STRING,
            description='The id of post (Example: 1 or 2 or etc.)',
        )
    ],
    responses={
        status.HTTP_200_OK: openapi.Response(
            description='Success',
            schema=PostReactionSerializer,
        )
    }
)

create_alumni_account = swagger_auto_schema(
    request_body=openapi.Schema(
        type=openapi.TYPE_OBJECT,
        properties={
            'username': openapi.Schema(type=openapi.TYPE_STRING),
            'password': openapi.Schema(type=openapi.TYPE_STRING),
            'email': openapi.Schema(type=openapi.TYPE_STRING),
            'first_name': openapi.Schema(type=openapi.TYPE_STRING),
            'last_name': openapi.Schema(type=openapi.TYPE_STRING),
            'alumni_account_code': openapi.Schema(type=openapi.TYPE_STRING),
        },
        required=['username', 'password', 'first_name', 'last_name', 'email', 'alumni_account_code']
    )
)

create_post_survey = swagger_auto_schema(
    request_body=openapi.Schema(
        type=openapi.TYPE_OBJECT,
        properties={
            'post_content': openapi.Schema(type=openapi.TYPE_STRING),
            'account_id': openapi.Schema(type=openapi.TYPE_INTEGER),
            'post_survey_title': openapi.Schema(type=openapi.TYPE_STRING),
            'start_time': openapi.Schema(type=openapi.TYPE_STRING, format=openapi.FORMAT_DATETIME),
            'end_time': openapi.Schema(type=openapi.TYPE_STRING, format=openapi.FORMAT_DATETIME),
            'survey_question_list': openapi.Schema(
                type=openapi.TYPE_ARRAY,
                items=openapi.Schema(
                    type=openapi.TYPE_OBJECT,
                    properties={
                        'survey_question_type_id': openapi.Schema(type=openapi.TYPE_INTEGER),
                        'question_content': openapi.Schema(type=openapi.TYPE_STRING),
                        'question_order': openapi.Schema(type=openapi.TYPE_INTEGER),
                        'is_required': openapi.Schema(type=openapi.TYPE_BOOLEAN),
                        'survey_question_option_list': openapi.Schema(
                            type=openapi.TYPE_ARRAY,
                            items=openapi.Schema(
                                type=openapi.TYPE_OBJECT,
                                properties={
                                    'question_option_value': openapi.Schema(type=openapi.TYPE_STRING),
                                    'question_option_order': openapi.Schema(type=openapi.TYPE_INTEGER),
                                }
                            )
                        )
                    }
                )
            )
        }
    ),
    manual_parameters=[
        openapi.Parameter(
            name='Authorization',
            in_=openapi.IN_HEADER,
            type=openapi.TYPE_STRING,
            description='Token for authentication (Nhớ thêm Bearer nha)',
            required=True
        )
    ]
)

create_post_invitation = swagger_auto_schema(
    request_body=openapi.Schema(
        type=openapi.TYPE_OBJECT,
        properties={
            'account_id': openapi.Schema(type=openapi.TYPE_INTEGER),
            'post_content': openapi.Schema(type=openapi.TYPE_STRING),
            'event_name': openapi.Schema(type=openapi.TYPE_STRING),
            'start_time': openapi.Schema(type=openapi.TYPE_STRING, format=openapi.FORMAT_DATETIME),
            'end_time': openapi.Schema(type=openapi.TYPE_STRING, format=openapi.FORMAT_DATETIME),
        },
        required=['account_id', 'post_content', 'event_name', 'start_time', 'end_time']
    ),
    manual_parameters=[
        openapi.Parameter(
            name='Authorization',
            in_=openapi.IN_HEADER,
            type=openapi.TYPE_STRING,
            description='Token for authentication (Nhớ thêm Bearer nha)',
            required=True
        )
    ]
)

answer_post_survey = swagger_auto_schema(
    manual_parameters=[
        openapi.Parameter(
            name='Authorization',
            in_=openapi.IN_HEADER,
            type=openapi.TYPE_STRING,
            description='Token for authentication (Nhớ thêm Bearer nha)',
            required=True
        )
    ],
    request_body=openapi.Schema(
        type=openapi.TYPE_OBJECT,
        properties={
            'account_id': openapi.Schema(type=openapi.TYPE_INTEGER),
            'post_survey': openapi.Schema(type=openapi.TYPE_INTEGER),
            'survey_question_list': openapi.Schema(
                type=openapi.TYPE_ARRAY,
                items=openapi.Items(
                    type=openapi.TYPE_OBJECT,
                    properties={
                        'question': openapi.Schema(type=openapi.TYPE_INTEGER),
                        'answer_value': openapi.Schema(type=openapi.TYPE_STRING),
                        'list_survey_question_option_id': openapi.Schema(
                            type=openapi.TYPE_ARRAY,
                            items=openapi.Items(type=openapi.TYPE_INTEGER)
                        )
                    }
                )
            )
        },
        required=['account_id', 'post_survey', 'survey_question_list']
    )
)

search_user = swagger_auto_schema(
    manual_parameters=[
        openapi.Parameter(
            name='Authorization',
            in_=openapi.IN_HEADER,
            type=openapi.TYPE_STRING,
            description='Token for authentication (Nhớ thêm Bearer nha)',
            required=True
        ),
        openapi.Parameter(
            name='name',
            in_=openapi.IN_QUERY,
            description='Name parameter (Example: Tuan Tran)',
            type=openapi.TYPE_STRING
        )
    ]
)

send_email = swagger_auto_schema(
    request_body=EmailSerializer,
    responses={status.HTTP_200_OK: 'Success', status.HTTP_400_BAD_REQUEST: 'Error'}
)
