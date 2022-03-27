from random import randint


with open("test.txt", 'r') as file:
	for line in file.readlines():
		print(f"""
		INSERT INTO `photos_edu`(`schid`, `category`, `path`, `thumb`) VALUES (1,{randint(1,15)},'img/5/{line.strip()}','img/5/{line.strip()}');
		""".strip())