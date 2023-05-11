"""evstation URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from django.conf.urls import url,include
from login import views
urlpatterns = [
    path('admin/', admin.site.urls),
    url('c_points/',include('c_points.url')),
    url('complaint/',include('complaint.url')),
    url('d_boy/',include('d_boy.url')),
    url('d_request/',include('d_request.url')),
    url('hub/',include('hub.url')),
    url('login/', include('login.url')),
    url('payment/', include('payment.url')),
    url('review/', include('review.url')),
    url('s_center/', include('s_center.url')),
    url('s_request/', include('s_request.url')),
    url('slot/', include('slot.url')),
    url('station/', include('station.url')),
    url('trip/', include('trip.url')),
    url('user/', include('user.url')),
    url('vehicle/', include('vehicle.url')),
    url('wallet/', include('wallet.url')),
    url('s_wallet/',include('s_wallet.url')),
    url('work/', include('work.url')),
    url('temp/',include('temp.url')),
    url('enquiry/', include('enquiry.url')),
    url('evcharge/',include('evcharge.url')),
    url('$',views.post_log)

]
