#!/bin/bash
#By julenvitoria

#Para hacer que descargue cualquier otra textura simplemente cambiar el nombre del campo NAME_OF_TEXTURE_ON_GITHUB por el que sea necesario y el de GITHUB por el github donde se encuentra
#Si el directorio final contiene espacios en su nombre cambiar TEXTURE_DIRECTORY_WITH_SPACES sin quitar las comillas por el nombre con sus espacios para que se cambie a ese nombre

#Change NAME_OF_TEXTURE_ON_GITHUB with the name of the texture on github you desire
#Change TEXTURE_DIRECTORY_WITH_SPACES with the name of the final textures directory with spaces

TEXTURE=THELEGENDOFZELDA
TEXTURE2="THE LEGEND OF ZELDA"

INPUT=/tmp/$TEXTURE.sh.$$
dialog --backtitle "$TEXTURE HD Textures Menu" \
--title "$TEXTURE Textures" \
--ok-label Apply \
--cancel-label Exit \
--menu "Select with up/down and accept with button A: " 10 40 3 \
   1 "Download $TEXTURE Textures" \
   2 "Delete $TEXTURE Textures" 2>"${INPUT}"
menuitem=$(<"${INPUT}")
case $menuitem in
  1)clear
    cd /home/pi/.local/share/mupen64plus/hires_texture/
    echo "Downloading $TEXTURE textures..."
    sleep 2
    if [ -d "/home/pi/.local/share/mupen64plus/hires_texture/$TEXTURE2/" ]; then
        #echo "el directorio de la textura existe"
        #sleep 2
        rm -r "/home/pi/.local/share/mupen64plus/hires_texture/$TEXTURE2/"
        #echo "el directorio ha sido borrado"
        #sleep 2
        /home/pi/scripts/github-downloader.sh https://github.com/julenvitoria/FreeplayGBA-N64HDTextures/tree/master/hires_texture/$TEXTURE
        mv $TEXTURE "$TEXTURE2"
        echo "$TEXTURE Textures Downloaded"
        sleep 4
    else
        #echo "el directorio de la textura no existe"
        #sleep 2
        /home/pi/scripts/github-downloader.sh https://github.com/julenvitoria/FreeplayGBA-N64HDTextures/tree/master/hires_texture/$TEXTURE
        mv $TEXTURE "$TEXTURE2"
        echo "$TEXTURE Textures Downloaded"
        sleep 4
    fi
    clear;
    dialog --infobox "  Textures installed
Try with Mupen64Plus ;)

This Message Will Close
   In About 3 Seconds" 7 28 ; sleep 3 ;;
  2)clear
    echo "Deleting $TEXTURE HD Textures"
    echo "Please Wait..."
    sleep 2
    
    if [ -d "/home/pi/.local/share/mupen64plus/hires_texture/$TEXTURE2" ]; then
        echo "Textures directory detected"
        echo "Deleting..."
        sleep 2
        rm -r "/home/pi/.local/share/mupen64plus/hires_texture/$TEXTURE2/"
    else
        echo "Textures directory doesn't exist"
        echo "Nothing to delete..."
        sleep 2
    fi
    sleep 2 ;
dialog --infobox "      Applied!!!

This Message Will Close
   In About 3 Seconds" 7 28 ; sleep 3 ;;
esac

