
import requests
from bs4 import BeautifulSoup


for i in range(1,9):
    url="https://highschool.yjvs.chc.edu.tw/search/index.php?"
    param={"city":9}
    param["page"]=i 
    data=requests.get(url,params=param).text
            
    soup=BeautifulSoup(data,"html.parser")

    allSchool=soup.find(id="school-list")
    for school in allSchool.find_all("table"):
        item=school.find_all("li")
        print("school name:"+item[0].text,"Address::"+item[1].text,"Tel:"+item[2].text,"Link:"+item[3].text,end="\n")
