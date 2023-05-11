from django.shortcuts import render
from enquiry.models import Enquiry


def viewenq(request):
    ss=request.session["uid"]
    obj =Enquiry.objects.filter(sc_id=ss)
    context = {
        'o': obj
    }

    return render(request, 'enquiry/view-enquiry.html', context)

def viewer(request,idd):
    # print(idd)
    # ss=request.session["uid"]
    obj = Enquiry.objects.filter(u_id=idd)
    print("hello")
    context = {
        'h': obj
    }

    return render(request, 'enquiry/view-reply.html', context)


def response(request,idd):
    ss=request.session["uid"]
    obj =Enquiry.objects.get(en_id=idd)
    context = {
        'o': obj
    }
    if request.method=="POST":
        obj=Enquiry.objects.get(en_id=idd)
        obj.response=request.POST.get('res')
        obj.save()
        return viewenq(request)
    return render(request,'enquiry/response.html',context)