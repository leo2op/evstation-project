from django.conf.urls import   url
from hub import views


urlpatterns=[
    url('updateavailablebattery/',views.updatebattery),
    url('view-hub/',views.viewhub),
    url('station/',views.vstation),
    url('update/(?P<idd>\w+)', views.up, name='ud'),
    url('add/',views.add)
]
