import os
import mysql.connector 

dbConn = mysql.connector.connect(
	host = 'localhost',
	user = 'root',
	password = '',
	database = 'min'
)

cursor = dbConn.cursor()

schoolDirectory = '91'

rootdir = "C:/xampp/htdocs/ministery/img/{}".format(schoolDirectory)
categories_needed_count = 9
current_categories = []
categories = {
	"1": "1",
	"2": "2",
	"3": "4",
	"4": "3",
	"5": "6",
	"6": "5",
	"7": "7",
	"8": "8",
	"9": "9"
}

iterator = 0

for subdir, dirs, files in os.walk(rootdir):
	print('iterating over file')
	for file in files:
		iterator += 1

		if '_' in file:
			category = file.split('_')[0]
		elif '-' in file:
			category = file.split('-')[0]
		
		
		if ( int(category) < 0) or ( int(category) > 9): 		
			category = 1
		if category not in current_categories:
			current_categories.append(category)


		sql = "INSERT INTO `photos_edu`(`schid`, `category`, `path`) VALUES ({}, {}, 'img/{}/{}');".format(schoolDirectory, categories[str(int(category))], schoolDirectory, file)
		cursor.execute(sql)
		print(sql)

print("Photos added: {}\nCategories autodetected: {}".format(iterator, len(current_categories)))
dbConn.commit()