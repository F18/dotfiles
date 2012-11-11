# .bashrc

# Set terminal to 256 color
#export TERM=xterm-256color
export TERM=screen-256color

# define some colors
NONE='\[\e[01;32m\]'
WHITE_1='\[\033[0;1m\]'
BLACK='\[\033[0;30m\]'
GRAY='\[\033[1;30m\]'
RED='\[\033[0;31m\]'
LIGHT_RED='\[\033[1;31m\]'
GREEN='\[\033[0;32m\]'
LIGHT_GREEN='\[\033[1;32m\]'
BROWN='\[\033[0;33m\]'
YELLOW='\[\033[1;33m\]'
BLUE='\[\033[0;34m\]'
LIGHT_BLUE='\[\033[1;34m\]'
PURPLE='\[\033[0;35m\]'
LIGHT_PURPLE='\[\033[1;35m\]'
CYAN='\[\033[0;36m\]'
LIGHT_CYAN='\[\033[0;1;36m\]'
LIGHT_GRAY='\[\033[0;37m\]'
WHITE='\[\033[1;37m\]'
BRACE_COLOR=$LIGHT_GRAY
LBRACE=$BRACE_COLOR[$BRACE_COLOR
RBRACE=$BRACE_COLOR]$BRACE_COLOR
SYMBOL="\\$"
WD="\W"

# Get the prompt to display the current path
#PS1=[\\w]\\$
#export PS1


#
# PS1 sets the command prompt
# PROMPT_COMMAND sets the window title
#
#PS1='\[\e[01;32m\][\u\[\e[01;32m\]@\[\e[01;31m\]\h\[\e[01;32m\] \[\e[01;33m\]\W\[\e[01;32m\]] '
#PS1="$LBRACE\D{%H:%M}$RBRACE$LBRACE\h $YELLOW\W$RBRACE$NONE "
PS1="$LBRACE$RED\w$RBRACE\n$LBRACE\D{%H:%M}$RBRACE$LBRACE\h $YELLOW\W$RBRACE$NONE$ "
export PS1
PROMPT_COMMAND='echo -ne "\033]0;$USER@${HOSTNAME%%.*}:${PWD/#$HOME/~}\007"'

#export PROMPT_DIRTRIM=1
#PROMPT_COMMAND='echo -ne "\033]0;$USER@${HOSTNAME%%.*}:$PROMPT_DIRTRIM\007"'

#PROMPT_COMMAND='DIR=`pwd|sed -e "s!$HOME!~!"`; if [ ${#DIR} -gt 30 ]; then CurDir=.${DIR:${#DIR}-30}; else CurDir=$DIR; fi'
#function prompt_command {
#   DIR=`pwd|sed -e "s!$HOME!~!"`;
#   if [ ${#DIR} -gt 30 ];
#   then CurDir=.${DIR:${#DIR}-30};
#   else CurDir=$DIR;
#   fi
#   echo $CurDir
#}
##PS1="$LBRACE\D{%H:%M}$RBRACE$LBRACE\h $YELLOW\$CurDir$RBRACE$NONE$ "
#PS1="$CurDir > "

#PROMPT_COMMAND='DIR=`pwd|sed -e "s!$HOME!~!"`; if [ ${#DIR} -gt 30 ]; then CurDir=${DIR:0:12}...${DIR:${#DIR}-15}; else CurDir=$DIR; fi'
#PS1="[\$CurDir] \$ "
#PROMPT_COMMAND='CurDir=`pwd|sed -e "s!$HOME!~!"|sed -re "s!([^/])[^/]+/!\1/!g"`'
#PS1="[\$CurDir] \$ "
#export PS1


# enable color support of ls
# note that .dircolors is saved in a git repository as ~/dircolors/LS_COLORS
if [ "$TERM" != "dumb" ]; then
    [ -e "$HOME/.dircolors" ] && DIR_COLORS="$HOME/.dircolors"
    [ -e "$DIR_COLORS" ] || DIR_COLORS="";
    eval "`dircolors -b $DIR_COLORS`"
    alias ls='ls --color=auto'
