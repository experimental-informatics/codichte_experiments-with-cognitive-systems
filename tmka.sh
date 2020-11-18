#!/bin/bash

# clear the screen
tput clear
 
# Move cursor to screen location X,Y (top left is 0,0)
tput cup 3 27
 
# Set a foreground colour using ANSI escape
tput setaf 3
echo "tmka"
tput sgr0
 
tput cup 6 17
# Set reverse video mode
tput rev
echo -e "\033[33mTHIS MACHINE KILLS ASCIIS\033[0m"
tput sgr0

tput cup 15 3
echo -e "\033[35m to start -tmka- directly:\033[0m"

tput bold
tput cup 17 5
read -p "DROP AN IMAGE OR TEXTFILE INTO THIS WINDOW [and press ENTER] " file
clear
tput bold
tput cup 6 5
echo -e "\033[32mYour File $file will be transformed into: \033[0m"
 
file="$(echo $file | sed -e "s/'//" | sed -e "s/'//")"

# um die leerzeilen in den dateinamen zu umgehen
IFS=$'\n'
	
#-----------------------img2txt------------------------------------------------------------------
clear
                tput bold
                tput cup 9 10
                echo -e "\033[31mplease wait while Transformation-Process... \033[0m"


# wenn eine bilddatei gewählt wird, dann:

if [[ $file = @(*.jpg|*.bmp|*.JPG|*.BMP|*.tiff|*.tif|*.TIFF|*.TIF|*.gif|*GIF|*.JPEG|*.jpeg|*.png|*.PNG) ]]

then	tput bold
	read -p "

	Type (n) for: >a space between artistic and natural language<

	Type (a) for: >pure artistic language<
	
		...after your choice >> press ENTER     

	   " 
	
#----without anagram finder------

	if 	[ "$REPLY" == "a" ]
	then 	clear
		tput bold
		tput cup 9 10
		echo -e "\033[31mpress F11 to read in fullscreen-mode \033[0m"
		sleep 6
		clear
		convert $file $file.bmp
		hd $file.bmp|
		cut -c62-77|
		tr "\n" " "|
		sed 's/[.]//g;'|	
		pv -qL 7000

#-----with angram finder------

        		elif 	[ "$REPLY" == "n" ]
			then 	clear
				tput bold
				tput cup 9 10
				echo -e "\033[31mpress F11 to read in fullscreen-mode \033[0m"
				sleep 6
				clear
				convert $file $file.bmp
				hd $file.bmp|
				cut -c62-77|
				sed 's/[^[:alpha:]]//g;'|
				sed -e "/^ *$/d"|

					while 	read x 
					do 	an -n 1 $x|
				        	tr "\n" " "
					done

