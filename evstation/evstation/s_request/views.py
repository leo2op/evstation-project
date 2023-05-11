from django.shortcuts import render
from s_request.models import SRequest
# Create your views here.

def viewsc1(request):
    obj =SRequest.objects.all()
    context = {
        'tt': obj
    }
    return render(request,'s_request/view-service-request.html',context)

def sapp(request,idd):
    obj=SRequest.objects.get(sr_id=idd)
    obj.status='Approved'
    obj.save()
    return viewsc1(request)

def srej(request,idd):
    obj=SRequest.objects.get(sr_id=idd)
    obj.status = 'Rejected'
    obj.save()
    return viewsc1(request)