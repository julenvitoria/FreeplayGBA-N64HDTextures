#!/bin/bash
#By julenvitoria

#Para hacer que descargue cualquier otra textura simplemente cambiar el nombre del campo TEXTURE por el que sea necesario y el de GITHUB por el github donde se encuentra
#NOTA: si el nombre de la textura tiene espacios usar el archivo skeleton2.sh

#Change NAMEOFTEXTURE with the name of the texture you desire amd GITHUB with the name of github

TEXTURE=CASTLEVANIA2
GITHUB=N64HDTextures2

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
    if [ ! -d "/home/$USER/RetroPie/FreeplayGBA-N64HDTextures/" ]; then
       rm -R /home/$USER/RetroPie/FreeplayGBA-N64HDTextures
    fi
    git clone https://github.com/julenvitoria/FreeplayGBA-$GITHUB/
    if [ -d "/home/$USER/.local/share/mupen64plus/hires_texture/$TEXTURE/" ]; then
        rm -r /home/$USER/.local/share/mupen64plus/hires_texture/$TEXTURE/
        cp -R FreeplayGBA-$GITHUB/hires_texture/$TEXTURE /home/$USER/.local/share/mupen64plus/hires_texture/
        rm -R FreeplayGBA-$GITHUB
        echo "$TEXTURE Textures Downloaded"
        sleep 4
    else
        cp -R FreeplayGBA-$GITHUB/hires_texture/$TEXTURE /home/$USER/.local/share/mupen64plus/hires_texture/
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
    
    if [ -d "/home/$USER/.local/share/mupen64plus/hires_texture/$TEXTURE/" ]; then
        echo "Textures directory detected"
        echo "Deleting..."
        sleep 2
        rm -r "/home/$USER/.local/share/mupen64plus/hires_texture/$TEXTURE/"
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

