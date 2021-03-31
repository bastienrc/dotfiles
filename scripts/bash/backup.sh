#!/bin/bash
# -*- coding: UTF8 -*-
#  Auteur           : Sebastien Colbert

MediaDestination="/media/usb0/backup"

# Vérification de la présence du media de stockage
if [ ! -e "$MediaDestination" ]
then
  echo "Attention, le disque de sauvegarde n'est pas prêt"
  exit
fi

echo "Lancement de la sauvegarde"

# Fichier de configuration
cp /etc/fstab $MediaDestination
cp -r /etc/apache2/sites-available $MediaDestination
cp /etc/hosts $MediaDestination

# Home
rsync -av --del --stats --progress /home/seb $MediaDestination/home/ >> $MediaDestination/rsync-home.log

echo "Sauvegarde terminé, vérifier les logs."

############################ IDÉE - MAY BE #####################################

    #!/bin/bash
    # création d'un répertoire temporaire
    mkdir /home/monserver/SAVE
    chmod -R 777 /home/monserver/SAVE
    # récupération et compression
    tar cvfz /home/monserver/SAVE/sauve.$(date '+%d-%m-%y').tar.gz /home/monserver/www
    # droit pour la copie
    chmod -R 777 /home/monserver/SAVE
    # suppression des sauvegardes de plus de 7 jours
    rm -f  /media/nas/serverweb/sauve.$(date '+%d-%m-%y' --date '8 days ago').tar.gz
    rm -f  /media/nas/serverweb/sauve.$(date '+%d-%m-%y' --date '9 days ago').tar.gz
    rm -f  /media/nas/serverweb/sauve.$(date '+%d-%m-%y' --date '10 days ago').tar.gz
    rm -f  /media/nas/serverweb/sauve.$(date '+%d-%m-%y' --date '11 days ago').tar.gz
    rm -f  /media/nas/serverweb/sauve.$(date '+%d-%m-%y' --date '21 days ago').tar.gz
    rm -f  /media/nas/serverweb/sauve.$(date '+%d-%m-%y' --date '22 days ago').tar.gz
    rm -f  /media/nas/serverweb/sauve.$(date '+%d-%m-%y' --date '23 days ago').tar.gz
    rm -f  /media/nas/serverweb/sauve.$(date '+%d-%m-%y' --date '24 days ago').tar.gz
    #copie de la sauvegarde du jour
    chmod -R 777 /media/nas/serverweb/
    cp -a /home/monserver/SAVE/sauve.$(date '+%d-%m-%y').tar.gz /media/nas/serverweb
    #suppression de notre sauvegarde sur le serveur
    rm -R /home/monserver/SAVE


###################### Une 2eme ################################################

#!/bin/bash -v

## Vous Pouvez En Rajouter, C'est Le But !!!
files="
/etc/fstab
/etc/modules
/etc/timidity/timidity.cfg
/boot/grub/menu.lst
/etc/apt/sources.list
/etc/X11/xorg.conf
/etc/network/interfaces
"

clear

# Création Du Dossier De Sauvegarde
if [ ! -d "/media/Stockage/Backup" ]; then
    echo "/media/Stockage/Backup n'existe pas !"
    echo "Création du répertoire."
mkdir "/media/Stockage/Backup/"
else
    echo "Le répertoire $media/Stockage/Backup existe."
fi

# Création D'un Dossier Avec La Date
jour=$(date +%d-%m-%y)

if [ ! -d "/media/Stockage/Backup/$jour" ]; then
    echo "media/Stockage/Backup/$jour n'existe pas !"
    echo "Création Du Dossier Daté $jour."
mkdir "/media/Stockage/Backup/$jour"

fi

# Création D'un Sous-Répertoire Avec L'heure
heure=$(date +%H.%M.%S)
if [ ! -d "/media/Stockage/Backup/$jour/$heure" ]; then
    echo "media/Stockage/Backup/$jour/$heure n'existe pas !"
    echo "Création Du Sous Répertoire $heure."
mkdir "/media/Stockage/Backup/$jour/$heure"

fi


# Sauvegarde Des Fichiers
echo "Sauvegarde des fichiers."

for f in $files; do
    echo -n "Copie du fichier $(basename $f)"
    if [ ! -f "$f" ]; then
        echo "            [ False ]"
    else
        cp "$f" "/media/Stockage/Backup/$jour/$heure"
        echo "                [ OK ]"
    fi
done

cd /media/Stockage/Backup/$jour/$heure/

tar cvfz boot.tgz /boot
tar cvfz Backup-Home.tgz /home

sleep 5























