from django.http import HttpResponse
from django.shortcuts import render

from evstation import settings
# Create your views here.
from rest_framework.views import APIView,Response
from evcharge.models import Evcharge
from evcharge.serializers import android_serialiser
from wallet.models import Wallet

from s_wallet.models import SWallet
class evcharge(APIView):
    def get(self,request):
        ob = Evcharge.objects.all()
        ser = android_serialiser(ob, many=True)
        return Response(ser.data)

    def post(self,request):
        a=request.data['s_id']
        ab=Evcharge()
        ab.amt=request.data['amt']
        ab.status="pending"
        ab.u_id=request.data['uid']
        ab.save()

        objwal=Wallet.objects.get(u_id=ab.u_id)
        objwal.balance=int(objwal.balance)-int(ab.amt)
        objwal.save()

        obb=SWallet.objects.get(s_id=a)
        obb.bal=int(obb.bal)+int(ab.amt)
        obb.save()

        return HttpResponse('yess')