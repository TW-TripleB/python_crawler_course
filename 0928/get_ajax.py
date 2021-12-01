from selenium import webdriver
import requests
import json
'''
ajax>> Network >> Fetch/XHR
'''

url="https://www.kkday.com/zh-tw/product/ajax_get_top_products?areaCode=A01-001-00019&upLimit=10&showLmit=10&csrf_token_name=74d924828c088419656772394f03046d"
data=requests.get(url)
data.encoding="UTF-8"
data=data.text

js=json.loads(data)

allData=js["data"]
num=1
for row in allData:
    print(num)
    print("item:",row["name"])
    print("introduction:",row["introduction"])
    print("image:",row["img_url"])
    print("price:",row["price"])
    print("link:",row["url"])
    num+=1
    print()
    