import requests
from bs4 import BeautifulSoup
url="https://www.ptt.cc/bbs/Food/index.html"
for i in range(5):
    print("page:{}".format(i+1))
    data=requests.get(url).text
    
    soup=BeautifulSoup(data,"html.parser")
    
    pttF=soup.find_all("div","r-ent")
    
    for info in pttF:
        print("Date:",info.find("div","date").text.strip())
        print("Title:",info.find("div","title").text.strip())
        print("Link:","https://www.ptt.cc"+info.a["href"])
        print("-"*40)
    
    url="https://www.ptt.cc"+soup.find_all("a","btn wide")[1]["href"]
    