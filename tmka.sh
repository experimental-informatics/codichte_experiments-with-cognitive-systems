#!/bin/bash

tput clear

tput cup 2 50
tput setaf 3
echo "
   _|                      _|
 _|_|_|_|  _|_|_|  _|_|    _|  _|      _|_|_|  
   _|      _|    _|    _|  _|_|      _|    _|  
   _|      _|    _|    _|  _|  _|    _|    _|  
     _|_|  _|    _|    _|  _|    _|    _|_|_| "

tput sgr0
 
tput cup 9 17

tput rev
echo -e "\033[33mTHIS MACHINE KILLS ASCIIS\033[0m"
tput sgr0

tput cup 17 3
echo -e "\033[35m to start -tmka-:\033[0m"

tput cup 20 5 
echo -e "\033[31m        >> !This Window have to be active! <<\033[0m"

tput bold
tput cup 18 5
read -p "DROP AN IMAGE OR TEXTFILE INTO THIS WINDOW [and press ENTER] " file
clear
tput bold
tput cup 6 5
echo -e "\033[32m$file will be transformed into: \033[0m"
 
file="$(echo $file | sed -e "s/'//" | sed -e "s/'//")"

# um die leerzeilen in den dateinamen zu umgehen
IFS=$'\n'


#-----------------------img2txt------------------------------------------------------------------
clear
tput bold
tput cup 9 10
echo -e "\033[31mplease wait while Transformation-Process... \033[0m"


# if - eine bilddatei gewählt wird, -then:

if [[ $file = @(*.jpg|*.bmp|*.JPG|*.BMP|*.tiff|*.tif|*.TIFF|*.TIF|*.gif|*GIF|*.JPEG|*.jpeg|*.png|*.PNG) ]]

then	tput clear
	tput bold
	read -p "

	Type (a) for: >a space between artistic and natural language<

	Type (p) for: >pure artistic language<
	
		...after your choice >> press ENTER     

	   " 

