from django.conf.urls import  url
from login import views


urlpatterns=[
    url('login/',views.post_log),
    url('log/',views.login_view.as_view())
]