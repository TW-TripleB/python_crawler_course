import requests
import json

url="http://tbike-data.tainan.gov.tw/Service/StationStatus/Json"

data=requests.get(url).text

bike=json.loads(data)

for row in bike:
    print("Station:",row["StationName"])
    print("Address:",row["Address"])
    print("Capacity:",row["Capacity"])
    print("AvaliableBikeCount:",row["AvaliableBikeCount"])
    print("District:",row["District"])
    print()
    