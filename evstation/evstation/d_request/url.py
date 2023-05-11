from django.conf.urls import  url
from d_request import views


urlpatterns=[
    url('postrequest/',views.requestpost),
    url('postrequestmob/(?P<idd>\w+)',views.requestpostmob),
    url('viewdeliveryrequest/',views.viewdr),


]
