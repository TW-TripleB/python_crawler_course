import requests
import json
url="https://24h.pchome.com.tw/cdn/onsale/v4/20210928/cvr1/data.json&27213825"
data=requests.get(url)
data.encoding="UTF-8"
data=data.text
js=data.split("var")
goods=js[1].strip()
index=goods.find("[{")
js1=goods[index:-1]
js=json.loads(js1)

num=1
for row in js:
    goods=row["Nodes"]
    for p in goods:
        print(num)
        print("Title:",p["Img"]["Title"])
        print("Price:",p["Link"]["Text2"])
        print("Link:"+"https:"+p["Link"]["Url"])
        print("Image:","https://b.ecimg.tw"+p["Img"]["Src"])
        print()
        num+=1