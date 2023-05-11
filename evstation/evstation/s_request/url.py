from django.conf.urls import  url
from s_request import views


urlpatterns=[
    url('vs/',views.viewsc1),
    url('appr/(?P<idd>\w+)', views.sapp, name='approve'),
    url('reje/(?P<idd>\w+)', views.srej, name='rejected'),
    # url('ser/',views.vie)
]
