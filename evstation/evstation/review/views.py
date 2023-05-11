from django.shortcuts import render
from datetime import datetime
from review.models import Review

# Create your views here.
# def viewruser(request):
#     obj =Review.objects.all()
#     context = {
#         'k': obj
#     }
#     return render(request, 'review/view-review-for-user.html', context)

def viewradmin(request):
    obj =Review.objects.all()
    context = {
        'k': obj
    }
    return render(request, 'review/view-review-for-admin.html', context)

def viewrstation(request):
    ss=request.session["uid"]
    obj =Review.objects.filter(s_id=ss)
    context = {
        'k': obj
    }
    return render(request, 'review/view-review-for-station.html', context)

# def postreview(request):
#
#     if request.method=="POST":
#         obj=Review()
#         obj.u_id='1'
#         obj.s_id='1'
#         obj.time=datetime.date()
#         obj.star=request.POST.get('star')
#         obj.review=request.POST.get('review')
#         obj.save()
#     return render(request,'review/post-review.html')



