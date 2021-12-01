from django.shortcuts import render
from.models import Product
# Create your views here.
#object.all()=fetch all in Product
#order_by('id') = 遞增 ('-id')=遞減

def product(request):
    goods=Product.objects.all().order_by('id')
    content={"product_list":goods}

    return render(request,"product.html",content)



