import pymysql

conn= pymysql.connect(host="localhost",
                      user="root",
                      passwd="12345678",
                      db="juicydude")


cursor=conn.cursor()