fi

export SCPGUILL=ramy@guillimin.clumeq.ca:/home/rashad/
export SCPSCI=ramy@scinet.utoronto.ca:/home/z/zingg/rashad/

 #User specific aliases and functions

alias ...='cd ..'                   # Go up one directory
alias ..='cd ..; l'                # Go up one directory clear and list files

alias bye='exit'                    # Close connection
alias brc='cd; emacs .bashrc &'     # Open the .bashrc file for editing

alias cdc='cd ~/optima/optima2D'          # Go to group code directory
alias cdd='cd ~/01_thesis/jon_driver/optima10/optima2D'
alias cdg='cd ~/optima-grids/ramy-icem-grids/'
alias cdj='cd ~/01_thesis/jabref_database'
alias cdm='cd ~/myResults'
alias cdo='cd ~/optima/optima2D'
alias cdp='cd ~/02_courses/10_PPIT/teachingPortfolio'
alias cdt='cd ~/01_thesis/myPapers/conferences/201306_aiaa_sandiego/publication/abstract'
alias cds='cd /d1/scratch/ramy'
alias cdv='cd ~/optima-verify/06_transPredict/y2012/m07'
alias cdvo='cd ~/optima-verify/08_optimize/y2012/m06'
alias cdvs='cd ~/04_scinet/optima-verify/08_optimize/y2012/m09'

alias cll='clear'                   # Clear the screen
alias cl='clear; ls'                # Clear and list
alias cp='cp -i'                    # Copy, but ask me first
alias cpForce='cp'                    # Copy, but ask me first
alias chmodf='find . -type f -print | xargs chmod' # chmod files only (recursively)

alias dec='cd ~/01_thesis/DECs/dec1/report' # go to local DECs directory
alias dirr='ls -al | more'
alias driver='cd ~/old_students/jon_driver'  
alias duf='du --exclude="old_students/" -sm */ | sort -n'

alias e='emacs'             # Open the text editor emacs
#alias e='ee'  # Open the text editor emacs with emacsclient daemon
# Note: ee is a bash script with the following command:
# estart='exec emacsclient --alternate-editor="" -c "$@" -n'
alias eall='ee *.cc *.h' # Open all C++ related files in current directory
alias eb='cd; ee .bashrc &'     # Open the .bashrc file for editing
alias emptytrash='sudo rm -rf ~/.local/share/Trash/files/*'
alias ett='emacs -nw -q'     # Open emacs in terminal mode (-nw) without loading the init-file (-q)
alias et='emacs -nw'     # Open emacs in terminal mode (-nw)
alias ec='emacsclient -nw'     # Open emacs in terminal mode (-nw)
alias epstopdfdir='ls *eps | xargs -n1 epstopdf' # run epstopdf on all eps files in directory

#alias e='~/usr/local/emacs-23.2/src/emacs'         # Open the text editor emacs
#alias e='emacs'         # Open the text editor emacs
#alias ett='emacs -nw -q'     # Open emacs in terminal mode (-nw) without loading the init-file (-q)
#alias et='emacs -nw'     # Open emacs in terminal mode (-nw) without loading the init-file (-q)
#alias eall='emacs *.f *.inc *.f90' # Open all C++ related files
#alias eb='emacs ~/.bashrc'

alias fn='find . -name'
#alias file_invert='sed -n '1!G;h;$p'' # writes a text file from last line to first line

alias g='gvim'               # run gnuplot
alias gn='gnuplot'           # run gnuplot

alias gk='gitk --all'        # open git repository GUI
alias gbb='git branch'     # display all git branches       
alias gb='git branch -a'     # display all git branches       
alias gl='git log'           # display git log
alias gt='git status'        # display git status
alias gu='git remote update' # update all remote repositories
alias gv='gvim'              # open gvim


