from django.shortcuts import render
from hub.models import Hub
# Create your views here.
def updatebattery(request):
    ss=request.session["uid"]
    if request.method == "POST":
        obj=Hub()
        obj.s_id=ss
        obj.units_left=request.POST.get('unitsleft')
    return render(request,'hub/update-available-batteries.html')


def viewhub(request):
    obj =Hub.objects.all()
    context = {
        'k': obj
    }
    return render(request,'hub/view-hub.html',context)






def vstation(request):
    ss=request.session["uid"]
    obj =Hub.objects.filter(s_id=ss)
    context = {
        'p': obj
    }
    return render(request,'hub/vierwstation.html',context)





def up(request,idd):
    obj =Hub.objects.get(h_id=idd)
    context = {
        'p': obj
    }
    if request.method=="POST":
        obj=Hub.objects.get(h_id=idd)
        obj.units_left=request.POST.get('unit')
        obj.s_id=idd
        obj.save()
        return vstation(request)
    return render(request,'hub/update-available-batteries.html',context)




def add(request):
    ss = request.session["uid"]
    # obj =Hub.objects.get(h_id=ss)
    # context = {
    #     'p': obj
    # }
    if request.method=="POST":
        obj=Hub()
        obj.units_left=request.POST.get('u')
        obj.s_id=ss
        obj.save()
        return vstation(request)
    return render(request,'hub/addhub.html')