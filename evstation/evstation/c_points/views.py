from django.shortcuts import render
from c_points.models import CPoints
# Create your views here.
def cp(request):
    obj=CPoints.objects.all()
    context={
        'vv':obj
    }
    return render(request,'c_points/view-and-manage-station.html',context)
def available(request,idd):
    obj=CPoints.objects.get(cp_id=idd)
    obj.status='available'
    obj.save()
    return cp(request)


def un(request,idd):
    obj=CPoints.objects.get(cp_id=idd)
    obj.status='unavailable'
    obj.save()
    return cp(request)

def postcpoint(request):
    if request.method=="POST":
        obj=CPoints
        obj.cpoint=request.POST.get('cpoint-name')
        obj.save()
    return render(request,'c_points/update-charging-point.html')