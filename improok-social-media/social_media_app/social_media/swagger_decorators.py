from drf_yasg import openapi
from drf_yasg.utils import swagger_auto_schema
from rest_framework import status

from .serializers import InvitationGroupSerializer, PostInvitationSerializer, EmailSerializer

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

send_email = swagger_auto_schema(
    request_body=EmailSerializer,
    responses={status.HTTP_200_OK: 'Success', status.HTTP_400_BAD_REQUEST: 'Error'}
)
