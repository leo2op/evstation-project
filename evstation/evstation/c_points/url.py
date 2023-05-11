from django.conf.urls import  url
from c_points import views


urlpatterns=[
    url('viewandmanage/',views.cp),
    url('av/(?P<idd>\w+)',views.available,name='av'),
    url('un/(?P<idd>\w+)',views.un,name='un'),
    url('addcpoint/',views.postcpoint)


]