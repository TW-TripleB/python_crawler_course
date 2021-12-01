# -*- coding: utf-8 -*-
"""
Created on Thu Sep 23 19:46:48 2021

@author: USER
"""
import requests
from bs4 import BeautifulSoup
session=requests.session()
header={'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36'}
url="https://member.lccnet.com.tw/login.asp?ACT=login"
param={
       "NO":"105069627",
       "PWD":"NIEN610711",
       "rmAccount":"ON"
       }
data=session.post(url,data=param,headers=header)
data.encoding="big5"
myclass=session.get("https://member.lccnet.com.tw/myclass_index.asp",headers=header)

myclass.encoding="big5"
myclass=myclass.text
soup=BeautifulSoup(myclass,"html.parser")
data=soup.find(id="table85")
trs=data.find_all("tr")
for row in trs:
    tds=row.find_all("td")
    for i in tds:
        print(i.text.strip())