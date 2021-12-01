
import gspread
from oauth2client.service_account import ServiceAccountCredentials
import requests
from bs4 import BeautifulSoup
def auth_client(path,scopes):
    credentials=ServiceAccountCredentials.from_json_keyfile_name(path,scopes)
    return gspread.authorize(credentials)

key="1J1N8bbc7t_bUfmUnTZlTGARdNSKj92vy20G8bhI7Y0c"

path="C://pyexcel//logical-acolyte-314014-dbd2e815b2ab.json"
scopes=['https://spreadsheets.google.com/feeds']
url="https://tw.buy.yahoo.com/search/product?p=%E8%97%8D%E8%8A%BD%E8%80%B3%E6%A9%9F"
client=auth_client(path,scopes)
ws=client.open_by_key(key)
    # sheet=ws.get_worksheet(0) get sheet by index
    # get sheets by name
sheet=ws.worksheet("yahoo")

data=requests.get(url)
data.encoding="UTF-8"
data=data.text
soup=BeautifulSoup(data,"html.parser")

earphone=soup.find_all("li","BaseGridItem__grid___2wuJ7 BaseGridItem__multipleImage___37M7b")
p=2
for row in earphone:
    sheet.update_cell(p,1,row.find("span","BaseGridItem__title___2HWui").text.strip())
    sheet.update_cell(p,2,row.find("em").text.replace("$","").replace(",",""))
    p+=1


