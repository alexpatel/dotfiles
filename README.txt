			## Personal Computer Dotfiles ##

				* What is it?
				* Branches
				* Installation Notes
				* License

### What is it? ### 

This repository contains my personal computer configuration files. I currently
use: 

	* Cinnamon Desktop Environment
	* fish shell
	* vim
	* iceweasel + vimperrator

### Branches ### 

+++++++++++++++++++++++++++++++++++++++++++++++++
| Branch | Description				|
+++++++++++++++++++++++++++++++++++++++++++++++++
| carbon | Lenovo X1 Carbon 34442DU		|
|	 | Debian "jessie" (stable), Linux 3.16	|
-------------------------------------------------
| t440s  | Lenovo T400s				|
|	 | Arch Linux, Linux 3.19		|
-------------------------------------------------
| chrome | Acer Chromebook C720 		| 
|	 | Arch Linux, Linux 3.19		|
-------------------------------------------------

### Installation ###

The bootstrap script will signifantly modify configuration files on your
computer, presuming you have installed some of the software configured herein.
Please read through the modifications it will make before you run it. To
install, type:

	$ git clone https://github.com:alexpatel/dotfiles.git 
	$ cd dotfiles 
	$ make install

### License ###

This work is in the public domain. Happy hacking!
