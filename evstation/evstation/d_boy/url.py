from django.conf.urls import  url
from d_boy import views


urlpatterns=[
    url('managedboy/',views.managedb),
    url('appr/(?P<idd>\w+)',views.dapp,name='ap'),
    url('reje/(?P<idd>\w+)',views.drej,name='rej'),
    url('viewdboy/', views.viewdboy),
    url('regdb/',views.dboyreg)

]
