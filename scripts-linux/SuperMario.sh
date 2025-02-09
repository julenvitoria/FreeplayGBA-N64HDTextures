#!/bin/bash
#By julenvitoria

#Para hacer que descargue cualquier otra textura simplemente cambiar el nombre del campo NAME_OF_TEXTURE_ON_GITHUB por el que sea necesario y el de GITHUB por el github donde se encuentra
#Si el directorio final contiene espacios en su nombre cambiar TEXTURE_DIRECTORY_WITH_SPACES sin quitar las comillas por el nombre con sus espacios para que se cambie a ese nombre

#Change NAME_OF_TEXTURE_ON_GITHUB with the name of the texture on github you desire
#Change TEXTURE_DIRECTORY_WITH_SPACES with the name of the final textures directory with spaces

TEXTURE=SUPERMARIO64
TEXTURE2="SUPER MARIO 64"
GITHUB=N64HDTextures

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
    cd /home/$USER/RetroPie
    echo "Downloading $TEXTURE textures..."
    sleep 2
    if [ ! -d "/home/$USER/RetroPie/FreeplayGBA-$GITHUB/" ]; then
       rm -R /home/$USER/RetroPie/FreeplayGBA-$GITHUB
    fi
    git clone https://github.com/julenvitoria/FreeplayGBA-$GITHUB/
    if [ -d "/home/$USER/.local/share/mupen64plus/hires_texture/$TEXTURE/" ]; then
        rm -r /home/$USER/.local/share/mupen64plus/hires_texture/$TEXTURE/
        cp -R FreeplayGBA-$GITHUB/hires_texture/$TEXTURE /home/$USER/.local/share/mupen64plus/hires_texture/$TEXTURE2
        rm -R FreeplayGBA-$GITHUB
        echo "$TEXTURE Textures Downloaded"
        sleep 4
    else
        cp -R FreeplayGBA-$GITHUB/hires_texture/$TEXTURE /home/$USER/.local/share/mupen64plus/hires_texture/$TEXTURE2
        rm -R FreeplayGBA-$GITHUB
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
    
    if [ -d "/home/$USER/.local/share/mupen64plus/hires_texture/$TEXTURE2/" ]; then
        echo "Textures directory detected"
        echo "Deleting..."
        sleep 2
        rm -r "/home/$USER/.local/share/mupen64plus/hires_texture/$TEXTURE2/"
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

