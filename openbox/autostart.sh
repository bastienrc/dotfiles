#! /bin/bash

numlockx on &
#xrandr --output DVI-I-2 --pos 0x0 --mode 1600x900 --rate 60.0; &
#xrandr --output DVI-I-1 --pos 1600x0 --mode 1024x768 --rate 60.0; &
nautilus --no-desktop &
nitrogen --restore &
tint2 &
zim &
#xcompmgr -c &
conky -d &
urxvtd -f -o -q &
volumeicon &
#wicd &
#wicd-client &

## GNOME PolicyKit and Keyring
(\
/usr/lib/policykit-1-gnome/polkit-gnome-authentication-agent-1 && \
/usr/bin/gnome-keyring-daemon --start --components=ssh && \
/usr/bin/gnome-keyring-daemon --start --components=secrets && \
/usr/bin/gnome-keyring-daemon --start --components=pkcs11 && \
/usr/bin/gnome-keyring-daemon --start --components=gpg \
) &
