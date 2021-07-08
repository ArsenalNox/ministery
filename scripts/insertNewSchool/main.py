import glob
import os

schoolDirectory = '11'

rootdir = "C:/xampp/htdocs/ministery/img/{}".format(schoolDirectory)

for subdir, dirs, files in os.walk(rootdir):
	print('iterating over file')
	for file in files:
		print("INSERT INTO `photos_edu`(`schid`, `category`, `path`) VALUES ({}, 1, 'img/{}/{}');".format(schoolDirectory, schoolDirectory, file))
