#!/bin/bash
# auteur : ledudulela
# version: 1.1
# màj : 2015-11-10 21:33 
# objet: extraire en mp3 le son d'une vidéo 
# ---------------------------------------------------
OLD_IFS=$IFS
IFS='
'
for selectedFilePath in $@
do
	selectedFileType=$(file -b --mime-type "$selectedFilePath" | awk -F "/" '{print $1}')	# type du fichier à convertir (image/jpeg)
	#zenity --info --text="${selectedFileType}"		
	if [ "$selectedFileType" == "video" ] # si le fichier est de type video
	then
		filename=$(basename $selectedFilePath)
		fbase=$(basename "$selectedFilePath" | awk -F "." '{print $1}')		
		fileExt='.'$(basename "$selectedFilePath" | awk -F "." '{print $NF}') # extension du nom de fichier (dernier élément=$NF)
		cmdToExecute='avconv -y -i "'${selectedFilePath}'" -vn -f mp3 -b:a 128k "'${fbase}'.mp3"' 
		#zenity --info --text="${cmdToExecute}"		
		cmdProgress='zenity --progress --title="$fbase" --text="Extraction en cours..." --width=400 --height=40 --no-cancel --auto-close 2>/dev/null'
		eval "$cmdToExecute | $cmdProgress"
	fi
done
IFS=$OLD_IFS
#zenity --info --text="${cmdToExecute}"
exit 0
