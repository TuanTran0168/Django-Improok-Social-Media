from django.core.asgi import get_asgi_application
from channels.routing import ProtocolTypeRouter, URLRouter
from social_media.routing import websocket_urlpatterns

application = ProtocolTypeRouter({
    'http': get_asgi_application(),
    'websocket': URLRouter(websocket_urlpatterns),
})