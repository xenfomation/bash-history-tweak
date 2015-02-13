

##[ HISTORY LOGGING ]########################################################
#
# ADD USER LOGGING AND HISTORY COMMAND CONTEXT FOR SOME AUDITING
# DEC 2014, JK BENEDICT
# thexenfomation@gmail.com | @xenfomation
#
#############################################################################

# Grab current user's name
export CURRENT_USER_NAME=`id -un`

# Grab current user's level of access: pts/tty/or SSH
export CURRENT_USER_TTY="local `tty`"
checkSSH=`set | grep "^SSH_CONNECTION" | wc -l`

# SET THE PROMPT
if [ "$checkSSH" == "1" ]; then
     export CURRENT_USER_TTY="ssh `set | grep "^SSH_CONNECTION" | awk {' print $1 '} | sed -rn "s/.*?='//p"`"
     export PROMPT_COMMAND='history -a >(tee -a ~/.bash_history | logger -t "HISTORY for $CURRENT_USER_NAME[$$] via $SSH_CONNECTION : ")'
else
     export CURRENT_USER_TTY
     export PROMPT_COMMAND='history -a >(tee -a ~/.bash_history | logger -t "HISTORY for $CURRENT_USER_NAME[$$] via $CURRENT_USER_TTY : ")'
fi


# SET HISTORY SETTINGS
# Lines to retain, ignore dups, time stamp, and user information
# For date variables, check out http://www.computerhope.com/unix/udate.htm 
export HISTSIZE=5000
export HISTCONTROL=ignoredups
export HISTTIMEFORMAT=`echo -e "\e[1;31m$CURRENT_USER_NAME\e[0m[$$] via \e[1;35m$CURRENT_USER_TTY\e[0m on \e[0;36m%d-%m-%y %H:%M:%S%n\e[0m       "`

