from django.shortcuts import render
from d_boy.models import DBoy
from login.models import Login

# Create your views here
def managedb(request):
    # if request.method=="POST":
    #     obj=DBoy()
    #     obj.u_id='1'
    #     obj.location=request.POST.get('location')
    #     obj.type=request.POST.get('type')
    #     obj.time=request.POST.get('')
    #     obj.dboy_id='1'
    #     obj.save()
    return render(request,'d_boy/manage-delivery-boy.html')

def dapp(request,idd):
    obj=DBoy.objects.get(dboy_id=idd)
    obj.status='Approved'
    obj.save()
    return managedb(request)

def drej(request,idd):
    obj=DBoy.objects.get(dboy_id=idd)
    obj.delete()
    return managedb(request)

def viewdboy(request):
    obj=DBoy.objects.filter(status='pending')
    context={
        'h':obj
    }
    return render(request,'d_boy/manage-delivery-boy.html',context)

def dboyreg(request):
    if request.method=="POST":
        obj=DBoy()
        obj.location=request.POST.get('dboy-location')
        obj.dboy_name=request.POST.get('dboy-name')
        obj.password=request.POST.get('password')
        obj.gender=request.POST.get('gender')
        obj.phone=request.POST.get('dboy-phone')
        obj.email=request.POST.get('dboy-email')
        obj.w_id=1
        obj.address=request.POST.get('dboy-address')
        obj.age=request.POST.get('dboy-age')
        obj.qualification=request.POST.get('dboy-qualification')
        obj.license=request.POST.get('dboy-idcard')
        obj.pan=request.POST.get('pan-number')
        obj.photo=request.POST.get('dboy-photo')
        obj.status='pending'

        obj.save()

        ob = Login()
        ob.username = obj.email
        ob.password = obj.password
        ob.u_id = obj.dboy_id
        ob.type = "dboy"
        ob.save()

    return render(request,'d_boy/dboy-register.html')
