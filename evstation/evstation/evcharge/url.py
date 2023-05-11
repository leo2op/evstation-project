from django.conf.urls import url

from evcharge import views

urlpatterns=[
    url('charge/',views.evcharge.as_view())
]