municipalFile = open("mun.txt", "r", encoding='utf-8')


with municipalFile as file: 
	lines = file.readlines()

for line in lines:

	print ("INSERT INTO `munipal`(`name`) VALUES ('{}');".format(line.strip("\n")))

