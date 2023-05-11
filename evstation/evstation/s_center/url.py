from django.conf.urls import  url
from s_center import views


urlpatterns=[
    url('manageservicecenter/',views.managesc),
    url('appr/(?P<idd>\w+)',views.app,name='approve'),
    url('reje/(?P<idd>\w+)',views.rej,name='rejected'),
    url('viewservicecenter/',views.viewsc),
    url('go/(?P<idd>\w+)',views.updateservices,name='go'),
    url('nearbyservicecenter/(?P<idd>\w+)',views.nearbysc),
    url('serviceregister/',views.scregister),
    url('upddd/',views.viewscup),
    url('enq/(?P<idd>\w+)/(?P<uid>\w+)',views.enq,name='en'),
]
