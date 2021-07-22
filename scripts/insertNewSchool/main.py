import glob
import os
import mysql.connector 

dbConn = mysql.connector.connect(
	host = 'localhost',
	user = 'root',
	password = '',
	database = 'min'
)

cursor = dbConn.cursor()

schoolDirectory = '50'

rootdir = "C:/xampp/htdocs/ministery/img/{}".format(schoolDirectory)

for subdir, dirs, files in os.walk(rootdir):
	print('iterating over file')
	for file in files:
		sql = "INSERT INTO `photos_edu`(`schid`, `category`, `path`) VALUES ({}, 1, 'img/{}/{}');".format(schoolDirectory, schoolDirectory, file)
		cursor.execute(sql)
		print(sql)
dbConn.commit()