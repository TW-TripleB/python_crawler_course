import requests
import json

url="https://data.epa.gov.tw/api/v1/aqx_p_432?limit=1000&api_key=9be7b239-557b-4c10-9775-78cadfc555e9&sort=ImportDate%20desc&format=json"

data=requests.get(url).text

air=json.loads(data)
record=air["records"]

for row in record:
    print("SiteName:",row["SiteName"])
    print("City:",row["County"])
    print("AQI:",row["AQI"])
    print("Status:",row["Status"])
    print()
    