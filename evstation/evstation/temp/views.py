from django.shortcuts import render

# Create your views here.
def adminpage(request):
    return render(request,'temp/admin.html')


def homepage(request):
    return render(request,'temp/home.html')

def homemain(request):
    return render(request,'temp/homemain.html')


def organizationpage(request):
    return render(request,'temp/organization.html')


def scpage(request):
    return render(request,'temp/service-center.html')


def userpage(request):
    return render(request,'temp/user.html')




def ex(request):
    return render(request, 'temp/stationext.html')

def dboypage(request):
    return render(request,'temp/dboy.html')