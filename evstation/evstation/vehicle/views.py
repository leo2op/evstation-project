from django.shortcuts import render
from vehicle.models import Vehicle
# Create your views here.
def selvehicle(request):
    if request.method=="POST":
        obj=Vehicle()
        obj.v_brand=request.POST.get('vehicle-brand')
        obj.v_model= request.POST.get('vehicle-model')
        obj.save()
    return render(request,'vehicle/select-vehicle.html')