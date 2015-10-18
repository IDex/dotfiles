if [ -f /etc/bash_completion ]; then
	    . /etc/bash_completion
fi

xhost +local:root > /dev/null 2>&1
export PATH="/home/ide/.nix-profile/bin:/home/ide/.nix-profile/sbin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/ide/.gem/ruby/2.1.0/bin:/home/ide/software/matlab/bin"

#History
export HISTSIZE=1000000000
#SAVEHIST=1000000000
export HISTCONTROL=ignoreboth
shopt -s histappend

export TERMINAL="xfce4-terminal"
export EDITOR="vim"
export VISUAL="vim"
#Alias
SCRIPTS="~/git/scripts"
alias alarm="python $SCRIPTS/alarm.py"
alias sank="python ~/sankaku.py"
alias gits="git status"
alias irc="ssh itajari1@kosh.aalto.fi"
alias f="fish"
alias z="zsh"
alias systectl="systemctl"
alias u='sudo pacman -Syu'
alias i='sudo pacman -S'
alias r='sudo pacman -Rs'
alias y='yaourt -S'
alias yu='yaourt -Syua'
alias mkdir='mkdir -p'
alias rm='rm -v'
alias atclean='for i in $(atq | cut -f 1); do atrm $i; done'
alias uutiset="yle-dl --latestepisode http://areena.yle.fi/tv/1790757 -o - | mplayer -"
alias mpl="find ./*.* -print > playlist && mplayer -playlist playlist"
alias mplp="mplayer -playlist playlist"
alias makealias="nano ~/.bashrc"
alias android-connect="mtpfs -o allow_other ~/mount/Nexus7"
alias android-disconnect="fusermount -u ~/mount/Nexus7"
alias nanoc="nano -ET4"
alias picp="rsync -av --exclude '*.part' --remove-source-files pi@192.168.100.23:/home/pi/Downloads/ ~/flexd/new"
alias cpil="ssh pi@192.168.100.23 -p 22"
alias cpila="ssh pi@192.168.100.23 -p 20002"
alias yv="youtube-viewer"
alias udb="sudo updatedb"
alias tmis="transgui & transmission-daemon -f"
alias cide="ssh ide@192.168.100.23"
alias synca="rsync -avz --exclude '*.part' ide@192.168.100.23:/home/ide/Anime/9TMP/ ~/Anime/9tmp/"
alias cpi="ssh pi@88.112.92.242 -p 20002"
alias zipper="mv ~/Downloads/*.zip ~/Downloads/zips/"
alias noapm="sudo hdparm -B 255 /dev/sda"
alias fogm="~/Downloads/ForgottenMyths_linux/Forgotten\ Myths.x86"
alias ardis="sudo ~/aalto/sähköpaja/teensy/arduino-1.0.5/arduino"
alias hdp="sudo hdparm -B 255 /dev/sda"
alias sorter="$SCRIPTS/filemover.py"
alias nfsenable="sudo systemctl start rpc-idmapd ; sudo systemctl start rpc-mountd"
#AliasE
PROMPT_COMMAND="$PROMPT_COMMAND; pwd > ~/.last_dir"
#export SAGE_BROWSER="/usr/local/bin/google-chrome-study"

complete -cf sudo

shopt -s cdspell
shopt -s checkwinsize
shopt -s cmdhist
shopt -s dotglob
shopt -s expand_aliases
shopt -s extglob
shopt -s histappend
shopt -s hostcomplete
shopt -s nocaseglob

export HISTSIZE=10000
export HISTFILESIZE=${HISTSIZE}
export HISTCONTROL=ignoreboth

alias ls='ls --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias ll='ls -l --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias la='ls -la --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias grep='grep --color=tty -d skip'
alias cp="cp -i"                          # confirm before overwriting something
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias np='nano PKGBUILD'

# ex - archive extractor
# usage: ex <file>
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1     ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

#Funkcs
booru(){
cd ~/git/BatchBooruDownloader/
python BatchBooru.py $1 $2
}
bbackup(){
backdir="$HOME/Dropbox/Linux/backup/`date --iso-8601`"
echo $backdir
mkdir $backdir
pacman -Qe > $backdir/pacqe
pacman -Qem > $backdir/pacqem
cp $HOME/.bashrc $backdir/bashrc
cp $HOME/.conkyrc $backdir/conkyrc
cp -r ~/projects $backdir/
cp -r ~/.i3 $backdir/
cp -r ~/.mplayer/config $backdir/mplayer
cp -r ~/.mpv/ $backdir/
cp -r ~/.purple $backdir/purple
echo "Backup Successful"
}
pxclean () {
mv ~/Downloads/*.jpg ~/Dump/dl-folder-tmp/
mv ~/Downloads/*.png ~/Dump/dl-folder-tmp/
mv ~/Downloads/*.gif ~/Dump/dl-folder-tmp/
}
derper () {
mv /home/ide/Downloads/*.png ndl/
mv /home/ide/Downloads/*.jpg ndl/
mv /home/ide/Downloads/*.gif ndl/
}
chwm () { 
killall xfwm4 && i3 & killall xfce4-panel 
}
function yt {
youtube-dl -g $1 | xargs mpv
}

# prompt
PS1='[\u@\h \W]\$ '
BROWSER=/usr/bin/xdg-open

zsh
exit
