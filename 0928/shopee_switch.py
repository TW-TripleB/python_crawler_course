# -*- coding: utf-8 -*-
"""
Created on Tue Sep 28 21:06:18 2021

@author: USER
"""
import requests
from bs4 import BeautifulSoup

url="https://shopee.tw/search?keyword=switch"
header={"cookies":"Googlebot",
        "user-agent":"Googlebot"
        }
data=requests.get(url,headers=header)
data.encoding="UTF-8"
data=data.text
soup=BeautifulSoup(data,"html.parser")
item=soup.find_all("div","col-xs-2-4 shopee-search-item-result__item")
for row in item:
    print(row.a.get("href"))
    print(row.find("div","_10Wbs- _5SSWfi UjjMrh").text.strip())
    print(row.find("img",src="https://cf.shopee.tw/file/acc8940c088682687bfcdb763e7048b3"))
    prices=row.find_all("span","_1d9_77")
    
    if len(prices) == 1:
        print(prices[0].text)
    else:
        print(prices[0].text+"~"+prices[1].text)
    print()