from django.shortcuts import render
from work.models import Work
from d_request.models import DRequest
from d_boy.models import DBoy
from station.models import Station
import datetime
# Create your views here.

def updateassignedwork(request,idd):
    obj=Work.objects.get(work_id=idd)
    context={
        'dd':obj
    }
    if request.method=='POST':
        obj=Work.objects.get(work_id=idd)
        obj.s_id=request.POST.get('station-id')
        obj.d_id=request.POST.get('d-req-id')
        obj.status = request.POST.get('status')
        obj.dboy_id = request.POST.get('dboy-id')
        obj.save()
        return updateassignedwork(request)
    return render(request,'work/assigned-work.html',context)










def assignw(request,idd):
    obb=DBoy.objects.all()
    ob=DRequest.objects.get(dr_id=idd)
    context={
        'p':ob,
        'o':obb
    }
    if request.method=="POST":
        obj=Work()
        obj.u_id='1'
        obj.dboy_id=request.POST.get('s')
        obj.s_id=idd
        obj.status='pending'
        obj.location=request.POST.get('location')
        obj.type=request.POST.get('type')
        obj.time=datetime.datetime.now()
        # obj.dboy_id='1'
        obj.save()
    return render(request,'work/assign-work2.html',context)



def viewassignedwork(request):
    obj =Work.objects.filter(status="pending")
    context = {
        'o': obj
    }
    return render(request,'work/view-assigned-work.html',context)

def completed(request,idd):
    obj=Work.objects.get(work_id=idd)
    obj.status='Work completed'
    obj.save()
    return viewassignedwork(request)