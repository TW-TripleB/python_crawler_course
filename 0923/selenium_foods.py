# -*- coding: utf-8 -*-
"""
Created on Thu Sep 23 21:02:50 2021

@author: USER
"""

from selenium import webdriver
import time
from bs4 import BeautifulSoup
webpath="C:\\Users\\USER\Desktop\\0923\\chromedriver.exe"
headLess=webdriver.ChromeOptions()
headLess.add_argument("headLess")

driver=webdriver.Chrome(webpath)
url="https://supertaste.tvbs.com.tw/food"

driver.implicitly_wait(3)
driver.get(url)
for i in range(20):
    driver.execute_script("window.scrollTo(0,document.body.scrollHeight)")
    time.sleep(1)
soup=BeautifulSoup(driver.page_source,"html.parser")
foods=soup.find(id="combolistUl")

for row in foods.find_all("li"):
    if len(row.find_all("a"))>0:
        print(row.find("div","time").text.strip())
        print("https://supertaste.tvbs.com.tw/"+row.find_all("a")[0].get("href"))
        print(row.find("div","txt").text.strip())
        print(row.find("img")["data-original"])
        print()