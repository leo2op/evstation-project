from django.conf.urls import  url
from trip import views

urlpatterns=[
    url('tripplan/',views.tripplan)
]