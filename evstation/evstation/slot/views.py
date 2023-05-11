from django.shortcuts import render
from slot.models import Slot

# Create your views here.
def viewslot(request):
    obj =Slot.objects.all()
    context = {
        'm': obj
    }
    return render(request, 'slot/view-slot.html', context)

def bookslot(request):
    if request.method=="POST":
        obj=Slot()
        obj.slot_id=request.POST.get('slot-id')
        obj.start_time=request.POST.get('start-time')
        obj.end_time = request.POST.get('end-time')
        obj.save()
    return render(request, 'slot/book-slot.html')




