import db
from bs4 import BeautifulSoup
import requests

url="https://tw.buy.yahoo.com/category/39919486"
header={"user-agent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36"}
data=requests.get(url,headers=header)
data.encoding="UTF-8"
data=data.text

soup=BeautifulSoup(data,"html.parser")
goods=soup.find_all("li","BaseGridItem__grid___2wuJ7 BaseGridItem__multipleImage___37M7b")
for row in goods:
    link=row.a.get("href")
    img=row.img.get("srcset").split()[0]
    title=row.find("span","BaseGridItem__title___2HWui").text.strip()
    price=row.find("em").text.strip()
    price=price.replace("$","").replace(",","")
    sql="select price from product where link='{}'".format(link)
    db.cursor.execute(sql)
    db.conn.commit()
    if db.cursor.rowcount == 0:
        sql="insert into product(shop,name,price,photo_url,link,product_type) values('Yahoo','{}','{}','{}','{}','1')".format(title,price,img,link)
        db.cursor.execute(sql)
        db.conn.commit()
    else:
        result=db.cursor.fetchone()
        if result[0] != int(price):
            print("different")
    # print(link)
    # print(img)
    # print(title)
    # print(price)
    # print()
db.conn.close()
