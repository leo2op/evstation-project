from django.conf.urls import  url
from wallet import views


urlpatterns=[
    url('viewwallet/',views.vwallet),
    url('viewwalletmob/(?P<idd>\w+)',views.vwalletmob),
    url('rechargewallet/',views.rechargewallet),
    url('rechargewalletmob/(?P<idd>\w+)',views.rechargewalletmob),
]