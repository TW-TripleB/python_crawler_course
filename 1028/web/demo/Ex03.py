# -*- coding: utf-8 -*-
"""
Created on Thu Sep 30 21:08:16 2021

@author: USER
"""

import db

sql = "select shop,name,price from product where price < 10000"

db.cursor.execute(sql)

db.conn.commit()

result = db.cursor.fetchall()

if db.cursor.rowcount != 0:
    print(result)
else:
    print('找不到符合的商品')

db.conn.close()