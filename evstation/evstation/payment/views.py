from django.shortcuts import render
from payment.models import Payment


# Create your views here.
def viewtrans(request):
    ss = request.session["uid"]
    obj = Payment.objects.filter(u_id=ss)
    context = {
        'j': obj
    }
    return render(request,'payment/view-transaction.html',context)


def viewtransmob(request,idd):
    ss = idd
    obj = Payment.objects.filter(u_id=ss)
    context = {
        'j': obj
    }
    return render(request,'payment/view-transaction.html',context)



def paymentcharge(request):
    ss=request.session["uid"]
    if request.method=="POST":
        obj=Payment()
        obj.w_id=1
        obj.s_id=2
        obj.u_id=ss

        obj.amount=request.POST.get('amount')
        request.session['a_id']=obj.amount
        obj.save()
        return HttpResponseRedirect('/payment/pay/'+str(obj.amount))

    return render(request,'payment/charging.html')





import razorpay
from django.conf import settings
from django.views.decorators.csrf import csrf_exempt
from django.http import HttpResponseBadRequest, HttpResponse, HttpResponseRedirect

# authorize razorpay client with API Keys.
razorpay_client = razorpay.Client(auth=(settings.RAZOR_KEY_ID, settings.RAZOR_KEY_SECRET))


def homepage(request,amt):
    amt=int(amt)
    currency = 'INR'
    # amt=int(request.session['a_id'])
    amount = amt*100 # Rs. 200

    # Create a Razorpay Order
    razorpay_order = razorpay_client.order.create(dict(amount=amount,
                                                       currency=currency,
                                                       payment_capture='0'))

    # order id of newly created order.
    razorpay_order_id = razorpay_order['id']
    callback_url = '/paymenthandler/'

    # we need to pass these details to frontend.
    context = {}
    context['razorpay_order_id'] = razorpay_order_id
    context['razorpay_merchant_key'] = settings.RAZOR_KEY_ID
    context['razorpay_amount'] = amount
    context['currency'] = currency
    context['callback_url'] = callback_url

    return render(request, 'payment/onlinepay.html', context=context)


# we need to csrf_exempt this url as
# POST request will be made by Razorpay
# and it won't have the csrf token.
@csrf_exempt
def paymenthandler(request):
    # only accept POST request.
    if request.method == "POST":
        try:

            # get the required parameters from post request.
            payment_id = request.POST.get('razorpay_payment_id', '')
            razorpay_order_id = request.POST.get('razorpay_order_id', '')
            signature = request.POST.get('razorpay_signature', '')
            params_dict = {
                'razorpay_order_id': razorpay_order_id,
                'razorpay_payment_id': payment_id,
                'razorpay_signature': signature
            }

            # verify the payment signature.
            result = razorpay_client.utility.verify_payment_signature(
                params_dict)
            if result is None:
                a=request.session['a_id']
                amt=int(a)*100
                amount = amt  # Rs. 200
                try:

                    # capture the payemt
                    razorpay_client.payment.capture(payment_id, amount)
                    return HttpResponse('success')

                    # render success page on successful caputre of payment
                    return render(request, 'paymentsuccess.html')
                except:

                    # if there is an error while capturing payment.
                    return render(request, 'paymentfail.html')
            else:

                # if signature verification fails.
                return render(request, 'paymentfail.html')
        except:

            # if we don't find the required parameters in POST data
            return HttpResponseBadRequest()
    else:
        # if other than POST request is made.
        return HttpResponseBadRequest()