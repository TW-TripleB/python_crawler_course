import requests
import json
import pandas as pd
url="https://www.thsrc.com.tw/TimeTable/Search"

header={'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36'}

param={
'SearchType': 'S',
'Lang': 'TW',
'StartStation': 'TaiZhong',
'EndStation': 'TaiPei',
'OutWardSearchDate': '2021/09/23',
'OutWardSearchTime': '20:00',
'ReturnSearchDate': '2021/09/23',
'ReturnSearchTime': '20:00'       }

data=requests.post(url,data=param,headers=header)

data.encoding="UTF-8"
data=data.text

highRail=json.loads(data)

station=highRail["data"]["DepartureTable"]["TrainItem"]

number=list()
startTime=list()
endTime=list()
duration=list()

for row in station:
    dpTime=row["DepartureTime"]+":00"
    qTime="20:00:00"
    if dpTime > qTime:
        stationinfo=row["StationInfo"]
        for i in stationinfo:
            if i["Show"]:
                print(i["StationName"],end=",")
        print()
        number.append(row["TrainNumber"])
        startTime.append(row["DepartureTime"])
        endTime.append(row["DestinationTime"])
        duration.append(row["Duration"])
frame=pd.DataFrame({"Train num":number,"Departure":startTime,
                    "Arrive":endTime,"Duration":duration},
                   columns=["Train num","Departure","Arrive","Duration"])
    
print(frame)