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
        photo_path_old = photo_directory+'/'+row[4] 

        if not exists(photo_path_old):
            photo_number += 1
            name_new = ''.join(row[4].split(' '))
            print("Can't find phgoto id: {}\npath:'{}'\n".format(row[0], photo_path_old))
            
    print('Photos with wrong path detected: {}'.format(photo_number))
except mysql.connector.Error as Err:
    print(Err)
    