#-----with angram finder------


	if 	[ "$REPLY" == "a" ]
	then 	trap "echo BANG" SIGINT
		clear
		tput bold
		tput cup 9 10
		echo -e "\033[31mpress F11 to read in fullscreen-mode 

		F11 wont work on Macs...\033[0m"
		sleep 1
		notify-send "to interrupt press STRG + C"
		sleep 5
		clear
		convert $file $file.bmp
		hd $file.bmp|
		cut -c62-77|
		
		sed 's/[^[:alpha:]]//g;'|
                sed -e "/^ *$/d"|
		while 	read x 
		do 	an -n 1 $x|
	        	tr "\n" " "
		done 2>&1 |tee /dev/tty >$file-as-ASCII.txt
		cp $file-as-ASCII.txt ~/Desktop
         	clear
                tput bold
                tput cup 4 10
                echo -e "

        a copy of <Image-File_as.txt> lies on your Desktop...

Thank you

"
 	rm $file-as-ASCII.txt $file.bmp
			
		
	fi

	
#----without anagram finder------

	if 	[ "$REPLY" == "p" ]
	then 	trap "echo BANG" SIGINT
		clear
		tput bold
		tput cup 9 10
		echo -e "\033[31mpress F11 to read in fullscreen-mode

		F11 wont work on Macs... \033[0m"
		sleep 1
                notify-send "to interrupt press STRG + C"
		sleep 5
		clear
		convert $file $file.bmp
		hd $file.bmp|
		cut -c62-77|
		tr "\n" " "|
		sed 's/[.]//g;'|	
		pv -qL 7000 2>&1 |tee /dev/tty >$file-as-ASCII.txt
		cp $file-as-ASCII.txt ~/Desktop
         	clear
                tput bold
                tput cup 4 10
                echo -e "

        a copy of <Image-File_as.txt> lies on your Desktop...

Thank you

"
 	rm $file-as-ASCII.txt $file.bmp
	fi

else echo -e "\033[34m

OH SHIT! i was never been into this space...

Sorry, but if you want to define a new one, 
you have to open the door by yourself and modify -tmka-

-------------------

Remember:

tmka >> can only read:

        .txt and .pdf for your Textfiles

        .png .jpg .tif .gif .bmp for your Imagefiles

tmka >> cannot handle Videofiles or anything else


\033[0m"

fi


#----------------------txt2img-----------------------------------------------------------------


if 		[[ $file = @(*.txt|*.TXT) ]]
then 		clear
		tput bold
		tput cup 9 10
		echo -e "\033[31mplease wait while transformating... \033[0m

"
		#bmp oder textfile in hexdump umwandeln
		cat $file|hd|cut -c11-58>/tmp/bloblo.tmp

		hexdump=$(cat /tmp/bloblo.tmp)

		#Quadratwurzel errechnen über die Anzahl der Farbwerte (Pixel)
		hexnum=`wc -w /tmp/bloblo.tmp|cut -d " " -f1`
		lines=$(($hexnum/6))

		#quadratwurzel ziehen für zeilenanfänge
		quadratwurzel=`echo "sqrt($lines)" | bc`

		#dezimal Quadratwurzel in Hexadezimal umrechnen
		hexquadrat=$(printf "%02x\n" "$quadratwurzel")
		count=$(printf "%02x\n" "$quadratwurzel"|wc -c)

		#Abfrage nach der Größe der Hexadezimalzahl (wieviele Ziffern)
		eins=$(echo $hexquadrat|cut -c1)
		zwei=$(echo $hexquadrat|cut -c2)
		drei=$(echo $hexquadrat|cut -c3)
		vier=$(echo $hexquadrat|cut -c4)
		fuenf=$(echo $hexquadrat|cut -c5)
		sechs=$(echo $hexquadrat|cut -c6)
		sieben=$(echo $hexquadrat|cut -c7)
		acht=$(echo $hexquadrat|cut -c8)

		#schreiben des Headers bzw. des kompletten Bmp-Hexdumps
		if [[ $count = [1-3] ]]
	        then    echo -e "42 4d 00 00 00 00 00 00 00 00 36 00 00 00 28 00
00 00 $eins$zwei 00 00 00 $eins$zwei 00 00 00 01 00 18 00 00 00
00 00 10 00 00 00 13 0b 00 00 13 0b 00 00 00 00
00 00 00 00 00 00 $hexdump">/tmp/blabla.tmp
		fi

		if [[ $count = 4 ]]
	        then    echo -e "42 4d 00 00 00 00 00 00 00 00 36 00 00 00 28 00
00 00 $zwei$drei 0$eins 00 00 $zwei$drei 0$eins 00 00 01 00 18 00 00 00
00 00 10 00 00 00 13 0b 00 00 13 0b 00 00 00 00
00 00 00 00 00 00 $hexdump">/tmp/blabla.tmp
		fi

		if [[ $count = 5 ]]
	        then    echo -e "42 4d 00 00 00 00 00 00 00 00 36 00 00 00 28 00
00 00 $drei$vier $eins$zwei 00 00 $drei$vier $eins$zwei 00 00 01 00 18 00 00 00
00 00 10 00 00 00 13 0b 00 00 13 0b 00 00 00 00
00 00 00 00 00 00 $hexdump">/tmp/blabla.tmp
		fi

		if [[ $count = 6 ]]
	        then    echo -e "42 4d 00 00 00 00 00 00 00 00 36 00 00 00 28 00
00 00 $vier$fuenf $zwei$drei 0$eins 00 $vier$fuenf $zwei$drei 0$eins 00 01 00 18 00 00 00
00 00 10 00 00 00 13 0b 00 00 13 0b 00 00 00 00
00 00 00 00 00 00 $hexdump">/tmp/blabla.tmp
		fi

		if [[ $count = 7 ]]
	        then    echo -e "42 4d 00 00 00 00 00 00 00 00 36 00 00 00 28 00
00 00 $fuenf$sechs $drei$vier $eins$zwei 00 $fuenf$sechs $drei$vier $eins$zwei 00 01 00 18 00 00 00
00 00 10 00 00 00 13 0b 00 00 13 0b 00 00 00 00
00 00 00 00 00 00 $hexdump">/tmp/blabla.tmp
		fi

		if [[ $count = 8 ]]
	        then    echo -e "42 4d 00 00 00 00 00 00 00 00 36 00 00 00 28 00
00 00 $sechs$sieben $vier$fuenf $zwei$drei 0$eins $sechs$sieben $vier$fuenf $zwei$drei 0$eins 01 00 18 00 00 00
00 00 10 00 00 00 13 0b 00 00 13 0b 00 00 00 00
00 00 00 00 00 00 $hexdump">/tmp/blabla.tmp
		fi

		if [[ $count = 9 ]]
	        then    echo -e "42 4d 00 00 00 00 00 00 00 00 36 00 00 00 28 00
00 00 $sieben$acht $fuenf$sechs $drei$vier $eins$zwei $sieben$acht $fuenf$sechs $drei$vier $eins$zwei 01 00 18 00 00 00
00 00 10 00 00 00 13 0b 00 00 13 0b 00 00 00 00
00 00 00 00 00 00 $hexdump">/tmp/blabla.tmp
		fi

		#umwandeln des Hexdumps in ASCII (Bmp erzeugen) und als Bild visualisieren
		cat /tmp/blabla.tmp |cut -c-48|xxd -r -p>$file-square.bmp
		rm /tmp/blabla.tmp /tmp/bloblo.tmp
		notify-send "See"
		eog $file-square.bmp
		cp $file-square.bmp ~/Desktop
                clear
                tput bold
                tput cup 3 10
                echo -e "

        a copy of <your-txt_as.bmp> lies on your Desktop...

Thank you

"
		rm $file-square.bmp

else echo -e "\033[34m

OH SHIT! i was never been into this space...

Sorry, but if you want to define a new one, 
you have to open the door by yourself and modify -tmka-

-------------------

Remember:

tmka >> can only read:

        .txt and .pdf for your Textfiles

        .png .jpg .tif .gif .bmp for your Imagefiles

tmka >> cannot handle Videofiles or anything else


\033[0m"

fi

#--------------------------------------------


if 		[[ $file = @(*.pdf|*.PDF) ]]
then 		pdftotext $file /tmp/dd.txt
		clear
		tput bold
		tput cup 9 10
		echo -e "\033[31mplease wait while transformating... \033[0m

"
		#bmp oder textfile in hexdump umwandeln
		cat /tmp/dd.txt|hd|cut -c11-58>/tmp/bloblo.tmp

		hexdump=$(cat /tmp/bloblo.tmp)

		#Quadratwurzel errechnen über die Anzahl der Farbwerte (Pixel)
		hexnum=`wc -w /tmp/bloblo.tmp|cut -d " " -f1`
		lines=$(($hexnum/6))

		#quadratwurzel ziehen für zeilenanfänge
		quadratwurzel=`echo "sqrt($lines)" | bc`

		#dezimal Quadratwurzel in Hexadezimal umrechnen
		hexquadrat=$(printf "%02x\n" "$quadratwurzel")
		count=$(printf "%02x\n" "$quadratwurzel"|wc -c)

		#Abfrage nach der Größe der Hexadezimalzahl (wieviele Ziffern)
		eins=$(echo $hexquadrat|cut -c1)
		zwei=$(echo $hexquadrat|cut -c2)
		drei=$(echo $hexquadrat|cut -c3)
		vier=$(echo $hexquadrat|cut -c4)
		fuenf=$(echo $hexquadrat|cut -c5)
		sechs=$(echo $hexquadrat|cut -c6)
		sieben=$(echo $hexquadrat|cut -c7)
		acht=$(echo $hexquadrat|cut -c8)

		#schreiben des Headers bzw. des kompletten Bmp-Hexdumps
		if [[ $count = [1-3] ]]
	        then    echo -e "42 4d 00 00 00 00 00 00 00 00 36 00 00 00 28 00
00 00 $eins$zwei 00 00 00 $eins$zwei 00 00 00 01 00 18 00 00 00
00 00 10 00 00 00 13 0b 00 00 13 0b 00 00 00 00
00 00 00 00 00 00 $hexdump">/tmp/blabla.tmp
		fi

		if [[ $count = 4 ]]
	        then    echo -e "42 4d 00 00 00 00 00 00 00 00 36 00 00 00 28 00
00 00 $zwei$drei 0$eins 00 00 $zwei$drei 0$eins 00 00 01 00 18 00 00 00
00 00 10 00 00 00 13 0b 00 00 13 0b 00 00 00 00
00 00 00 00 00 00 $hexdump">/tmp/blabla.tmp
		fi

		if [[ $count = 5 ]]
	        then    echo -e "42 4d 00 00 00 00 00 00 00 00 36 00 00 00 28 00
00 00 $drei$vier $eins$zwei 00 00 $drei$vier $eins$zwei 00 00 01 00 18 00 00 00
00 00 10 00 00 00 13 0b 00 00 13 0b 00 00 00 00
00 00 00 00 00 00 $hexdump">/tmp/blabla.tmp
		fi

		if [[ $count = 6 ]]
	        then    echo -e "42 4d 00 00 00 00 00 00 00 00 36 00 00 00 28 00
00 00 $vier$fuenf $zwei$drei 0$eins 00 $vier$fuenf $zwei$drei 0$eins 00 01 00 18 00 00 00
00 00 10 00 00 00 13 0b 00 00 13 0b 00 00 00 00
00 00 00 00 00 00 $hexdump">/tmp/blabla.tmp
		fi

		if [[ $count = 7 ]]
	        then    echo -e "42 4d 00 00 00 00 00 00 00 00 36 00 00 00 28 00
00 00 $fuenf$sechs $drei$vier $eins$zwei 00 $fuenf$sechs $drei$vier $eins$zwei 00 01 00 18 00 00 00
00 00 10 00 00 00 13 0b 00 00 13 0b 00 00 00 00
00 00 00 00 00 00 $hexdump">/tmp/blabla.tmp
		fi

		if [[ $count = 8 ]]
	        then    echo -e "42 4d 00 00 00 00 00 00 00 00 36 00 00 00 28 00
00 00 $sechs$sieben $vier$fuenf $zwei$drei 0$eins $sechs$sieben $vier$fuenf $zwei$drei 0$eins 01 00 18 00 00 00
00 00 10 00 00 00 13 0b 00 00 13 0b 00 00 00 00
00 00 00 00 00 00 $hexdump">/tmp/blabla.tmp
		fi

		if [[ $count = 9 ]]
	        then    echo -e "42 4d 00 00 00 00 00 00 00 00 36 00 00 00 28 00
00 00 $sieben$acht $fuenf$sechs $drei$vier $eins$zwei $sieben$acht $fuenf$sechs $drei$vier $eins$zwei 01 00 18 00 00 00
00 00 10 00 00 00 13 0b 00 00 13 0b 00 00 00 00
00 00 00 00 00 00 $hexdump">/tmp/blabla.tmp
		fi

		#umwandeln des Hexdumps in ASCII (Bmp erzeugen) und als Bild visualisieren
		cat /tmp/blabla.tmp |cut -c-48|xxd -r -p>$file-square.bmp
		rm /tmp/blabla.tmp /tmp/bloblo.tmp /tmp/dd.txt
		notify-send "See"
		eog $file-square.bmp
		cp $file-square.bmp ~/Desktop
                clear
                tput bold
                tput cup 3 10
                echo -e "

        a copy of <your-PDF_as.bmp> lies on your Desktop...

Thank you

"
	rm $file-square.bmp

else echo -e "\033[34m

OH SHIT! i was never been into this space...

Sorry, but if you want to define a new one, 
you have to open the door by yourself and modify -tmka-

-------------------

Remember:

tmka >> can only read:

        .txt and .pdf for your Textfiles

        .png .jpg .tif .gif .bmp for your Imagefiles

tmka >> cannot handle Videofiles or anything else


\033[0m"

fi
