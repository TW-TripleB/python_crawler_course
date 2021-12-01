from django.shortcuts import render

from .models import Product

from django.core.paginator import Paginator,EmptyPage,PageNotAnInteger




# Create your views here.
def index(request):
    goods=Product.objects.all().order_by("-id")[:3]
    content = {'productlist':goods}

    return render(request,'index.html',content)



def product(request):
    name=''
    startp=''
    endp=''
    
    if 'product' in request.GET:
        name = request.GET['product']
        startp = request.GET['startp']
        endp = request.GET['endp']
        if len(name) >  0 and len(startp) > 0 and len(endp) > 0 :
            
            goods = Product.objects.filter(name__icontains=name,price__gte=startp,price__lte=endp).order_by('-id')
        elif  len(name) ==  0 and len(startp) > 0 and len(endp) > 0 :   
            goods = Product.objects.filter(price__gte=startp,price__lte=endp).order_by('-id')
            
        else:        
            goods = Product.objects.filter(name__icontains=name).order_by('-id')
    else:    
        goods  = Product.objects.all().order_by('id')
    
    paginator = Paginator(goods,20) 
    page = request.GET.get('page')
    

    try:
        goods = paginator.page(page)
    except PageNotAnInteger:
        goods = paginator.page(1)
    except EmptyPage : 
        goods = paginator.page(paginator.num_pages)
    
    
    
    content = {'productlist':goods,'pp':name,'startp':startp,'endp':endp}
    
    return render(request,'product.html',content)
    
    
