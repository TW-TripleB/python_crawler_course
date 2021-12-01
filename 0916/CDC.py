# -*- coding: utf-8 -*-
"""
Created on Thu Sep 16 21:25:27 2021

@author: USER
"""

import requests
import json
import pandas as pd
url="https://covid19dashboard.cdc.gov.tw/dash2"

header={'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36'}

data=requests.get(url,headers=header)

data.encoding="UTF-8"
data=data.text

globaL=json.loads(data)

info=globaL["0"]

print(info["cases"])
print(info["deaths"])
url="https://covid19dashboard.cdc.gov.tw/dash3"
data1=requests.get(url,headers=header)

data1.encoding="UTF-8"
data1=data1.text

tw=json.loads(data1)


