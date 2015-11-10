# Script VideoToWav

A partir du gestionnaire de fichier, extrait le son d'une vidéo et le convertit en wav

dépendances: avconv, zenity

Le script est à placer de préférence dans le répertoire /usr/local/bin/

Il peut être appelé depuis le gestionnaire de fichiers.

Par exemple pour Caja, en créant un lien symbolique vers /usr/local/bin/videotowav.sh

dans le répertoire /home/utilisateur/.config/caja/scripts

et en nommant ce lien symbolique "Extraire l'audio (wav)", il apparaitra en faisant un
 clic-droit sur une vidéo dans Caja, un sous-menu Scripts > Extraire l'audio (wav)

