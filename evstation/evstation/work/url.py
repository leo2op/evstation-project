from django.conf.urls import  url
from work import views

urlpatterns=[
    url('updateassignedwork/',views.updateassignedwork),
    url('ass/(?P<idd>\w+)', views.assignw, name='ass'),
    url('compl/(?P<idd>\w+)', views.completed, name='comp'),
    url('view/',views.viewassignedwork),

]