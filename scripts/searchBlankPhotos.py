import mysql.connector
import os 

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
        if ' ' in row[4]:
            photo_number += 1
            name_new = ''.join(row[4].split(' '))
            photo_path_old = photo_directory+'/'+row[4] 
            photo_path_new = photo_directory+'/'+name_new
            print("Space detected in photo id: {}\nname_old:'{}'\nname_new:'{}'".format(row[0], row[4], name_new))
            try:
                os.rename(photo_path_old, photo_path_new)

                sql = "UPDATE `photos_edu` SET path = '{}' WHERE `id` = '{}' ".format(name_new, row[0])
                cursor.execute(sql)
                sqlConnection.commit()                
            except FileNotFoundError as Err:
                print(Err)
            
    print('Photos with space detected: {}'.format(photo_number))
except mysql.connector.Error as Err:
    print(Err)
    