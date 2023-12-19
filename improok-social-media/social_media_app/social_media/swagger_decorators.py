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

send_email = swagger_auto_schema(
    request_body=EmailSerializer,
    responses={status.HTTP_200_OK: 'Success', status.HTTP_400_BAD_REQUEST: 'Error'}
)
