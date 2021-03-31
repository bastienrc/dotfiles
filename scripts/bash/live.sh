# Installation Post Install
aptitude update && aptitude upgrade

# Pilote graphique
# glxinfo | grep -i rendering
aptitude install glx-alternative-fglrx mesa-utils

# Wifi
aptitude install firmware-b43-installer wicd

# Outils
aptitude install binutils hddtemp

# Mon environement de bureau
aptitude install slim openbox obmenu obconf nitrogen tint2 conky gmrun thunar

# Pour les app GTK2
aptitude install murine-themes

# geany vim-gtk libreoffice
# iceweasel iceweasel-l10n-fr icedove icedove-l10n-fr
# git xchat weex openjdk-6-jre

# Sudo
adduser $user sudo

# Terminal
aptitude install
  rxvt-unicode-256color     .Xressources .Xdefault
  zsh                       .zshrc
chsh => "/bin/zsh"
  screen                    .screenrc

# Son
Volumeicon-alsa

# Archive
xarchiver

# autres
pondus
flashplugin-nonfree
