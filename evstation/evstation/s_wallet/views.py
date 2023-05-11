from django.shortcuts import render
from s_wallet.models import SWallet
from station.models import Station

# Create your views here.
def svwallet(request):
    ss=request.session["uid"]
    obj =SWallet.objects.filter(s_id=ss)
    context = {
        'u': obj
    }



    return render(request, 's_wallet/view-wallet-station.html', context)