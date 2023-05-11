from django.shortcuts import render
from trip.models import Trip
# Create your views here.

def tripplan(request):
    if request.method=="POST":
        obj=Trip()
        obj.start_location=request.POST.get('start-location')
        obj.stop_location=request.POST.get('stop-location')
        obj.save()

    return render(request,'trip/trip-planner.html')

