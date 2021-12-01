# -*- coding: utf-8 -*-
"""
Created on Tue Sep 28 20:42:54 2021

@author: USER
"""

import requests
import json
url="https://24h.pchome.com.tw/cdn/region/DGBJ/data&27213883"
data=requests.get(url)
data.encoding="UTF-8"
data=data.text
js=data.split("var")
goods=js[1].strip()
index=goods.find("[{")
js1=goods[index:-1]
js=json.loads(js1)
for item in js:
    for p in item["Nodes"]:
        print(p["Link"]["Url"])
        print(p["Img"]["Src"])
        print()