alias go2='nice -n 19 ~/CFFC/src_2D/euler2D' # RUN euler2D
alias go='nice -n 19 ~/CFFC/src_3D/euler3Dpolytropic' # RUN euler3Dpolytropic

#alias head='head -100' # Display the first 100 lines of a file
alias hist='history'  # Display history

alias jabref='~/usr/local/java/jre1.7.0/bin/java -jar ~/usr/local/jabref/JabRef-2.7.jar'

alias l='ls -lsh'      # List files in short format
alias ll='ls -lash'    # List all files in long format and show size
alias la='ls -a'      # List all including hidden 
alias lm='ls -lrth'   # List all files in order of date modified
#alias ld='ll --b=M | sort -n'   # List all files in order of file size
alias ld='ls -lrSh'   # List all files in order of file size
alias lf='ls -l | grep ^-' # List files only (not directories)
alias lc='ls *.f*' # List fortran code only
alias lt='ll --sort=extension -h' # List files only (not directories)

alias lpcs='/usr/bin/lpr -P lpc -o InputSlot=Tray3 -o PageSize=Letter -o Duplex=None'  # Prints on laser color printer, single-sided
alias lpcd='/usr/bin/lpr -P lpc -o InputSlot=Tray3 -o PageSize=Letter -o Duplex=DuplexNoTumble'  #Prints on laser color printer, double-sided
alias lpbs='/usr/bin/lpr -P lp -o InputSlot=Tray_2 -o OutputBin=PrinterDefault -o Resolution=600x1200dpi -o PageSize=Letter -o Duplex=None' # Prints in black&white, single-sided
alias lpbd='/usr/bin/lpr -P lp -o InputSlot=Tray_2 -o OutputBin=PrinterDefault -o Resolution=600x1200dpi -o PageSize=Letter -o Duplex=DuplexNoTumble' # Prints in black&white, double-sided
alias lpcsl='/usr/bin/lpr -P lpc -o InputSlot=Tray3 -o PageSize=Letter -o Duplex=None -o landscape'  # Prints on laser color printer, single-sided
alias lpcdl='/usr/bin/lpr -P lpc -o InputSlot=Tray3 -o PageSize=Letter -o Duplex=DuplexNoTumble -o landscape'  #Prints on laser color printer, double-sided
alias lpbsl='/usr/bin/lpr -P lp -o InputSlot=Tray_2 -o OutputBin=PrinterDefault -o Resolution=600x1200dpi -o PageSize=Letter -o Duplex=None -o landscape' # Prints in black&white, single-sided
alias lpbdl='/usr/bin/lpr -P lp -o InputSlot=Tray_2 -o OutputBin=PrinterDefault -o Resolution=600x1200dpi -o PageSize=Letter -o Duplex=DuplexNoTumble -o landscape' # Prints in black&white, double-sided

alias m="more"
#alias matlab="matlabR2010b"
alias mo="make MPI=OFF -j8"
alias mv='mv -i'      # Move, but ask me first
alias mymerge='git-mergetool --tool xxdiff'
alias myzip='tar -cvzf'   # use as "myzip filearchive.tar.gz  foldername/"
alias myunzip='tar -xvpzf' # extract archive, verbose, keep file permissions, unzip using gunzip, and filename to follow

alias pp='nice -19 postprocess_unsteady_data' # runs preplot on cffc data
alias ppclean='rm -f *.gplt *residual.dat *.tree *.soln'

alias sbash='source ~/.bashrc' # refresh terminal with new .bashrc file
alias sc='screen -t " "'  # attaches to a given screen session (use session PID)
alias sls='screen -ls' # lists the GNU screen sessions
alias sr='screen -r'  # attaches to a given screen session (use session PID)

