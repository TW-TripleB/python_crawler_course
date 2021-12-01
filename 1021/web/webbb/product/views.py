from django.shortcuts import render
#create web pages
from django.core.paginator import Paginator,EmptyPage,PageNotAnInteger
from.models import Product
# Create your views here.
#object.all()=fetch all in Product
#order_by('id') = 遞增 ('-id')=遞減

def product(request):
    if "product" in request.GET: # 商品在搜尋字元裡
        name=request.GET['product'] #抓取字元
        goods=Product.objects.filter(name__icontains=name).order_by('-id') #過濾
    else:
        goods=Product.objects.all().order_by('id')

    paginator=Paginator(goods,20) # 20 items per page
    page=request.GET.get('page')  #顯示url指定頁面
    try:
        goods=paginator.page(page)
    except PageNotAnInteger:      # 如果換頁錯誤
        goods=paginator.page(1)   #跳回第一頁
    except EmptyPage:             # 如果是空白頁面
        goods=paginator.page(paginator.num_pages)  # 跳到最後一頁
        
    content={"product_list":goods}

    return render(request,"product.html",content)



