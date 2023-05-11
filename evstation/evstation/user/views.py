from django.shortcuts import render
from user.models import User
from login.models import Login
from wallet.models import Wallet
from django.contrib import messages
# Create your views here.

def userreg(request):
    if request.method=="POST":
        obj=User()
        obj.username=request.POST.get('user-name')
        obj.name = request.POST.get('name')
        obj.email=request.POST.get('user-email')
        obj.phone=request.POST.get('user-phone')
        obj.vehicle_id=request.POST.get('vehicle-id')
        obj.address=request.POST.get('user-address')
        obj.license=request.POST.get('license')
        obj.password=request.POST.get('password')
        obj.save()

        ob=Login()
        ob.username=obj.username
        ob.password=obj.password
        ob.u_id=obj.u_id
        ob.type="user"
        ob.save()



        obk=Wallet()
        obk.balance='0'
        obk.u_id=obj.u_id
        obk.save()
    return render(request,'user/user-register.html')


def userupdate(request):
    if request.method == "POST":
        obj=User()
        obj.vehicle_id=request.POST.get('vehicle-id')
        obj.phone=request.POST.get('user-phone')
    return render(request,'user/update-user.html')