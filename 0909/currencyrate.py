# -*- coding: utf-8 -*-
"""
Created on Thu Sep  9 21:27:20 2021

@author: USER
"""

import requests
from bs4 import BeautifulSoup
url="https://www.esunbank.com.tw/bank/personal/deposit/rate/forex/foreign-exchange-rates"
data=requests.get(url).text
sp=BeautifulSoup(data,"html.parser")

table=sp.find("table",id="inteTable1")
for rate in table.find_all("tr","tableContent-light"):
    print(rate.find("td","itemTtitle").text)
    print(rate.find("td","odd refresh").text)
    print(rate.find("td","even refresh").text)
    