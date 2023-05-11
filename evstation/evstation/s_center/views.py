from django.shortcuts import render
from s_center.models import SCenter
from login.models import Login
from enquiry.models import Enquiry
from user.models import User
# Create your views here.
def managesc(request):
    obj = SCenter.objects.all()
    context = {
        'j': obj
    }
    return render(request, 's_center/manage-service-center.html', context)

def app(request,idd):
    obj=SCenter.objects.get(sc_id=idd)
    obj.status='Approved'
    obj.save()
    return managesc(request)

def rej(request,idd):
    obj=SCenter.objects.get(sc_id=idd)
    obj.delete()
    return managesc(request)

def viewsc(request):
    obj =SCenter.objects.all()
    context = {
        'l': obj
    }
    return render(request,'s_center/view-service-center.html', context)

def viewscup(request):
    ss = request.session["uid"]
    obj =SCenter.objects.filter(sc_id=ss)
    context = {
        'l': obj
    }
    return render(request,'s_center/viewupdate-service-center.html', context)


def nearbysc(request,idd):
    # print(idd)
    obj =SCenter.objects.all()
    context = {
        'l': obj,
        'a':idd
    }
    return render(request,'s_center/nearby-service-center.html', context)


def scregister(request):
    if request.method=="POST":
        obj=SCenter()
        obj.location=request.POST.get('location')
        obj.sc_name=request.POST.get('sc-name')
        obj.address=request.POST.get('u')
        obj.email=request.POST.get('sc-email')
        obj.password=request.POST.get('password')
        obj.phone=request.POST.get('sc-phone')
        obj.image=request.POST.get('sc-image')
        obj.certification=request.POST.get('certification')
        obj.w_id=1
        obj.save()

        ob = Login()
        ob.username = obj.email
        ob.password = obj.password
        ob.u_id = obj.sc_id
        ob.type = "service_center"
        ob.save()

    return render(request,'s_center/sc-register.html')

def updateservices(request,idd):
    obj=SCenter.objects.get(sc_id=idd)
    context={
        'dd':obj
    }
    if request.method=="POST":
        obj=SCenter.objects.get(sc_id=idd)
        obj.service_available = request.POST.get('services')
        obj.save()
        return viewscup(request)
    return render(request, 's_center/update-service-center.html', context)




def enq(request,idd,uid):
    print(uid)
    # ss = request.session["uid"]
    obj =SCenter.objects.get(sc_id=idd)
    # obj=User.objects.get(u_id=idd)
    context = {
        'l': obj,
        'a':uid
    }
    if request.method == "POST":

        obj=Enquiry()
        obj.sc_id=idd
        obj.u_id=uid
        obj.enquiry=request.POST.get('enquiry-text')
        obj.save()
        # return nearbysc(request)
    return render(request,'enquiry/enquire.html',context)