#-----nothing else matters-----

	else	clear
		tput bold
		tput cup 6 10
		echo -e "\033[31myour choice was an undefined space: 
		restart -tmka- to define an already given space 
		or create a new one	and modify yourself the code \033[0m

" 

	fi

#----------------------txt2img-----------------------------------------------------------------


elif [[ $file = @(*.txt|*.TXT) ]]

then	tput bold
	read -p "

	Type (s) to read it in Format >Square<

	Type (l) to read it in ISO A Format >Landscape<

	Type (p) to read it in ISO A Format <Portrait<

	
		...after your choice >> press ENTER     


	   " 

#-----square------
	
	if 	[ "$REPLY" == "s" ]
	then 	clear
		tput bold
		tput cup 9 10
		echo -e "\033[31mplease wait while transformating... \033[0m

"
		#bmp oder textfile in hexdump umwandeln
		cat $file|hd|cut -c11-58>bloblo.tmp

		hexdump=$(cat bloblo.tmp)

		#Quadratwurzel errechnen über die Anzahl der Farbwerte (Pixel)
		#die dezimalzahlen zählen und durch 3 teilen (zwecks RGB) 
		hexnum=`wc -w bloblo.tmp|cut -d " " -f1`
		lines=$(($hexnum/3))

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
00 00 00 00 00 00 $hexdump">blabla.tmp
		fi

		if [[ $count = 4 ]]
	        then    echo -e "42 4d 00 00 00 00 00 00 00 00 36 00 00 00 28 00
00 00 $zwei$drei 0$eins 00 00 $zwei$drei 0$eins 00 00 01 00 18 00 00 00
00 00 10 00 00 00 13 0b 00 00 13 0b 00 00 00 00
00 00 00 00 00 00 $hexdump">blabla.tmp
		fi

		if [[ $count = 5 ]]
	        then    echo -e "42 4d 00 00 00 00 00 00 00 00 36 00 00 00 28 00
00 00 $drei$vier $eins$zwei 00 00 $drei$vier $eins$zwei 00 00 01 00 18 00 00 00
00 00 10 00 00 00 13 0b 00 00 13 0b 00 00 00 00
00 00 00 00 00 00 $hexdump">blabla.tmp
		fi

		if [[ $count = 6 ]]
	        then    echo -e "42 4d 00 00 00 00 00 00 00 00 36 00 00 00 28 00
00 00 $vier$fuenf $zwei$drei 0$eins 00 $vier$fuenf $zwei$drei 0$eins 00 01 00 18 00 00 00
00 00 10 00 00 00 13 0b 00 00 13 0b 00 00 00 00
00 00 00 00 00 00 $hexdump">blabla.tmp
		fi

		if [[ $count = 7 ]]
	        then    echo -e "42 4d 00 00 00 00 00 00 00 00 36 00 00 00 28 00
00 00 $fuenf$sechs $drei$vier $eins$zwei 00 $fuenf$sechs $drei$vier $eins$zwei 00 01 00 18 00 00 00
00 00 10 00 00 00 13 0b 00 00 13 0b 00 00 00 00
00 00 00 00 00 00 $hexdump">blabla.tmp
		fi

		if [[ $count = 8 ]]
	        then    echo -e "42 4d 00 00 00 00 00 00 00 00 36 00 00 00 28 00
00 00 $sechs$sieben $vier$fuenf $zwei$drei 0$eins $sechs$sieben $vier$fuenf $zwei$drei 0$eins 01 00 18 00 00 00
00 00 10 00 00 00 13 0b 00 00 13 0b 00 00 00 00
00 00 00 00 00 00 $hexdump">blabla.tmp
		fi

		if [[ $count = 9 ]]
	        then    echo -e "42 4d 00 00 00 00 00 00 00 00 36 00 00 00 28 00
00 00 $sieben$acht $fuenf$sechs $drei$vier $eins$zwei $sieben$acht $fuenf$sechs $drei$vier $eins$zwei 01 00 18 00 00 00
00 00 10 00 00 00 13 0b 00 00 13 0b 00 00 00 00
00 00 00 00 00 00 $hexdump">blabla.tmp
		fi

		#umwandeln des Hexdumps in ASCII (Bmp erzeugen) und als Bild visualisieren
		cat blabla.tmp |cut -c-48|xxd -r -p>$file-square.bmp
		rm blabla.tmp bloblo.tmp
		display $file-square.bmp
		dddd=`dirname $file-square.bmp`
		cp $file-square.bmp ~/Desktop
		clear
		tput bold
		tput cup 4 10
		echo -e "\033[34m

	a copy of <your_text_as.bmp> lies on your Desktop...

...Please share your Transformations with others and upload it to http://noparts.wordpress.com

		to upload your Transformation automatically, just type (u) [and press ENTER]
		
		to upload it later, type (q) for quit [and press ENTER]

			and write later on an e-mail to: rewa837daqu@post.wordpress.com
			with your name, 
			the name of the transformed Book/Text
			and the image as attachement\033[0m


"


#-----Landscape------

	elif 	[ "$REPLY" == "l" ]
	then 	clear
                tput bold
                tput cup 9 10
                echo -e "\033[31mplease wait while transforming... \033[0m

"

		#bmp oder textfile in hexdump umwandeln
		cat $file|hd|cut -c11-58>bloblo.tmp

		hexdump=$(cat bloblo.tmp)

		#Quadratwurzel errechnen über die Anzahl der Farbwerte (Pixel)
		#die dezimalzahlen zählen und durch 3 teilen (zwecks RGB) 
		hexnum=`wc -w bloblo.tmp|cut -d " " -f1`
		lines=$(($hexnum/3))

		#sind hier vertauscht irgendwie...??
		height=$(echo "sqrt($lines/1.41414141414141414141)" | bc|xargs printf "%1.0f")
		width=$(echo "1.41414141414141414141*$height" | bc|xargs printf "%1.0f")

		#dezimal höhe-breite in Hexadezimal umrechnen
		hexheight=$(printf "%02x\n" "$height")
		hexwidth=$(printf "%02x\n" "$width")

		#Abfrage nach der Größe der Hexadezimalzahl (wieviele Ziffern)
		einsh=$(echo $hexheight|cut -c1)
		zweih=$(echo $hexheight|cut -c2)
		dreih=$(echo $hexheight|cut -c3)
		vierh=$(echo $hexheight|cut -c4)
		fuenfh=$(echo $hexheight|cut -c5)
		sechsh=$(echo $hexheight|cut -c6)
		siebenh=$(echo $hexheight|cut -c7)
		achth=$(echo $hexheight|cut -c8)

		einsb=$(echo $hexwidth|cut -c1)
		zweib=$(echo $hexwidth|cut -c2)
		dreib=$(echo $hexwidth|cut -c3)
		vierb=$(echo $hexwidth|cut -c4)
		fuenfb=$(echo $hexwidth|cut -c5)
		sechsb=$(echo $hexwidth|cut -c6)
		siebenb=$(echo $hexwidth|cut -c7)
		achtb=$(echo $hexwidth|cut -c8)

		#schreiben des Headers bzw. des kompletten Bmp-Hexdumps
		if [[ $achth = [0-9,a-z] ]]
	        then    echo -e "42 4d 00 00 00 00 00 00 00 00 36 00 00 00 28 00
00 00 $siebenb$achtb $fuenfb$sechsb $dreib$vierb $einsb$zweib $siebenh$achth $fuenfh$sechsh $dreih$vierh $einsh$zweih 01 00 18 00 00 00
00 00 10 00 00 00 13 0b 00 00 13 0b 00 00 00 00
00 00 00 00 00 00 $hexdump">blabla.tmp
	        else    if [[ $siebenh = [0-9,a-z] ]]
	                then    echo -e "42 4d 00 00 00 00 00 00 00 00 36 00 00 00 28 00
00 00 $sechsb$siebenb $vierb$fuenfb $zweib$dreib 0$einsh $sechsh$siebenh $vierh$fuenfh $zweih$dreih 0$einsh 01 00 18 00 00 00
00 00 10 00 00 00 13 0b 00 00 13 0b 00 00 00 00
00 00 00 00 00 00 $hexdump">blabla.tmp
	                else    if [[ $sechsh = [0-9,a-z] ]]
        	                then    echo -e "42 4d 00 00 00 00 00 00 00 00 36 00 00 00 28 00
00 00 $fuenfb$sechsb $dreib$vierb $einsb$zweib 00 $fuenfh$sechsh $dreih$vierh $einsh$zweih 00 01 00 18 00 00 00
00 00 10 00 00 00 13 0b 00 00 13 0b 00 00 00 00
00 00 00 00 00 00 $hexdump">blabla.tmp
        	                else    if [[ $fuenfh = [0-9,a-z] ]]
        	                        then    echo -e "42 4d 00 00 00 00 00 00 00 00 36 00 00 00 28 00
00 00 $vierb$fuenfb $zweib$dreib 0$einsb 00 $vierh$fuenfh $zweih$dreih 0$einsh 00 01 00 18 00 00 00
00 00 10 00 00 00 13 0b 00 00 13 0b 00 00 00 00
00 00 00 00 00 00 $hexdump">blabla.tmp
                	                else    if [[ $vierh = [0-9,a-z] ]]
                	                        then    echo -e "42 4d 00 00 00 00 00 00 00 00 36 00 00 00 28 00
00 00 $dreib$vierb $einsb$zweib 00 00 $dreih$vierh $einsh$zweih 00 00 01 00 18 00 00 00
00 00 10 00 00 00 13 0b 00 00 13 0b 00 00 00 00
00 00 00 00 00 00 $hexdump">blabla.tmp
                        	                else    if [[ $dreih = [0-9,a-z] ]]
                        	                        then    echo -e "42 4d 00 00 00 00 00 00 00 00 36 00 00 00 28 00
00 00 $zweib$dreib 0$einsb 00 00 $zweih$dreih 0$einsh 00 00 01 00 18 00 00 00
00 00 10 00 00 00 13 0b 00 00 13 0b 00 00 00 00
00 00 00 00 00 00 $hexdump">blabla.tmp
                        	                        else    if [[ $zweih = [0-9,a-z] ]]
                        	                                then    echo -e "42 4d 00 00 00 00 00 00 00 00 36 00 00 00 28 00
00 00 $einsb$zweib 00 00 00 $einsh$zweih 00 00 00 01 00 18 00 00 00
00 00 10 00 00 00 13 0b 00 00 13 0b 00 00 00 00
00 00 00 00 00 00 $hexdump">blabla.tmp
                        	                                else    echo nothing else matters
                                	                        fi
                                        	        fi
                                        	fi
                         	       fi
                        	fi
                	fi
        	fi

		#umwandeln des Hexdumps in ASCII (Bmp erzeugen) und visualisieren
		cat blabla.tmp |cut -c-48|xxd -r -p>$file-querformat.bmp
		rm blabla.tmp bloblo.tmp
		display $file-querformat.bmp
		dddd=`dirname $file-querformat.bmp`
                cp $file-querformat.bmp ~/Desktop
                clear
                tput bold
                tput cup 4 10
                echo -e "\033[34m

        a copy of <your_text_as.bmp> lies on your Desktop...

...Please share your Transformations with others and upload it to http://noparts.wordpress.com

	to upload your Transformation automatically, just type (u) [and press ENTER]

	to upload it later, type (q) for quit [and press ENTER]

                and write later on an e-mail to: rewa837daqu@post.wordpress.com
		with your name, 
		the name of the transformed Book/Text
		and the image as attachement\033[0m


"

#-------Portrait--------



elif    [ "$REPLY" == "p" ]
        then	clear
                tput bold
                tput cup 9 10
                echo -e "\033[31mplease wait while transforming... \033[0m

"

		#bmp oder textfile in hexdump umwandeln
		cat $file|hd|cut -c11-58>bloblo.tmp

		hexdump=$(cat bloblo.tmp)

		#Quadratwurzel errechnen über die Anzahl der Farbwerte (Pixel)
		#die dezimalzahlen zählen und durch 3 teilen (zwecks RGB) 
		hexnum=`wc -w bloblo.tmp|cut -d " " -f1`
		lines=$(($hexnum/3))

		width=$(echo "sqrt($lines/1.41414141414141414141)" | bc|xargs printf "%1.0f")
		height=$(echo "1.41414141414141414141*$width" | bc|xargs printf "%1.0f")

		#dezimal höhe-breite in Hexadezimal umrechnen
		hexheight=$(printf "%02x\n" "$height")
		hexwidth=$(printf "%02x\n" "$width")

		#Abfrage nach der Größe der Hexadezimalzahl (wieviele Ziffern)
		einsh=$(echo $hexheight|cut -c1)
		zweih=$(echo $hexheight|cut -c2)
		dreih=$(echo $hexheight|cut -c3)
		vierh=$(echo $hexheight|cut -c4)
		fuenfh=$(echo $hexheight|cut -c5)
		sechsh=$(echo $hexheight|cut -c6)
		siebenh=$(echo $hexheight|cut -c7)
		achth=$(echo $hexheight|cut -c8)

		einsb=$(echo $hexwidth|cut -c1)
		zweib=$(echo $hexwidth|cut -c2)
		dreib=$(echo $hexwidth|cut -c3)
		vierb=$(echo $hexwidth|cut -c4)
		fuenfb=$(echo $hexwidth|cut -c5)
		sechsb=$(echo $hexwidth|cut -c6)
		siebenb=$(echo $hexwidth|cut -c7)
		achtb=$(echo $hexwidth|cut -c8)

		#schreiben des Headers bzw. des kompletten Bmp-Hexdumps
		if [[ $achth = [0-9,a-z] ]]
	        then    echo -e "42 4d 00 00 00 00 00 00 00 00 36 00 00 00 28 00
00 00 $siebenb$achtb $fuenfb$sechsb $dreib$vierb $einsb$zweib $siebenh$achth $fuenfh$sechsh $dreih$vierh $einsh$zweih 01 00 18 00 00 00
00 00 10 00 00 00 13 0b 00 00 13 0b 00 00 00 00
00 00 00 00 00 00 $hexdump">blabla.tmp
        	else    if [[ $siebenh = [0-9,a-z] ]]
        		then    echo -e "42 4d 00 00 00 00 00 00 00 00 36 00 00 00 28 00
00 00 $sechsb$siebenb $vierb$fuenfb $zweib$dreib 0$einsh $sechsh$siebenh $vierh$fuenfh $zweih$dreih 0$einsh 01 00 18 00 00 00
00 00 10 00 00 00 13 0b 00 00 13 0b 00 00 00 00
00 00 00 00 00 00 $hexdump">blabla.tmp
        		else 	if [[ $sechsh = [0-9,a-z] ]]
        			then    echo -e "42 4d 00 00 00 00 00 00 00 00 36 00 00 00 28 00
00 00 $fuenfb$sechsb $dreib$vierb $einsb$zweib 00 $fuenfh$sechsh $dreih$vierh $einsh$zweih 00 01 00 18 00 00 00
00 00 10 00 00 00 13 0b 00 00 13 0b 00 00 00 00
00 00 00 00 00 00 $hexdump">blabla.tmp
        			else 	if [[ $fuenfh = [0-9,a-z] ]]
        				then    echo -e "42 4d 00 00 00 00 00 00 00 00 36 00 00 00 28 00
00 00 $vierb$fuenfb $zweib$dreib 0$einsb 00 $vierh$fuenfh $zweih$dreih 0$einsh 00 01 00 18 00 00 00
00 00 10 00 00 00 13 0b 00 00 13 0b 00 00 00 00
00 00 00 00 00 00 $hexdump">blabla.tmp
        				else	if [[ $vierh = [0-9,a-z] ]]
        					then    echo -e "42 4d 00 00 00 00 00 00 00 00 36 00 00 00 28 00
00 00 $dreib$vierb $einsb$zweib 00 00 $dreih$vierh $einsh$zweih 00 00 01 00 18 00 00 00
00 00 10 00 00 00 13 0b 00 00 13 0b 00 00 00 00
00 00 00 00 00 00 $hexdump">blabla.tmp
        					else	if [[ $dreih = [0-9,a-z] ]]
        						then    echo -e "42 4d 00 00 00 00 00 00 00 00 36 00 00 00 28 00
00 00 $zweib$dreib 0$einsb 00 00 $zweih$dreih 0$einsh 00 00 01 00 18 00 00 00
00 00 10 00 00 00 13 0b 00 00 13 0b 00 00 00 00
00 00 00 00 00 00 $hexdump">blabla.tmp
        						else	if [[ $zweih = [0-9,a-z] ]]
        							then    echo -e "42 4d 00 00 00 00 00 00 00 00 36 00 00 00 28 00
00 00 $einsb$zweib 00 00 00 $einsh$zweih 00 00 00 01 00 18 00 00 00
00 00 10 00 00 00 13 0b 00 00 13 0b 00 00 00 00
00 00 00 00 00 00 $hexdump">blabla.tmp
        							else    echo nothing else matters
								fi
							fi
						fi
					fi
				fi
			fi
		fi



		#umwandeln des Hexdumps in ASCII (Bmp erzeugen) uns visualisieren
		cat blabla.tmp |cut -c-48|xxd -r -p>$file-hochformat.bmp
		rm blabla.tmp bloblo.tmp
		display $file-hochformat.bmp
                cp $file-hochformat.bmp ~/Desktop
		filepath0=`readlink -f $file-hochformat.bmp`

#die ganze scheiße funktioniert einfach nicht?????
		filepath=`convert $filepath0 $filepath0.jpg`
#		display $filepath0.jpg
#		sleep 10
                clear
                tput bold
                tput cup 3 10

#funktioniert noch nicht das mutt-ding!!!------

                read -p "

        a copy of <your_text_as.bmp> lies on your Desktop...

...Please share your Transformations with others and upload it to http://noparts.wordpress.com

	
	to upload your Transformation automatically, just 

	type (u) [and press ENTER]
					but you have to be online...


        to upload it later, 
	
	type (q) for quit [and press ENTER]

                and write later on an e-mail to: rewa837daqu@post.wordpress.com
		with your name, 
		the name of the transformed Book/Text
		and the image as attachement


"

		if	[ "$REPLY" == "u" ] 
		then	tput clear
			tput bold
			tput cup 9 5
			read -p "Type your Name and press ENTER >> " name
			tput clear
			tput bold
			tput cup 11 5
			read -p "Type a Title for it and press ENTER to send your Transformation directly to 
			http://noparts.wordpress.com >> " title
			echo "please wait while uploading..."
			mutt -s "$title transformed by $name" -a $filepath -- rewa837daqu@post.wordpress.com<$filepath 
			clear
			echo "THANK YOU"
			read -p "

			do you want to go directly to http://noparts.wordpress.com? (y/n)

"

			if [ "$REPLY" = "y" ]
			then firefox noparts.wordpress.com
			else exit
			fi
                
		elif      [ "$REPLY" == "q" ]
                then    exit

		fi

#----nothing else matters----

else	clear
	tput bold
	tput cup 6 10
	echo -e "\033[31myour choice was an undefined space: 
	restart -tmka- to define an already given space 
	or create a new one	and modify yourself the code \033[0m

" 

fi

else echo -e "\033[34m


OH SHIT! i was never been into this space...

Sorry, but if you want to define a new one, you have to open the door by yourself and modify -tmka-

-------------------

Remember:

-tmka- can only read:

.txt for your Textfiles

.png .jpg .tif .gif .bmp for your Imagefiles

-tmka- cannot handle Videofiles or anything else


\033[0m"

fi
fi   

