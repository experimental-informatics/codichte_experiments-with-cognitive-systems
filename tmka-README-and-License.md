	   _|                      _|
	 _|_|_|_|  _|_|_|  _|_|    _|  _|      _|_|_|  
	   _|      _|    _|    _|  _|_|      _|    _|  
	   _|      _|    _|    _|  _|  _|    _|    _|  
	     _|_|  _|    _|    _|  _|    _|    _|_|_| 


​	

	THIS MACHINE KILLS ASCIIS



DESCRIPTION

    tmka transforms Words into Images and Images into Words.

DEPENDENCIES


    you have to preinstall the following dependencies:
    
    an - Anagram generator >> download the tarball: http://fatphil.org/words/an.html
              if you run on Ubuntu or Debian, you can install it with apt-get:	

`$ sudo apt-get install an`  

    normally the following tools are already installed on your Linux,
        if not, you can easilly install it with your package-manager >>	apt-get f.ex.
               
         	ImageMagick			- software suite to create, edit, compose, or convert images
           	 cut				- remove sections from each line of files
             sed				- stream editor for filtering and transforming text
             pv					- monitor the progress of data through a pipe
    		vim-common 			- for using the command xxd
    		bsdmainutils 		 - for using the command hd
             poppler-utils 		  - for using the command pdftotext
             libnotify-bin 		  - for using the command notify-send
       
        or just copy the following line, paste it into your Terminal, and see what happens ^_*:

`$ sudo apt-get install an bsdmainutils pv vim-common libnotify-bin poppler-utils imagemagick`



BASIC USAGE 

1. Save the script in your homefolder as *tmka.sh*
2. Open a Terminal-Window
3. Make the file executable:			
   `$ chmod +x tmka.sh`
4. Run tmka.sh in a terminal window:  	
   `$ ./tmka.sh`
5. Drop a Textfile or an Imagefile from your Harddrive into the terminal window, running tmka and press `Enter`


    tmka is able to transform this Formats >> *.pdf *.txt *.jpg *.gif *.png *.tif *.bmp

NOTES

    tmka is tested only on Ubuntu >> Lucid Lynx - Oneiric and on Debian Squeeze

LICENSE

    Copyright c 13.06.2011 Christian Heck
    
    Copyleft ɔ  this work of art is free,
          you can redistribute it and/or modify it according to terms of the Free Art license.
    
    You will find a specimen of this license
        on the site Copyleft Attitude http://artlibre.org as well as on other sites.
    
        You are free to copy the work
    
        You can distribute the work / share it
    
        You are free to modify the work and distribute your new version
    
        You can incorporate the work into a larger work of your own
    
        You can make money based on the work
    
        You can do all these things automatically, without asking permission,
            and without paying me for the privilege.
    
    In order to take advantage of these freedoms, however, you must satisfy a few requirements.
    
        1) When you share the work, or a modification of it,
            you must include the Free Art License 1.3
            or a clear link to the license with the work.  
    
        2) If you modify the work,
            your new version must also be licensed under the Free Art License 1.3.  
    
           This is the “share-alike” concept.  
           You are free to change and make additions to my work,
            as long as the new work is also free for everyone to share and use.
    
        3) If you distribute modified versions,
            you must make it clear that the new version is a modification.

SEE ALSO

    http://noparts.org/tmka-ex/ to see some tmka-examples
