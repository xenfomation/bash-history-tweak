# bash-history-tweak

# REVISION
25 JAN 2015, @xenfomation
thexenfomation@gmail.com | @xenfomation

# WHAT IS THIS?
A series of tweaks to the global BASH profile and HISTORY options: intended for XenServer(s) running 6.0.2 or higher.

# WHY WAS THIS MADE?
The reason behind all this is, at the moment, XenServer does not use shadow passwords and essentially everything is ran as "root".  In an environment where many may have these types of credentials, it is nice to know WHO, WHAT, WHEN, WHERE, and FROM to determine any negative "WHY".

# WHAT DOES IT DO?
For XenServer, the "BASH Tweak" is intended to do the following:
* Add granularity to the normal "history" command, such as time, TTY, etc
* Add logging of user history to Syslog
* Adjust the output of the "history" command to identify, quickly, root based actions

# HOW DO I USE IT?
* Download the bash-history-tweak.sh file
* Copy its contents and append them to THE END of /etc/bashrc
* Exit the current BASH session by typing exit
* Log back in


