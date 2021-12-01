from django.shortcuts import render
import json
import requests


# Create your views here. 
def shop(request):
    url="http://tbike-data.tainan.gov.tw/Service/StationStatus/Json"
    data=requests.get(url).text
    bike=json.loads(data)
    station=list()
    rent=list()
    for row in bike:
        station.append(row["StationName"])
        rent.append(row["AvaliableBikeCount"])
    
    return render(request,'shop.html',locals())
#locals() 回傳值為字典

