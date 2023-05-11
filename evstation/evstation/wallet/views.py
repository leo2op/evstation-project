from django.http import HttpResponseRedirect
from django.shortcuts import render
from wallet.models import Wallet

# Create your views here.
def vwallet(request):
    ss=request.session["uid"]
    obj =Wallet.objects.filter(u_id=ss)
    context = {
        'o': obj
    }

    return render(request, 'wallet/view-wallet-user.html', context)

def vwalletmob(request,idd):
    ss=idd
    obj =Wallet.objects.filter(u_id=ss)
    context = {
        'o': obj
    }
    return render(request, 'wallet/view-wallet-user.html', context)

def rechargewallet(request):
    ss=request.session["uid"]
    if request.method=='POST':

        a=request.POST.get('recharge')
        # print(a)
        obj=Wallet.objects.get(u_id=ss)
        # print(obj.balance)
        # obj.w_id=request.POST.get('wallet-id')
        obj.balance=int(obj.balance)+int(a)
        obj.save()
    return render(request,'wallet/recharge-wallet.html')

def rechargewalletmob(request,idd):
    ss=idd
    if request.method=='POST':

        a=request.POST.get('recharge')
        # print(a)
        obj=Wallet.objects.get(u_id=ss)
        # print(obj.balance)
        # obj.w_id=request.POST.get('wallet-id')
        obj.balance=int(obj.balance)+int(a)
        obj.save()
        return HttpResponseRedirect('/payment/pay/'+a)
    return render(request,'wallet/recharge-wallet.html')