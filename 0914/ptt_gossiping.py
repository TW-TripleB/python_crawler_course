# -*- coding: utf-8 -*-
"""
Created on Tue Sep 14 19:32:51 2021

@author: USER
"""

import requests
from bs4 import BeautifulSoup
url="https://www.ptt.cc/bbs/Gossiping/index.html"


for i in range(5):
    try:
        print("page:{}".format(i+1))
            
        myCookies={"over18":"1"}
        
        data=requests.get(url,cookies=myCookies).text
            
        soup=BeautifulSoup(data,"html.parser")
        
            
        pttF=soup.find_all("div","r-ent")
            
        for info in pttF:
            print("Date:",info.find("div","date").text.strip())
            print("Title:",info.find("div","title").text.strip())
            print("Link:","https://www.ptt.cc"+info.a["href"])
            print("-"*40)
            
        url="https://www.ptt.cc"+soup.find_all("a","btn wide")[1]["href"]
    except:
        continue
    
