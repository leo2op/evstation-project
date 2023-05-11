from django.shortcuts import render
from station.models import  Station
from login.models import Login
from review.models import Review
from s_wallet.models import SWallet
import datetime
# Create your views here.
def evstationreg(request):
    if request.method=="POST":
        obj=Station()
        obj.location=request.POST.get('location')
        obj.s_name=request.POST.get('station-name')
        obj.address=request.POST.get('u')
        obj.email=request.POST.get('organization-email')
        obj.password=request.POST.get('password')
        obj.phone=request.POST.get('organization-phone')
        obj.proof=request.POST.get('ownership')
        obj.electricity_license=request.POST.get('electricity-license')
        obj.latitude=request.POST.get('latitude')
        obj.longitude=request.POST.get('longitude')
        obj.status='pending'

        obj.save()

        ob = Login()
        ob.username = obj.email
        ob.password = obj.password
        ob.u_id = obj.s_id
        ob.type = "organization"
        ob.save()





        obk=SWallet()
        obk.bal='0'
        obk.s_id=obj.s_id
        obk.save()

    return render(request,'station/EV-station-register.html')
def mevstation(request):
    obj =Station.objects.all()
    context = {
        'o': obj
    }
    return render(request,'station/manage-evstation.html',context)

def appr(request,idd):
    obj=Station.objects.get(s_id=idd)
    obj.status='Approved'
    obj.save()
    return mevstation(request)

def reje(request,idd):
    obj=Station.objects.get(s_id=idd)
    obj.delete()
    return mevstation(request)



def viewstation(request):
    obj =Station.objects.all()
    context = {
        'n': obj
    }
    return render(request,'station/view-station.html',context)



def review(request):
    obj =Station.objects.all()
    context = {
        'p': obj
    }
    return render(request,'station/viewandreview.html',context)

def reviewmob(request,idd):
    print("hello")
    print(idd)
    request.session['uid']=idd
    print(request.session['uid'])
    obj =Station.objects.all()
    context = {
        'p': obj,
        'id':idd,
    }
    return render(request,'station/viewandreview.html',context)


def rrr(request,idd):
    ss=request.session['uid']
    # print(ss)
    ob = Review.objects.filter(s_id=idd)
    obj =Station.objects.get(s_id=idd)
    context = {
        'p': obj,
        'k':ob,
        # 'ui':iddd
    }
    if request.method=="POST":
        obj=Review()
        obj.u_id=ss
        obj.s_id=idd
        obj.review=request.POST.get('review')
        obj.star=request.POST.get('rating')
        obj.time=datetime.datetime.now()
        obj.save()
        # return review(request)
    return render(request,'review/post-review.html',context)


def rrr1(request,idd,id1):
    ss=id1
    # print(ss)
    ob = Review.objects.filter(s_id=idd)
    obj =Station.objects.get(s_id=idd)
    context = {
        'p': obj,
        'k':ob,
        # 'ui':iddd
    }
    if request.method=="POST":
        obj=Review()
        obj.u_id=ss
        obj.s_id=idd
        obj.review=request.POST.get('re')
        obj.star=request.POST.get('rate')
        obj.time=datetime.datetime.now()
        obj.save()
        # return review(request)
    return render(request,'review/post-review.html',context)



from rest_framework.views import APIView,Response
from station.serializers import android_serialiser


class statflut(APIView):
    def get(self, request):
        ob = Station.objects.all()
        ser = android_serialiser(ob, many=True)
        return Response(ser.data)