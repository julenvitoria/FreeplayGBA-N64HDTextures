#!/bin/bash
#By JulenSR

#THIS IS AN EXAMPLE
#
#TEXTURE01=MarioKart
#  3)clear
#    cd /home/$USER
#    if [ -d "/opt/retropie/emulators/mupen64plus/" ]; then
#        echo "Please wait..."
#        sleep 1
#        #MARIO KART 64
#        wget -O- https://raw.githubusercontent.com/julenvitoria/FreeplayGBA-N64HDTextures/master/scripts/$TEXTURE01.sh | bash
#    else
#        echo "Mupen64Plus is not installed"
#        echo "Returning menu..."
#        sleep 4
#    fi
#    #Return to main menu N64HDTextures
#    /home/$USER/RetroPie/retropiemenu/N64HDTextures.sh ;;

TEXTURE03=MarioKart
TEXTURE04=SuperMario
TEXTURE05=ZELDAMAJORASMASK
TEXTURE06=THELEGENDOFZELDA
TEXTURE07=Banjo-Kazooie
TEXTURE08=CASTLEVANIA2

TEXTURE=N64HDTextures
INPUT=/tmp/$TEXTURE.sh.$$

if [ ! -d /home/$USER/.local/share/mupen64plus/hires_texture/ ]; then
    #mkdir /home/$USER/.local/share/mupen64plus/hires_texture/
	echo "Directory for HD textures located at /home/$USER/.local/share/mpen64plus/hires_textures/"
	echo "isn't created or mupen64plus isn't installed."
	echo ""
	echo "Please install mupen64plus or create hires_textures directory."
	sleep 6
	exit 0
fi

dialog --backtitle "N64 High Definition Textures Menu" \
--title "Game Textures" \
--ok-label Apply \
--cancel-label Exit \
--menu "Select with up/down and accept with button A: " 12 40 5 \
   1 "Download All Textures" \
   2 "Delete All Textures" \
   3 "Mario Kart 64" \
   4 "Super Mario Bros 64" \
   5 "Zelda: Majora's Mask" \
   6 "Zelda: Ocarina Of Time" \
   7 "Banjo Kazooie" \
   8 "Castlevania Legacy Of Darkness" 2>"${INPUT}"
menuitem=$(<"${INPUT}")
case $menuitem in
  1)clear
    cd /home/$USER
    if [ -d "/opt/retropie/emulators/mupen64plus/" ]; then
        echo "Please wait..."
        sleep 2
        #Download AllTextures
        wget -O- https://raw.githubusercontent.com/julenvitoria/FreeplayGBA-N64HDTextures/master/scripts/AllTextures.sh | bash
        dialog --infobox "All Textures downloaded

This Message Will Close
   In About 3 Seconds" 7 28 ; sleep 3
    else
        dialog --infobox "Mupen64Plus isn't
    installed

This Message Will Close
   In About 3 Seconds" 9 28 ; sleep 3
    fi
    clear;
    #Return to main menu N64HDTextures
    /home/$USER/RetroPie/retropiemenu/N64HDTextures.sh ;;
  2)clear
    cd /home/$USER
    if [ -d "/opt/retropie/emulators/mupen64plus/" ]; then
        echo "Please Wait..."
        sleep 2
        #Download DeleteAll
        wget -O- https://raw.githubusercontent.com/julenvitoria/FreeplayGBA-N64HDTextures/master/scripts/DeleteAll.sh | bash
        dialog --infobox "  All Textures deleted

This Message Will Close
   In About 3 Seconds" 7 28 ; sleep 3
    else
        dialog --infobox "Mupen64Plus isn't
    installed

This Message Will Close
   In About 3 Seconds" 9 28 ; sleep 3
    fi
    clear;
    #Return to main menu N64HDTextures
    /home/$USER/RetroPie/retropiemenu/N64HDTextures.sh ;;
  3)clear
    cd /home/$USER
    if [ -d "/opt/retropie/emulators/mupen64plus/" ]; then
        echo "Please wait..."
        sleep 1
        #MARIO KART 64
        wget -O- https://raw.githubusercontent.com/julenvitoria/FreeplayGBA-N64HDTextures/master/scripts/$TEXTURE03.sh | bash
    else
        echo "Mupen64Plus is not installed"
        echo "Returning menu..."
        sleep 4
    fi
    #Return to main menu N64HDTextures
    /home/$USER/RetroPie/retropiemenu/N64HDTextures.sh ;;
  4)clear
    cd /home/$USER
    if [ -d "/opt/retropie/emulators/mupen64plus/" ]; then
        echo "Please wait..."
        sleep 1
        #SUPER MARIO 64
        wget -O- https://raw.githubusercontent.com/julenvitoria/FreeplayGBA-N64HDTextures/master/scripts/$TEXTURE04.sh | bash
    else
        echo "Mupen64Plus is not installed"
        echo "Returning menu..."
        sleep 4
    fi
    #Return to main menu N64HDTextures
    /home/$USER/RetroPie/retropiemenu/N64HDTextures.sh ;;
  5)clear
    cd /home/$USER
    if [ -d "/opt/retropie/emulators/mupen64plus/" ]; then
        echo "Please wait..."
        sleep 1
        #THE LEGEND OF ZELDA: MAJORA'S MASK
        wget -O- https://raw.githubusercontent.com/julenvitoria/FreeplayGBA-N64HDTextures/master/scripts/$TEXTURE05.sh | bash
    else
        echo "Mupen64Plus is not installed"
        echo "Returning menu..."
        sleep 4
    fi
    #Return to main menu N64HDTextures
    /home/$USER/RetroPie/retropiemenu/N64HDTextures.sh ;;
  6)clear
    cd /home/$USER
    if [ -d "/opt/retropie/emulators/mupen64plus/" ]; then
        echo "Please wait..."
        sleep 1
        #THE LEGEND OF ZELDA: OCARINA OF TIME
        wget -O- https://raw.githubusercontent.com/julenvitoria/FreeplayGBA-N64HDTextures/master/scripts/$TEXTURE06.sh | bash
    else
        echo "Mupen64Plus is not installed"
        echo "Returning menu..."
        sleep 4
    fi
    #Return to main menu N64HDTextures
    /home/$USER/RetroPie/retropiemenu/N64HDTextures.sh ;;
  7)clear
    cd /home/$USER
    if [ -d "/opt/retropie/emulators/mupen64plus/" ]; then
        echo "Please wait..."
        sleep 1
        #BANJO KAZOOIE
        wget -O- https://raw.githubusercontent.com/julenvitoria/FreeplayGBA-N64HDTextures/master/scripts/$TEXTURE07.sh | bash
    else
        echo "Mupen64Plus is not installed"
        echo "Returning menu..."
        sleep 4
    fi
    #Return to main menu N64HDTextures
    /home/$USER/RetroPie/retropiemenu/N64HDTextures.sh ;;
  8)clear
    cd /home/$USER
    if [ -d "/opt/retropie/emulators/mupen64plus/" ]; then
        echo "Please wait..."
        sleep 1
        #CASTLEVANIA LEGACY OF DARKNESS
        wget -O- https://raw.githubusercontent.com/julenvitoria/FreeplayGBA-N64HDTextures/master/scripts/$TEXTURE08.sh | bash
    else
        echo "Mupen64Plus is not installed"
        echo "Returning menu..."
        sleep 4
    fi
    #Return to main menu N64HDTextures
    /home/$USER/RetroPie/retropiemenu/N64HDTextures.sh ;;
esac