alias re='reset'      # Reset the terminal
alias rm='rm -i'      # Remove, but ask me first
alias rme='rm *~ -i'  # Remove emacs backup files, but ask me first
alias rmef='rm *~ -f'  # Remove emacs backup files, but ask me first
alias rmrest='rm -f rest*' # Remove optima results files
alias rmout='rm -rf output.2012*' # Remove optima results files
#alias rename0100='rename "s/01/00/g" rest01*' # rename all rest01 files to rest00 in a directory

alias run='nice -n 19 ~/optima/optima2D/OPTIMA2D_i686 < opt.inp &' # run the optima2D code

alias t='tecplot'      # Run Tecplot
alias tf='tail --lines=500 -F' # run tail with 100 lines and live following
alias tp='tf *.tp' # run tail with 100 lines and live following
alias tecmac='tecplot ~/scripts/zonemacro.mcr' # run tecplot with the zone.mcr macro
alias tecmac_c='tecplot ~/scripts/zonemacro_cells.mcr' # run tecplot with the zone.mcr macro
alias tecmac_n='tecplot ~/scripts/zonemacro_nodes.mcr' # run tecplot with the zone.mcr macro
alias tg='tail -50f rest00-00.gnu'  # view the end of the optima gnuplot file
alias tg1='tail -50f rest00-01.gnu'  # view the end of the optima gnuplot file
alias tg2='tail -50f rest00-02.gnu'  # view the end of the optima gnuplot file
alias tg3='tail -50f rest00-03.gnu'  # view the end of the optima gnuplot file
alias th='tail -50f *.his'  # view the end of the optima history file
alias tree='tree -C -I "*.git"' # list all files and directories as a tree
alias treed='tree -C -d -I "*.git"' # list all directories

alias v='vim -X'
alias vi='vim -X'
alias vg='valgrind --tool=memcheck --leak-check=yes' # Execute program with valgrind debuger
alias video='xanim' # program for viewing avi files

### Mounting File Systems and SSH commands - from school computer###
alias mhpacf='cd ~/03_hpacf/ramy/'
#alias uhpacf='fusermount -u 03_hpacf/'  #Unmount your file system from school
alias hpacf='cd ~/03_hpacf; ssh fe03'
alias scinet='ssh -l rashad login.scinet.utoronto.ca'
#alias mscinet='cd ~/04_scinet; sshfs rashad login.scinet.utoronto.ca: ~/04_scinet/'
alias mscinet='cd ~; sshfs rashad@login.scinet.utoronto.ca: 04_scinet/; cd 04_scinet/'
alias uscinet='fusermount -u ~/04_scinet/'  #Unmount your file system from scinet
alias guill='ssh -X guillimin.clumeq.ca -l rashad'
alias mguill='cd ~; sshfs rashad@guillimin.clumeq.ca: 05_guill/; cd 05_guill/'
alias uguill='fusermount -u ~/05_guill/'  #Unmount your file system from scinet
#-- westgrid
alias latt='ssh -X rashad@lattice.westgrid.ca'
alias para='ssh -X rashad@parallel.westgrid.ca'
alias mwest='cd ~; sshfs rashad@parallel.westgrid.ca: 06_westgrid/; cd 06_westgrid/'
alias uwest='fusermount -u ~/06_westgrid/'  #Unmount your file system from scinet

# **********************************
#       Find and Grep Tools        *
# **********************************

# Find a file with a pattern in name:
function ff() { find . -type f -name '*'$@'*' ; }
function fe() { find . -type f -name '*'$@'' | xargs emacs; }
function fl() { find . -type f -name '*'$@'' | xargs ls -lash; }

# grep
# Make it highlight the search string
alias grep="grep --color=auto"

# Recursively searches all the files for the given string
function rgrep() { grep -irn --include="*" -- "$@" . ; }

# C++ .cc grep, only searches C++ source (.cc) files
## Current directory
function grepc() { grep -in --include="*.cc" -- "$@" * ; }
## Recursive
function rgrepc() { grep -irn --include="*.cc" -- "$@" . ; }

