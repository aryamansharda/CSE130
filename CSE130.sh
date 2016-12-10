# CSE 130 Helper
# Created by Aryaman Sharda, Timothy Pei, Kirill Sydykov 

echo "Welcome to CSE 130! \n Would you like to (r)etrieve code files or (s)ubmit a PA?"
read response 

if [ "$response" == "r" ]; then
	echo "Creating CSE 130 folder..."
	echo "Initializing git repository..."
	mkdir "CSE 130"
	git init
	git add *
	git commit -m "Initial commit."

	echo "Creating PA1 folder..."
	mkdir "./CSE 130/PA1"
	echo "Downloading PA1 starter code..."
	curl "https://cseweb.ucsd.edu/classes/fa16/cse130-a/pa1/misc.ml" --silent --output "./CSE 130/PA1/misc.ml"
	curl "https://cseweb.ucsd.edu/classes/fa16/cse130-a/pa1/test.ml" --silent --output "./CSE 130/PA1/test.ml"

	echo "Creating PA2 folder..."
	mkdir "./CSE 130/PA2"
	echo "Downloading PA2 starter code..."
	curl "https://cseweb.ucsd.edu/classes/fa16/cse130-a/pa2/misc.ml" --silent --output "./CSE 130/PA2/misc.ml"
	curl "https://cseweb.ucsd.edu/classes/fa16/cse130-a/pa2/test.ml" --silent --output "./CSE 130/PA2/test.ml"
	curl "https://cseweb.ucsd.edu/classes/fa16/cse130-a/pa2/art.ml" --silent --output "./CSE 130/PA2/test.ml"
	curl "https://cseweb.ucsd.edu/classes/fa16/cse130-a/pa2/expr.ml" --silent --output "./CSE 130/PA2/test.ml"

	echo "Creating PA3 folder..."
	mkdir "./CSE 130/PA3"
	echo "Downloading PA3 starter code..."
	curl "https://cseweb.ucsd.edu/classes/fa16/cse130-a/pa3/misc.ml" --silent --output "./CSE 130/PA3/misc.ml"
	curl "https://cseweb.ucsd.edu/classes/fa16/cse130-a/pa3/test.ml" --silent --output "./CSE 130/PA3/test.ml"

	echo "Creating PA4 folder..."
	mkdir "./CSE 130/PA4"
	echo "Downloading PA4 starter code..."
	curl "https://cseweb.ucsd.edu/classes/fa16/cse130-a/pa4/pa4.zip" --silent --output "./CSE 130/PA4/pa4.zip"

	echo "Creating PA5 folder..."
	mkdir "./CSE 130/PA5"
	echo "Downloading PA5 starter code..."
	curl "https://cseweb.ucsd.edu/classes/fa16/cse130-a/pa5/misc.py" --silent --output "./CSE 130/PA5/misc.py"
	curl "https://cseweb.ucsd.edu/classes/fa16/cse130-a/pa5/crack.py" --silent --output "./CSE 130/PA5/crack.py"
	curl "https://cseweb.ucsd.edu/classes/fa16/cse130-a/pa5/test.py" --silent --output "./CSE 130/PA5/test.py"
	curl "https://cseweb.ucsd.edu/classes/fa16/cse130-a/pa5/words" --silent --output "./CSE 130/PA5/words"
	curl "https://cseweb.ucsd.edu/classes/fa16/cse130-a/pa5/passwd" --silent --output "./CSE 130/PA5/passwd"
	curl "https://cseweb.ucsd.edu/classes/fa16/cse130-a/pa5/news.txt" --silent --output "./CSE 130/PA5/news.txt"

	echo "Creating PA6 folder..."
	mkdir "./CSE 130/PA6"
	echo "Downloading PA6 starter code..."
	curl "https://cseweb.ucsd.edu/classes/fa16/cse130-a/pa6/misc.py" --silent --output "./CSE 130/PA6/misc.py"
	curl "https://cseweb.ucsd.edu/classes/fa16/cse130-a/pa6/vector.py" --silent --output "./CSE 130/PA6/vector.py"
	curl "https://cseweb.ucsd.edu/classes/fa16/cse130-a/pa6/decorators.py" --silent --output "./CSE 130/PA6/decorators.py"
	curl "https://cseweb.ucsd.edu/classes/fa16/cse130-a/pa6/test.py" --silent --output "./CSE 130/PA6/test.py"
	curl "https://cseweb.ucsd.edu/classes/fa16/cse130-a/pa6/decorators.out" --silent --output "./CSE 130/PA6/decorators.out"

	echo "Creating PA7 folder..."
	mkdir "./CSE 130/PA7"
	echo "Downloading PA7 starter code..."
	curl "https://cseweb.ucsd.edu/classes/fa16/cse130-a/pa7/misc.pl" --silent --output "./CSE 130/PA7/misc.pl"	

	echo "All starter code has been retrieved"
fi 
