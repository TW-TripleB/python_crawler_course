# -*- coding: utf-8 -*-
"""
Created on Thu Sep  9 20:04:50 2021

@author: USER
"""

import requests
from bs4 import BeautifulSoup
url="https://www.setn.com/ViewAll.aspx?PageGroupID=0"
data=requests.get(url).text
sp=BeautifulSoup(data,"html.parser")

hotNews=sp.find("div","row NewsList")
count=1
for row in hotNews.find_all("div",class_="col-sm-12 newsItems"):
    h3=row.find("h3")
    print(count)
    print(row.find("time").text)
    print(h3.find("a").text)
    print(h3.find("a")["href"])
    print()
    count+=1