# C++ .h grep, only searches C++ header (.h) files
## Current directory
function greph() { grep -in --include="*.h" -- "$@" * ; }
## Recursive
function rgreph() { grep -irn --include="*.h" -- "$@" . ; }

# Fortran grep, only searches Fortran source 
## Current directory
function grepf() { grep -in --include=*.{f,F,f90,F90,inc} -- "$@" * ; }
## Recursive
function rgrepf() { grep -irn --include=*.{f,F,f90,F90,inc} -- "$@" . ; }
function gf() { grep -irn --include=*.{f,F,f90,F90,inc} --exclude-dir=unused -- "$@" . ; }
function gfc() { grep -irn --include=*.{f,F,f90,F90,inc} --exclude-dir=unused -- "call $@" . ; }
function gfs() { grep -irn --include=*.{f,F,f90,F90,inc} --exclude-dir=unused -- "subroutine $@" . ; }
function gfe() { grep -irn --include=*.{f,F,f90,F90,inc} --exclude-dir=unused -- "$@[\t ]*=[^=]" . ; }
#function gfe() { grep -irn --include="*.[fFinc]*" -- "$@[\t ]*=[^=]" . ; }

# Python grep, only searches Python source
## Current directory
function grepy() { grep -i --include="*.py" -- "$@" * ; }
## Recursive
function rgrepy() { grep -ir --include="*.py" -- "$@" . ; }

## cd and list 
function c() { cd "$@" ; l ;}

## cd and list 
function cs() { cd *"$@"* ; l ;}

# Change directory and list files
function csss(){
    # only change directory if a directory is specified
    [ -n "${1}" ] && cd $1
    lls
}

# Advanced ls function
# Counts files, subdirectories and directory size and displays details
# about files depending on the available space
function lls () {
	# count files
	echo -n "<`find . -maxdepth 1 -mindepth 1 -type f | wc -l | tr -d '[:space:]'` files>"
	# count sub-directories
	echo -n " <`find . -maxdepth 1 -mindepth 1 -type d | wc -l | tr -d '[:space:]'` dirs/>"
	# count links
	echo -n " <`find . -maxdepth 1 -mindepth 1 -type l | wc -l | tr -d '[:space:]'` links@>"
	# total disk space used by this directory and all subdirectories
	echo " <~`du -sh . 2> /dev/null | cut -f1`>"
	ROWS=`stty size | cut -d' ' -f1`
	FILES=`find . -maxdepth 1 -mindepth 1 |
	wc -l | tr -d '[:space:]'`
	# if the terminal has enough lines, do a long listing
	if [ `expr "${ROWS}" - 6` -lt "${FILES}" ]; then
		ls
	else
		ls -hlAF --full-time
	fi
}

# reverse lines of a file
function reverseFileLines () { sed '1!G;h;$!d' "$@";}
 
# Displays the top ten biggest folders/files in the current directory
alias topten='du -sm $(/bin/ls -A) | sort -rn | head -10'

# END OF CUSTOM FUNCTIONS AND ALIASES


# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Editor
export EDITOR="vi"

# **********************************
#  Add ~/usr/local/bin to PATH     *
# **********************************
PATH=~/usr/local/bin:$PATH

# **********************************
#  Add EMACS executables to PATH   *
# **********************************
PATH=~/usr/local/emacs-23.3/src/:$PATH


# **********************************
#  Add GIT to PATH
# **********************************
#PATH=$HOME/usr/local/git-1.7.4.1:$PATH
#PATH=$HOME/usr/local/git-1.7.4.1/git-gui:$PATH

# **********************************
#  Add VIM to PATH
# **********************************
#PATH=$HOME/usr/local/vim73/src:$PATH
#export VIMRUNTIME=~/usr/local/vim73/runtime

