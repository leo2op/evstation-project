from django.conf.urls import  url
from user import views

urlpatterns=[
    url('userregister/',views.userreg),
    url('updateuser/',views.userupdate)
]