import requests
from bs4 import BeautifulSoup
url="https://supertaste.tvbs.com.tw/food"

data=requests.get(url)
data.encoding="UTF-8"
soup=BeautifulSoup(data.text,"html.parser")
foods=soup.find(id="combolistUl")

for row in foods.find_all("li"):
    if len(row.find_all("a"))>0:
        print(row.find("div","time").text.strip())
        print("https://supertaste.tvbs.com.tw/"+row.find_all("a")[0].get("href"))
        print(row.find("div","txt").text.strip())
        print(row.find("img")["data-original"])
        print()