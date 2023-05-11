from django.conf.urls import  url
from vehicle import views

urlpatterns=[
    url('selectvehicle/',views.selvehicle)
]