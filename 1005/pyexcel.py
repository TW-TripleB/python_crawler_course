#pip install gspread oauth2client 存取 google sheets
import gspread
from oauth2client.service_account import ServiceAccountCredentials
import requests
import json

def auth_client(path,scopes):
    credentials=ServiceAccountCredentials.from_json_keyfile_name(path,scopes)
    return gspread.authorize(credentials)

key="1J1N8bbc7t_bUfmUnTZlTGARdNSKj92vy20G8bhI7Y0c"

path="C://pyexcel//logical-acolyte-314014-dbd2e815b2ab.json"
scopes=['https://spreadsheets.google.com/feeds']







if __name__ == "__main__":
    client=auth_client(path,scopes)
    ws=client.open_by_key(key)
    # sheet=ws.get_worksheet(0) get sheet by index
    # get sheets by name
    sheet=ws.worksheet("teacher")
    sheet.update_cell(3,6,"Hello")
    print(sheet.cell(8,3).value)
    print(sheet.cell(9,3).value)
    print(sheet.cell(10,3).value)

