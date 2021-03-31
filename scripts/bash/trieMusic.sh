#!/bin/bash
# Trier et classer la musique
# @scripts

# tant que le dossier a trier  n'est pas vide
# 	on selectionne le premier fichier
# 	on extrait l'artist et sa premiere lettre
# 	on scanne l'arborescence, si le repertoire a la premiere lettre n'existe par on le créer
# 	on scanne l'arborescence du dossier a la premiere lettre a la recherche d'un repertoire au nom de l'artiste
# 		s'il n'existe pas on le créer
# 		on mets le fichier dans le répertoire
# fin tant que
# affiche le message "Le dossier est vide, il n'y a plus rien à trier !!!"

###############################################################################

clear
# Récupération de la list des musiques /data/Musique/0NonTrié/
liste_fichiers=`ls test`

for fichier in $liste_fichiers
do
  if [ ! $fichier == 'trieMusic.sh' ]
  then
    echo $fichier
  fi
  #on récup la ligne
  #ligne split sur ' - ' => tmp
  #rep = $tmp[0]
  # Si le repertoire n'existe pas, on le créer
  #if [ ! -d $rep ]
  #then
  #  on le créé
  #fi
  #mv $fichier $fichier-old

done

exit
