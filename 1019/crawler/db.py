import pymysql

conn= pymysql.connect(host="localhost",
                      user="root",
                      passwd="12345678",
                      db="lcc")


cursor=conn.cursor()


