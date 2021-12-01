# -*- coding: utf-8 -*-
"""
Created on Tue Sep 14 21:35:15 2021

@author: USER
"""

import requests
from bs4 import BeautifulSoup
url="https://www.irasutoya.com/2021/01/onepiece.html"

data=requests.get(url).text

soup=BeautifulSoup(data,"html.parser")

imgs=soup.find_all("div","floatimg")
for img in imgs:
    pics=img.find("img")["src"].strip()
    fileName=str(pics.split("/")[-1])+".png"

    pic=requests.get(pics)
    with open(fileName,"wb")as f: #wb=write byte
        f.write(pic.content)
