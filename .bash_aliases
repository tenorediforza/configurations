#THIS IS THE ALIAS AND CONFIGURATION LIST
set -o noclobber

#Automation
alias respaldar='cd /tmp/test/ && tar -czvf $(date +"%A_%B_%d_%Y").tar.gz * && mv *gz $HOME/Desktop/Work'

#Converters
spaces() { for file in *; do mv "$file" `echo $file | tr ' ' '_'` ; done }

PS1="\[\033[1;36m\]\u\[\033[1;31m\]@\[\033[1;32m\]\h:\[\033[1;35m\]\w\[\033[1;31m\]\$\[\033[0m\] "
#PS1='\[\033[1;36m\]\u\[\033[1;31m\]@\[\033[1;32m\]\h:\[\033[1;35m\]\w\[\033[1;31m\]\$\[\033[0m\] '

#Easy edition easy access
alias add="vim $HOME/.bash_aliases"
alias cdbin='cd /usr/local/bin && ls -lh'
alias cdtmp='mkdir -p /tmp/test && cd /tmp/test/'
alias tmuxconf='vim $HOME/.tmux.conf'
alias tester="mkdir -p /tmp/test/ && cd /tmp/test/"
alias copydate="date | xclip -selection clipboard"
alias lsgrep="ls -lh | grep -i"
alias fecha="LC_TIME=es_ES.UTF-8 date"
alias tsstatus="tailscale status | grep -v offline"

#Installers, cleaners, etc
alias c='sudo apt clean && sudo apt autoclean && sudo apt autoremove'
alias cr='sudo -E crontab -u root -e'
alias i="sudo apt-get install"
alias broken="sudo apt --fix-broken install"
alias kept="sudo apt install --only-upgrade"		#"The following upgrades have been deferred due to phasing" or "...kept back:"
alias gpgkeys="ls -lh /etc/apt/sources.list.d"		#Show sources list added manually
alias remove="sudo apt-get remove --purge"

#Killing
alias pdfkill='kill $(pgrep evince) && kill $(pgrep xpdf)'
alias firefoxkill='kill $(pgrep firefox)'

#List_Show
alias climah='curl wttr.in/Hermosillo?M'				#Show
alias climaf='curl wttr.in/Temple+Terrace'				#the 
alias climac='curl wttr.in/Temple+Terrace?M'				#weather
alias disk='sudo fdisk -l'			#Detailed List of partitions and media
alias diskpart='sudo lsblk -o NAME,FSTYPE,SIZE,MOUNTPOINT,LABEL' 	#Partitions, size, file type, etc
alias extip='curl icanhazip.com'
alias extip1="sudo lynx -dump http://whatismyip.akamai.com | awk '{print $1}'"
alias hoy='date +"%A, %B %d, %Y"'
alias listusers="cut -d: -f1,3 /etc/passwd | egrep ':[0-9]{4}$' | cut -d: -f1"		#List the human users on the system
alias lsa="ls -halt"
alias lspath='ls -ld $PWD/*'
alias kernel='dpkg --list | grep -E -i --color '\''linux-image|linux-headers'\''' #Installed kernel versions
alias pyv='python3 --version' #Version of python
alias quien='uname -r && date && curl icanhazip.com && hostname -I && who && hostnamectl && lsb_release -a | grep Codename'
alias sessiontype='echo $XDG_SESSION_TYPE'	#Check the sessiontype
alias sys='systemctl list-units  --type=service  --state=running'
alias s="speedtest-cli --secure --simple"
alias tm='sudo dmidecode -t 2' #Bios/Motherboard version
alias t='timedatectl'
alias v='cat /etc/os-release && cat /proc/version'  #Longlist ubuntu version
alias monitor_name="grep -i 'monitor name' /var/log/syslog"		#Works in Ubuntu
alias CPU="cat /proc/cpuinfo | grep 'model name' | uniq"
alias listsessions="tmux ls; screen -ls"
alias MB="sudo dmidecode -t 2"
alias syslist="systemctl list-units --type=service --state=running"

#Kill commands
alias onekokill='kill $(pgrep oneko)'

#Remote sessions / Connections
alias sshadd='vim $HOME/.ssh/config'
alias sshlog="sudo netstat -atnp | grep 'ESTABLISHED.*sshd'"	#Search for ssh connections established
alias sshtail='tail -f /var/log/auth.log'
alias sshconfig="sudo vim /etc/ssh/sshd_config && sudo systemctl restart ssh"
alias sshlist="ls -la ~/.ssh"
alias sshrestart="sudo systemctl restart ssh"
alias stopvpn="sudo pkill openvpn"

#Scripts linked

#Mounting partitions:
alias windows="sudo mount /dev/nvme0n1p6 /media/windows/"

alias b="source $HOME/.bashrc"
alias bashgui="gedit $HOME/.bash_aliases" 	#Show .bashrc file in GUI text editor
alias respaldo='cat $HOME/.bash_aliases >> $HOME/Documents/respaldo.txt' 	#Creates a backup of bashrc with the name respaldo file
alias h='history | grep'
alias A='cat -n $HOME/.bash_aliases $HOME/.bashrc | grep -i'
alias ba='cat -n $HOME/.bash_aliases | grep'

#Practicing, generating data, analyzing, etc

#Networking
alias grepip='grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}"' 	#Grep for IP formats as well as non vailid IP addresss. #grepip file_extension
alias myip="wget -4 -qO - icanhazip.com || (curl ifconfig.me; echo)"

alias dirs='dirs -v -l'
alias tailog="cd $HOME/Documents/ && tail -f logs.txt"	#Practical when updating a system and looking the updates live.
alias wi='whatis'
alias tmphist='history >> /tmp/hist.txt && lsa'

#Settings:
alias noclobber="set -o noclobber"	#It can keep you from accidentally destroying your existing files by redirecting input over an already-existing file.

#youtube downloaders (yt-dlp command)
alias ytbest="yt-dlp -f bv*+ba" 			#Incomplete command. Needs url
alias ytupdate="pip install --upgrade yt-dlp"		#Incomplete command. Needs url
alias ytmp3="yt-dlp -x --audio-format mp3"		#Incomplete command. Needs url
alias ytwav="yt-dlp -x --audio-format wav"		#Incomplete command. Needs url

#Variables

export VISUAL=vim
export EDITOR='$VISUAL'
#export LD_LIBRARY_PATH=/usr/local/mylib

 ###Keyboard Shortcuts commands####
#firefox --private-window https://duckduckgo.com/
#firefox --private-window https://www.youtube.com
#google-chrome --incognito http://www.duckduckgo.com
#gnome-terminal --full-screen
#gnome-text-editor
#killall firefox
#gnome-terminal -- sh -c 'watch "ls /tmp -lht | grep -v systemd"'       #Live commands in terminal
		#Eliminar después
