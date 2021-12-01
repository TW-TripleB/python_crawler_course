from django.shortcuts import render
import requests
from bs4 import BeautifulSoup
def yahoo(request):
    url="https://tw.buy.yahoo.com/category/40057185"
    header={"user-agent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36"}
    data=requests.get(url,headers=header)
    data.encoding="UTF-8"
    data=data.text

    soup=BeautifulSoup(data,"html.parser")
    goods=soup.find_all("li","BaseGridItem__grid___2wuJ7 BaseGridItem__multipleImage___37M7b")
    linK=list()
    imG=list()
    titlE=list()
    pricE=list()

    for row in goods:
        link=row.a.get("href")
        img=row.img.get("srcset").split()[0]
        title=row.find("span","BaseGridItem__title___2HWui").text.strip()
        price=row.find("em").text.strip()
        price=price.replace("$","").replace(",","")
        linK.append(link)
        imG.append(img)
        titlE.append(title)
        pricE.append(price)
    return render(request,'yahoo.html',locals())

# Create your views here..
