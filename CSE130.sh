# CSE 130 Helper
# Created by Aryaman Sharda, Timothy Pei, Kirill Sydykov 

echo "Welcome to CSE 130! \n Would you like to (r)etrieve code files or (s)ubmit a PA?"
read response 

if [ "$response" == "r" ]; then
	mkdir "CSE 130"
	git init
	git add *
	git commit -m "Initial commit."

	mkdir "./CSE 130/PA1"
	curl "https://cseweb.ucsd.edu/classes/fa16/cse130-a/pa1/misc.ml" --silent --output "./CSE 130/PA1/misc.ml"
	curl "https://cseweb.ucsd.edu/classes/fa16/cse130-a/pa1/test.ml" --silent --output "./CSE 130/PA1/test.ml"

	#mkdir "./CSE 130/PA2"
	#mkdir "./CSE 130/PA3"
	#mkdir "./CSE 130/PA4"
	#mkdir "./CSE 130/PA5"
	#mkdir "./CSE 130/PA6"
	#mkdir "./CSE 130/PA7"
	#curl "https://cseweb.ucsd.edu/classes/fa16/cse130-a/assignments.html"
fi 
