from django.conf.urls import  url
from slot import views


urlpatterns=[
    url('viewslot/',views.viewslot),
    url('bookslot',views.bookslot)
]
