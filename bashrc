#
# ~/.bashrc
#

# Color mapping
grey='\[\033[1;30m\]'
red='\[\033[0;31m\]'
RED='\[\033[1;31m\]'
green='\[\033[0;32m\]'
GREEN='\[\033[1;32m\]'
yellow='\[\033[0;33m\]'
YELLOW='\[\033[1;33m\]'
purple='\[\033[0;35m\]'
PURPLE='\[\033[1;35m\]'
white='\[\033[0;37m\]'
WHITE='\[\033[1;37m\]'
blue='\[\033[0;34m\]'
BLUE='\[\033[1;34m\]'
cyan='\[\033[0;36m\]'
CYAN='\[\033[1;36m\]'
NC='\[\033[0m\]'

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

TERM='rxvt-unicode'
COLORTERM='rxvt-unicode-256color'

PS1='[\u@\h \W]\$ '

# Little fun script to give a innapropriate dragon when you open up a terminal
fortune -o | cowsay -f dragon

source /usr/share/nvm/init-nvm.sh

# Alias'
alias ls='ls --color=auto'
alias fuck312='cd /home/jake/Documents/ee312/sp2016/chase/students/jdk2595'
alias dup='urxvt &'
alias debugLaunchpad='sudo openocd --file /usr/share/openocd/scripts/board/ek-tm4c123gxl.cfg'
alias ee445LLab='cd /home/jake/Documents/ee445l/EmbedDesignLab/'
alias fuck422='cd /home/jake/Documents/ee422c/'
alias pendrive='sudo mount /dev/sdb1 /mnt/usbstick/'

# Convenience functions

# Extracts various files
extract() {
		if [ -f $1 ] ; then
			case $1 in 
				*.tar.bz2) tar xjf $1	;;
				*.tar.gz)	tar  xzf $1	;;
				*.bz2)		tar bunzip2 $1	;;
				*.rar)		rar x $1	;;
				*.gz)		gunzip $1	;;
				*.tar)		tar xf $1	;;
				*.tbz2)		tar xjf $1	;;
				*.tgz)		tar xzf $1	;;
				*.zip)		unzip  $1	;;
				*.Z)		uncompress $1	;;
				*.7z)		7z x $1		;;
				*)			echo "'$1' cannot be extracted via extract()."	;;
			esac
		else
			echo  "'$1' is not a valid file"
		fi
}

# Move and  go
mvg(){
	if [ -d "$2" ] ; then
		mv $1 $2 && cd $2
	else
		mv $1 $2
	fi
}

# Copy and go
cpg(){
	if [ -d "$2" ] ; then
		cp $1 $2 && cd $2
	else
		cp $1 $2
	fi
}

# Put pintos in PATH
source /home/jake/Documents/ee461s/labs/lab2/OSF17project-team-sudo-rm-rf/.PINTOS_PATH
alias pintos-gdb='GDBMACROS=/home/jake/Documents/ee461s/labs/lab2/OSF17project-team-sudo-rm-rf/misc/gdb-macros pintos-gdb'
