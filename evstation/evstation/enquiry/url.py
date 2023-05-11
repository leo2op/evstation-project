from django.conf.urls import  url
from enquiry import views


urlpatterns=[
    url('nq/', views.viewenq),
    url('respo/(?P<idd>\w+)',views.response,name='res'),
    url('viewenquiryreply/(?P<idd>\w+)', views.viewer),
]
