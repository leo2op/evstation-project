from django.shortcuts import render
import datetime

# Create your views here.
from d_request.models import DRequest
import datetime


def viewdr(request):
    obj = DRequest.objects.filter(status="pending")
    context = {
        'i': obj
    }
    return render(request,'d_request/view-delivery-request.html',context)



def requestpost(request):
    ss = request.session["uid"]
    if request.method=="POST":
        obj=DRequest()
        obj.u_id=ss
        obj.location=request.POST.get('location')
        obj.type=request.POST.get('type')
        obj.time=datetime.datetime.today()
        obj.status="pending"
        obj.save()
    return render(request,'d_request/emergency-charge.html')

def requestpostmob(request,idd):
    ss = idd
    if request.method=="POST":
        obj=DRequest()
        obj.u_id=ss
        obj.location=request.POST.get('location')
        obj.type=request.POST.get('type')
        obj.time=datetime.datetime.today()
        obj.status = "pending"
        obj.save()
    return render(request,'d_request/emergency-charge.html')


