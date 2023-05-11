from django.conf.urls import  url
from complaint import views


urlpatterns=[
    url('postreply/',views.postr),
    url('postcomplaint',views.postc),
    url('abc/(?P<idd>\w+)',views.postcmob),
    url('viewcomplaints/',views.viewc),
    url('viewreply/',views.viewr),
    url('test/(?P<idd>\w+)',views.viewrmob),
    url('reply/(?P<idd>\w+)', views.reply, name='reply'),
]
