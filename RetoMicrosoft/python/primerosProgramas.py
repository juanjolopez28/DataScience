import sys
from datetime import date
print(date.today())

parsecs = input("Ingresar los parsecs: ")
lightyears = int(parsecs) * 3.26
print(str(parsecs) + " parsecs is " + str(lightyears) + " lightyears")



print(sys.argv)
print(sys.argv[0]) # program name
print(sys.argv[1]) # first arg