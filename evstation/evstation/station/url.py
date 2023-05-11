from django.conf.urls import  url
from station import views


urlpatterns=[
    url('register/',views.evstationreg),
    url('manageevstation/',views.mevstation),
    url('appr/(?P<idd>\w+)', views.appr, name='s_appr'),
    url('reje/(?P<idd>\w+)', views.reje, name='r_rej'),
    url('review/(?P<idd>\w+)', views.rrr, name='rv'),
    url('reviewmob/(?P<idd>\w+)/(?P<id1>\w+)', views.rrr1, name='rv1'),
    url('viewstation/',views.viewstation),
    url('abc/(?P<idd>\w+)',views.reviewmob),
    url('rev/',views.review),
    url('statflut/',views.statflut.as_view())

]
