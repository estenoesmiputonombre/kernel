from urllib import request 
import sys

if len(sys.argv) != 2:
	raise ValueError("You must enter a command line argument")
try:
	response = request.urlopen(sys.argv[1])
	for line in response:
		print(str(line))
except (request.URLError):
	print("Error trying to get the data")
	sys.exit(2)