# **********************************
#  Add GNU screen  to PATH
# **********************************
#PATH=$HOME/usr/local/screen/src:$PATH

# **********************************
#             Scripts              *
# **********************************
PATH=~/scripts:$PATH
PATH=~/scripts/ConvergenceOrder:$PATH

# **********************************
#             CFFC                 *
# **********************************
export CFFC_Path=~/CFFC
PATH=$CFFC_Path/src_2D/:$PATH
PATH=$CFFC_Path/src_3D/:$PATH
PATH=$CFFC_Path/bin:${HOME}/bin:$PATH



# **********************************
#  Add PDFStudio to PATH           *
# **********************************
# PATH=$PATH:~/usr/local/PDFStudio_650

# **********************************
#  Add MSES executables to PATH    *
# **********************************
PATH=~/MSES/myMses/bin:$PATH

# **********************************
#  Add XFOIL executables to PATH   *
# **********************************
PATH=~/01_thesis/Xfoil/bin:$PATH

# **********************************
#             Latex             *
# **********************************
PATH=~/scripts/LatexProject:$PATH

if [ '$HOST != oddjob.utias.utoronto.ca' ]; then
     BIBINPUTS=.:${HOME}/thesis/BibTeX_Database:${BIBINPUTS}
     export BIBINPUTS
fi

# **********************************
#       OPTIMA 2D 
# **********************************

#export CVSROOT=/nfs/carv/d1/people/optima
#export CVS_RSH=/usr/bin/ssh
#export CVSEDITOR=emacs

# add grid utilities to path
PATH=~/optima-grids/grid_utils:$PATH

# prevent core dumps and segmentation faults
ulimit -c 0                   # limit coredumpsize 0
#ulimit -m unlimited           # limit memoryuse unlimited
ulimit -s unlimited           # limit stacksize unlimited
export F_UFMTENDIAN=big       # setenv F_UFMTENDIAN big

# add compilers to path
PATH=/usr2/local_net2/mpich2-1.3.2p1/intel-11.1/bin/:$PATH
source /usr2/local_net2/intel/Compiler/11.1/073/bin/intel64/iccvars_intel64.sh intel64
source /usr2/local_net2/intel/Compiler/11.1/073/bin/intel64/ifortvars_intel64.sh intel64
#source /usr2/local_net1/intel/compiler80/bin/ifortvars.sh
#source /usr2/local_net1/intel/compiler80/bin/iccvars.sh
#PATH=/usr2/local_net2/intel/Compiler/11.1/073/mkl/lib/em64t/:$PATH
#PATH=/usr2/local_net2/intel/Compiler/11.1/073/lib/intel64/:$PATH

# Location of X11 library
XLIB_PATH=-L/usr/X11R6/lib

#LD_LIBRARY_PATH=/nfs/kris/usr2/local_net1/intel/mkl72/lib/32:${LD_LIBRARY_PATH}
#export LD_LIBRARY_PATH
export LD_LIBRARY_PATH=$HOME/usr/local/lib:$LD_LIBRARY_PATH

PATH=$HOME/usr/local/bin:$PATH
export PATH

# MSES
export XPLOT11_BACKGROUND=black

# **********************************
#       JAVA Path and bin          *
# **********************************
#export JAVA_HOME=~/usr/bin/gij

# **********************************
#  Firefox  clean-up               *
# **********************************
alias CleanFirefox='rm -f .mozilla/firefox/3rd8d8wt.default/.parentlock .mozilla/firefox/h4p7qmwr.default/lock  .mozilla/firefox/3rd8d8wt.default/places.sqlite .mozilla/firefox/3rd8d8wt.default/places.sqlite-journal'

# **********************************
#  Thunderbird  clean-up           *
# **********************************
alias CleanThunderbird='rm -f  .thunderbird/8ii90idi.default/.parentlock .thunderbird/5yd1918j.default/lock'
