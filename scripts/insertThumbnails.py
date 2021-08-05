import mysql.connector
import os 
from os.path import exists

sqlConnection = mysql.connector.connect(
    host='localhost',
    user='root',
    password='',
    database='min'
)

photo_directory = "c:/xampp/htdocs/ministery"

cursor = sqlConnection.cursor()
sql = "SELECT * FROM photos_edu"

try: 
    cursor.execute(sql)
    rows = cursor.fetchall()
    photo_number = 0
    for row in rows:
        photo_number += 1
        new_photo_name =str(row[4]).replace('img', 'thumb')
        sql = "UPDATE `photos_edu` SET thumb = '{}' WHERE id = '{}'".format(new_photo_name, row[0])
        cursor.execute(sql)
        print(new_photo_name)


    print('Photos counted: {}'.format(photo_number))
except mysql.connector.Error as Err:
    print(Err)

sqlConnection.commit()
