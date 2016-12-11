# CSE 130 Helper
# Created by Aryaman Sharda, Timothy Pei, Kirill Sydykov 

printf "Welcome to CSE 130! \nWould you like to (r)etrieve code files or (s)ubmit a PA?\n"
read response 

if [ "$response" == "r" ]; then
	printf "Creating CSE 130 folder...\n"
	printf "Initializing git repository...\n"
	mkdir "CSE 130"
	
	git init
	git add *
	git commit -m "Initial commit."

	printf "Creating PA1 folder...\n"
	mkdir "./CSE 130/PA1"
	printf "Downloading PA1 starter code...\n"
	curl "https://cseweb.ucsd.edu/classes/fa16/cse130-a/pa1/misc.ml" --silent --output "./CSE 130/PA1/misc.ml"
	curl "https://cseweb.ucsd.edu/classes/fa16/cse130-a/pa1/test.ml" --silent --output "./CSE 130/PA1/test.ml"

	printf "Creating PA2 folder...\n"
	mkdir "./CSE 130/PA2"
	printf "Downloading PA2 starter code...\n"
	curl "https://cseweb.ucsd.edu/classes/fa16/cse130-a/pa2/misc.ml" --silent --output "./CSE 130/PA2/misc.ml"
	curl "https://cseweb.ucsd.edu/classes/fa16/cse130-a/pa2/test.ml" --silent --output "./CSE 130/PA2/test.ml"
	curl "https://cseweb.ucsd.edu/classes/fa16/cse130-a/pa2/art.ml" --silent --output "./CSE 130/PA2/test.ml"
	curl "https://cseweb.ucsd.edu/classes/fa16/cse130-a/pa2/expr.ml" --silent --output "./CSE 130/PA2/test.ml"

	printf "Creating PA3 folder...\n"
	mkdir "./CSE 130/PA3"
	printf "Downloading PA3 starter code...\n"
	curl "https://cseweb.ucsd.edu/classes/fa16/cse130-a/pa3/misc.ml" --silent --output "./CSE 130/PA3/misc.ml"
	curl "https://cseweb.ucsd.edu/classes/fa16/cse130-a/pa3/test.ml" --silent --output "./CSE 130/PA3/test.ml"

	printf "Creating PA4 folder...\n"
	mkdir "./CSE 130/PA4"
	printf "Downloading PA4 starter code...\n"
	curl "https://cseweb.ucsd.edu/classes/fa16/cse130-a/pa4/pa4.zip" --silent --output "./CSE 130/PA4/pa4.zip"

	printf "Creating PA5 folder...\n"
	mkdir "./CSE 130/PA5"
	printf "Downloading PA5 starter code...\n"
	curl "https://cseweb.ucsd.edu/classes/fa16/cse130-a/pa5/misc.py" --silent --output "./CSE 130/PA5/misc.py"
	curl "https://cseweb.ucsd.edu/classes/fa16/cse130-a/pa5/crack.py" --silent --output "./CSE 130/PA5/crack.py"
	curl "https://cseweb.ucsd.edu/classes/fa16/cse130-a/pa5/test.py" --silent --output "./CSE 130/PA5/test.py"
	curl "https://cseweb.ucsd.edu/classes/fa16/cse130-a/pa5/words" --silent --output "./CSE 130/PA5/words"
	curl "https://cseweb.ucsd.edu/classes/fa16/cse130-a/pa5/passwd" --silent --output "./CSE 130/PA5/passwd"
	curl "https://cseweb.ucsd.edu/classes/fa16/cse130-a/pa5/news.txt" --silent --output "./CSE 130/PA5/news.txt"

	printf "Creating PA6 folder...\n"
	mkdir "./CSE 130/PA6"
	printf "Downloading PA6 starter code...\n"
	curl "https://cseweb.ucsd.edu/classes/fa16/cse130-a/pa6/misc.py" --silent --output "./CSE 130/PA6/misc.py"
	curl "https://cseweb.ucsd.edu/classes/fa16/cse130-a/pa6/vector.py" --silent --output "./CSE 130/PA6/vector.py"
	curl "https://cseweb.ucsd.edu/classes/fa16/cse130-a/pa6/decorators.py" --silent --output "./CSE 130/PA6/decorators.py"
	curl "https://cseweb.ucsd.edu/classes/fa16/cse130-a/pa6/test.py" --silent --output "./CSE 130/PA6/test.py"
	curl "https://cseweb.ucsd.edu/classes/fa16/cse130-a/pa6/decorators.out" --silent --output "./CSE 130/PA6/decorators.out"

	printf "Creating PA7 folder...\n"
	mkdir "./CSE 130/PA7"
	printf "Downloading PA7 starter code...\n"
	curl "https://cseweb.ucsd.edu/classes/fa16/cse130-a/pa7/misc.pl" --silent --output "./CSE 130/PA7/misc.pl"	

	printf "All starter code has been retrieved\n\n"
fi 

