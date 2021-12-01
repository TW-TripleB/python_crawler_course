# -*- coding: utf-8 -*-
"""
Created on Thu Sep  9 19:37:34 2021

@author: USER
"""

import requests
from bs4 import BeautifulSoup
url="https://www.taiwanlottery.com.tw/index_new.aspx"
data=requests.get(url).text
soup=BeautifulSoup(data,"html.parser")
balls=soup.find_all("div","contents_box02")
first=balls[0]
second=balls[2]
greens=first.find_all("div","ball_tx ball_green")
red=first.find("div","ball_red")
count=0
print(balls.find("span").text)
for ball in greens:
    if count >5:
        print(ball.text,end=",")
    count+=1
print("special:",red.text)
count=0
yellows=second.find_all("div","ball_tx ball_yellow")
red=second.find("div","ball_red")
for yball in yellows:
    if count>5:
        print(yball.text,end=",")
    count+=1
print("special:",red.text)

    
