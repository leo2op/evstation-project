from django.conf.urls import  url
from payment import views


urlpatterns=[
    url('viewtransaction/',views.viewtrans),
    url('viewtransactionmob/(?P<idd>\w+)',views.viewtransmob),
    url('paycharge/',views.paymentcharge),
    url(r'^pay/(?P<amt>\w+)', views.homepage),


]
