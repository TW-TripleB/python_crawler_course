# -*- coding: utf-8 -*-
"""
Created on Tue Sep 14 20:02:12 2021

@author: USER
"""
import requests
from bs4 import BeautifulSoup

with open("school.csv","w",encoding=("UTF-8-sig"))as filE:
    filE.write("School,Address,Tel,Link\n")
    
for i in range(1,9):
    print("page:{}".format(i))
    url="https://highschool.yjvs.chc.edu.tw/search/index.php?city=9&page="+str(i)
    
    data=requests.get(url).text
            
    soup=BeautifulSoup(data,"html.parser")

    allSchool=soup.find(id="school-list")
    for school in allSchool.find_all("table"):
        item=school.find_all("li")
        with open("school.csv","a",encoding=("UTF-8-sig"))as f:
            f.write("{},{},{},{}\n".format(item[0].text,item[1].text,item[2].text,item[3].text))
 
    