if [ "$response" == "s" ]; then
	printf "Which assignment would you like to submit? \nEnter a number from 1 - 7. \n"
	read fileNumber 

	printf "Please enter your first name: "
	read firstName

	printf "Please enter your last name: "
	read lastName 

	prep cs130f
	case "$fileNumber" in
	        "1")
	            printf "Submitting PA1...\n"
	            mkdir "./CSE 130/PA1/solution"
	            cp "./CSE 130/PA1/misc.ml" "./CSE 130/PA1/solution"
	            
	            cd "./CSE 130/PA1/solution"
	            zip "$lastName""_""$firstName""_cse130_pa1.zip" ./*	            

	            turnin_pa1 "$lastName"+"_"+"$firstName"+"_cse130_pa1.zip"
	            ;;
	        "2")
	            printf "Submitting PA2...\n"
	            mkdir "./CSE 130/PA2/solution"
	            cp "./CSE 130/PA2/misc.ml" "./CSE 130/PA2/solution/"
				cp "./CSE 130/PA2/expr.ml" "./CSE 130/PA2/solution/"
				cp "./CSE 130/PA2/art.ml" "./CSE 130/PA2/solution/"
				cp "./CSE 130/PA2/art_g_sample.jpg" "./CSE 130/PA2/solution/"
				cp "./CSE 130/PA2/gray1.jpg" "./CSE 130/PA2/solution/"
				cp "./CSE 130/PA2/gray2.jpg" "./CSE 130/PA2/solution/"
				cp "./CSE 130/PA2/gray3.jpg" "./CSE 130/PA2/solution/"
				cp "./CSE 130/PA2/color1.jpg" "./CSE 130/PA2/solution/"
				cp "./CSE 130/PA2/color2.jpg" "./CSE 130/PA2/solution/"
				cp "./CSE 130/PA2/color3.jpg" "./CSE 130/PA2/solution/"
	             
	            cd "./CSE 130/PA2/solution/"
	            zip "$lastName""_""$firstName""_cse130_pa2.zip" ./*	            

	            turnin_pa2 "$lastName"+"_"+"$firstName"+"_cse130_pa2.zip"
	            ;;
	        "3")
	            printf "Submitting PA3...\n"
	            mkdir "./CSE 130/PA3/solution"
	            cp "./CSE 130/PA3/misc.ml" "./CSE 130/PA3/solution/"
	            
	            cd "./CSE 130/PA3/solution/"
	            zip "$lastName""_""$firstName""_cse130_pa3.zip" ./*	            

	            turnin_pa3 "$lastName"+"_"+"$firstName"+"_cse130_pa3.zip"
	            ;;	
	        "4")
	            printf "Submitting PA4...\n"
	            mkdir "./CSE 130/PA4/solution"
	            cp "./CSE 130/PA4/config.make" "./CSE 130/PA4/solution/"
	            cp "./CSE 130/PA4/main.ml" "./CSE 130/PA4/solution/"
	            cp "./CSE 130/PA4/Makefile" "./CSE 130/PA4/solution/"
	            cp "./CSE 130/PA4/nanoLex.mll" "./CSE 130/PA4/solution/"
	            cp "./CSE 130/PA4/nano.ml" "./CSE 130/PA4/solution/"
	            cp "./CSE 130/PA4/nanoParse.mly" "./CSE 130/PA4/solution/"
	            cp "./CSE 130/PA4/rules.make" "./CSE 130/PA4/solution/"
	            cp "./CSE 130/PA4/test.ml" "./CSE 130/PA4/solution/"
	            cp "./CSE 130/PA4/toplevel.ml" "./CSE 130/PA4/solution/"

	            cd "./CSE 130/PA4/solution/"
	            zip "$lastName""_""$firstName""_cse130_pa4.zip" ./*	            
	            
	            turnin_pa4 "$lastName"+"_"+"$firstName"+"_cse130_pa4.zip"
	            ;;	
	        "5")
	            printf "Submitting PA5...\n"
	            mkdir "./CSE 130/PA5/solution"
	            cp "./CSE 130/PA5/misc.py" "./CSE 130/PA5/solution/"
	            cp "./CSE 130/PA5/crack.py" "./CSE 130/PA5/solution/"

	            cd "./CSE 130/PA5/solution/"
	            zip "$lastName""_""$firstName""_cse130_pa5.zip" ./*	            
	            
	            turnin_pa5 "$lastName"+"_"+"$firstName"+"_cse130_pa5.zip"
	            ;;	
	        "6")
	            printf "Submitting PA6...\n"
	            mkdir "./CSE 130/PA6/solution"

	            cp "./CSE 130/PA6/misc.py" "./CSE 130/PA6/solution/"
	            cp "./CSE 130/PA6/vector.py" "./CSE 130/PA6/solution/"
	            cp "./CSE 130/PA6/decorators.py" "./CSE 130/PA6/solution/"

	            cd "./CSE 130/PA6/solution/"
	            zip "$lastName""_""$firstName""_cse130_pa6.zip" ./*	            
	            
	            turnin_pa6 "$lastName"+"_"+"$firstName"+"_cse130_pa6.zip"
	            ;;
	        "7")
	            printf "Submitting PA7...\n"
	            mkdir "./CSE 130/PA7/solution"

	            cp "./CSE 130/PA7/misc.pl" "./CSE 130/PA7/solution/" 

	            cd "./CSE 130/PA7/solution/"
	            zip "$lastName""_""$firstName""_cse130_pa7.zip" ./*	            
	            
	            turnin_pa7 "$lastName"+"_"+"$firstName"+"_cse130_pa7.zip"
	            ;;
	esac	
fi 
