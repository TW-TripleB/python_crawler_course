import requests
from bs4 import BeautifulSoup
url="https://www.railway.gov.tw/tra-tip-web/tip/tip001/tip112/querybystation"

header={'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36'}

param={
       '_csrf': '4705d63c-fc0f-452b-a43c-e6d42644d272',
       'rideDate': '2021/09/16',
       'station': '3300-臺中'
       }

data=requests.post(url,data=param,headers=header)

data.encoding="UTF-8"
data=data.text

soup=BeautifulSoup(data,"html.parser")

allstations=soup.find(id="tab1")
qTime=input("Enter the inquiry time:(HH:MM)")
qTime+=":00"

for station in allstations.find_all("tr"):
    tds=station.find_all("td")
    if len(tds) > 1:
        dpTime=tds[1].text+":00"
        if dpTime >= qTime:
            print(tds[0].text.strip().replace("\n","")) # replace \n to ""
            print(tds[1].text.strip())
            print(tds[2].text.strip())
            print(tds[3].text.strip())
            print()
# allstations=soup.find(id="tab2")

# for station in allstations.find_all("tr"):
#     tds=station.find_all("td")
#     if len(tds) > 1:
#         print(tds[0].text.strip().replace("\n","")) # replace \n to ""
#         print(tds[1].text.strip())
#         print(tds[2].text.strip())
#         print()

    