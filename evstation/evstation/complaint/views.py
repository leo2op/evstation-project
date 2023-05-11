from django.shortcuts import render
from complaint.models import Complaint

import datetime

from login.models import Login

# Create your views here.
def postc(request):
    ss = request.session["uid"]
    if request.method=="POST":
        obj=Complaint()
        obj.u_id=ss
        obj.time=datetime.datetime.today()
        obj.complaint=request.POST.get('complaint')
        obj.save()
    return render(request,'complaint/post-complaint.html')


from django.http import HttpResponse
def postcmob(request,idd):
    # return HttpResponse(idd)
    # print("hello")
    # ss = idd
    # print(idd)
    if request.method=="POST":
        obj=Complaint()
        obj.u_id=idd
        obj.time=datetime.datetime.today()
        obj.complaint=request.POST.get('complaint')
        obj.save()
    return render(request,'complaint/post-complaint.html')
def postr(request):
    if request.method=="POST":
        obj=Complaint()
        obj.u_id='1'
        obj.s_id='1'
        obj.reply=request.POST.get('reply')
        obj.save()
    return render(request,'complaint/post-reply.html')
def viewc(request):
    obj=Complaint.objects.all()
    context={
        'h':obj
    }
    return render(request,'complaint/view-complaints.html',context)

def viewr(request):
    ss=request.session["uid"]
    obj=Complaint.objects.filter(u_id=ss)
    context={
        'h':obj
    }
    return render(request,'complaint/view-reply.html',context)

def viewrmob(request,idd):
    print("hello")
    ss=idd
    obj=Complaint.objects.filter(u_id=ss)
    context={
        'h':obj
    }
    return render(request,'complaint/view-reply.html',context)



def reply(request,idd):
    ss = request.session["uid"]
    obj=Complaint.objects.get(c_id=idd)
    context={
        'h':obj
    }
    if request.method=="POST":
        obj=Complaint.objects.get(c_id=idd)
        obj.u_id=ss
        obj.reply=request.POST.get('reply')
        obj.save()
        return viewc(request)
    return render(request,'complaint/post-reply.html',context)
