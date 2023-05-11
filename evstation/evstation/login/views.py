from django.shortcuts import render
from login.models import Login
from django.http import HttpResponseRedirect
# Create your views here.
def post_log(request):
    if request.method =="POST":
        name = request.POST.get("username")
        password = request.POST.get("password")
        obj = Login.objects.filter(username=name, password=password)
        tp=""
        for ob in obj:
            tp = ob.type
            uid = ob.u_id
            if tp=="admin":
                request.session["uid"] = uid
                return HttpResponseRedirect('/temp/adminpage/')
            elif tp == "dboy":
                request.session["uid"] = uid
                return HttpResponseRedirect('/work/view/')
            elif tp == "organization":
                request.session["uid"]= uid
                return HttpResponseRedirect('/temp/organizationpage/')
            elif tp == "service_center":
                request.session["uid"] = uid
                return HttpResponseRedirect('/temp/scpage/')
            elif tp == "user":
                request.session["uid"] = uid
                return HttpResponseRedirect('/temp/userpage/')
            else:
                objilist = "Incorrect username or password...please try again..!"
                context = {
                'msg': objilist
                }
                return render (request,'login/login.html',context)
    return render (request,'login/login.html')


from rest_framework.views import APIView,Response
from login.serializers import android_serialiser


class login_view(APIView):
    def get(self, request):
        ob = Login.objects.all()
        ser = android_serialiser(ob, many=True)
        return Response(ser.data)

    def post(self, request):
        username = request.data['username']
        password = request.data['password']
        ob = Login.objects.filter(username=username, password=password)

        ser = android_serialiser(ob, many=True)
        return Response(ser.data)