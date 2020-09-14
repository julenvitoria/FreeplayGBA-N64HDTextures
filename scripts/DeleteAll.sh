#!/bin/bash
#By julenvitoria

#THIS IS AN EXAMPLE OF THIS SECTION
#TEXTURE=NAME_OF_TEXTURE

TEXTURE01=MARIOKART64
TEXTURE021=SUPERMARIO64
TEXTURE022="SUPER MARIO 64"
TEXTURE031=THELEGENDOFZELDA
TEXTURE032="THE LEGEND OF ZELDA"
TEXTURE041=ZELDAMAJORASMASK
TEXTURE042="ZELDA MAJORA'S MASK"

clear
if [ -d "/home/pi/.local/share/mupen64plus/hires_texture/" ]; then
cd /home/pi/.local/share/mupen64plus/hires_texture/
echo "Deleting All Textures..."
sleep 2
#THIS IS AN EXAMPLE OF THIS SECTION
#    if [ -d "/home/pi/.local/share/mupen64plus/hires_texture/$TEXTURE01/" ]; then
#        rm -r "/home/pi/.local/share/mupen64plus/hires_texture/$TEXTURE01/"
#        echo "$TEXTURE01 Textures Deleted"
#        sleep 4
#    else
#        echo "$TEXTURE01 Textures aren't present, nothing to delete."
#        sleep 4
#    fi

    #TEXTURE01
    if [ -d "/home/pi/.local/share/mupen64plus/hires_texture/$TEXTURE01/" ]; then
        rm -r "/home/pi/.local/share/mupen64plus/hires_texture/$TEXTURE01/"
        echo "$TEXTURE01 Textures Deleted"
        sleep 4
    else
        echo "$TEXTURE01 Textures aren't present, nothing to delete."
        sleep 4
    fi

    #TEXTURE022
    if [ -d "/home/pi/.local/share/mupen64plus/hires_texture/$TEXTURE022/" ]; then
        rm -r "/home/pi/.local/share/mupen64plus/hires_texture/$TEXTURE022/"
        echo "$TEXTURE022 Textures Deleted."
        sleep 4
    else
        echo "$TEXTURE022 Textures aren't present, nothing to delete."
        sleep 4

    fi

    #TEXTURE032
    if [ -d "/home/pi/.local/share/mupen64plus/hires_texture/$TEXTURE032/" ]; then
        rm -r "/home/pi/.local/share/mupen64plus/hires_texture/$TEXTURE032/"
        echo "$TEXTURE032 Textures Deleted."
        sleep 4
    else
        echo "$TEXTURE032 Textures aren't present, nothing to delete."
        sleep 4
    fi

    #TEXTURE042
    if [ -d "/home/pi/.local/share/mupen64plus/hires_texture/$TEXTURE042/" ]; then
        rm -r "/home/pi/.local/share/mupen64plus/hires_texture/$TEXTURE042/"
        echo "$TEXTURE042 Textures Deleted."
        sleep 4
    else
        echo "$TEXTURE042 Textures aren't present, nothing to delete."
        sleep 4
    fi

    echo "APPLIED!!!"
else
    echo "Textures directory does't exist."
    echo "Aborting..."
    sleep 4
fi