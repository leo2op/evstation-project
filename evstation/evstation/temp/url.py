from django.conf.urls import  url
from temp import views


urlpatterns=[
    url('adminpage/',views.adminpage),
    url('homepage/', views.homepage),
    url('organizationpage/', views.organizationpage),
    url('scpage/', views.scpage),
    url('userpage/', views.userpage),
    url('dboypage',views.dboypage),
    url('exxt/',views.ex),
    url('homemain/', views.homemain),

]
