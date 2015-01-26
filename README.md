# bash-history-tweak
25 JAN 2015, @xenfomation
thexenfomation@gmail.com | http://xenfomation.noip.me

WHAT IS THIS?
~~~~~~~~~~~~~
A series of tweaks to the global BASH profile and HISTORY options: intended for XenServer(s) running 6.0.2 or higher.

WHAT DOES IT DO?
~~~~~~~~~~~~~~~~
For XenServer, the "BASH & HISTORY Tweaks" are intended to do the following:
- Add logging of user history to Syslog
- Adjust BASH color usage as so the blue coloring of directories is no black-on-white, followed by a trailing "/"
- Ensure executables have a trailing asterisk
- Ensure user history is recorded to Syslog with a time stamp, user access method, and command executed

In short, this will effectively make a backup of AND replace the following files while adding a bit of details for
low-level audit trailing:
- /etc/DIR_COLORS
- /etc/bashrc

HOW DO I USE IT?
~~~~~~~~~~~~~~~~
Download the bash-history-tweak.tar file.
Upload it to the /root/ directory of each XenServer.
Execute tar -xvf bash-history-tweak.tar (creating a sub-directory of "bash-history-tweak/")
Execute the install.sh script (or uninstaller if you want to remove the changes) by executing:
  cd bash-history-tweak/
  ./install.sh
Exit the current BASH session by typing exit
Log back in

WHY WAS THIS MADE?
~~~~~~~~~~~~~~~~~~
The reason behind all this is, at the moment, XenServer does not use shadow passwords and essentially everything is ran as "root".  In an environment where many may have these types of credentials, it is nice to know WHO, WHAT, WHEN, WHERE, and FROM to determine any negative "WHY".

