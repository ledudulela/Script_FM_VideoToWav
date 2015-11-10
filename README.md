# Script VideoToWav

Objet: A partir du gestionnaire de fichiers, extrait le son d'une vidéo et le convertit en WAV

Dépendances: avconv, zenity

--

Le script est à placer dans le répertoire /usr/local/bin/

Initialement prévu pour être exécuté en ligne de commandes, il peut également être appelé depuis le gestionnaire de fichiers.

Par exemple pour Caja, en créant un lien symbolique vers /usr/local/bin/VideoToWav.sh

dans le répertoire /home/utilisateur/.config/caja/scripts

et en nommant ce lien symbolique "Extraire l'audio (wav)", il apparaitra en faisant un
 clic-droit sur une vidéo dans Caja, un sous-menu Scripts > Extraire l'audio (wav)

*ln -s "/usr/local/bin/VideoToWav.sh" "$HOME/.config/caja/scripts/Extraire l'audio (wav)"*

--

Idem avec VideoToMp3, pour convertir en MP3

