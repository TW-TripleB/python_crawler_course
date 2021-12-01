import db
sql="select shop,name,price from product where price > 20000"
db.cursor.execute(sql)
db.conn.commit()
result=db.cursor.fetchall() #or fetchone()

if db.cursor.rowcount != 0:
    print(result)
else:
    print("not found")

db.conn.close()
