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
echo "Downloading All Textures..."
sleep 2
#THIS IS AN EXAMPLE OF THIS SECTION
#    if [ -d "/home/pi/.local/share/mupen64plus/hires_texture/$TEXTURE01/" ]; then
#        rm -r "/home/pi/.local/share/mupen64plus/hires_texture/$TEXTURE01/"
#        /home/pi/scripts/github-downloader.sh https://github.com/julenvitoria/FreeplayGBA-N64HDTextures/tree/master/hires_texture/$TEXTURE01
#        mv $TEXTURE01 "$TEXTURE2" #USE IF ONLY NEEDED
#        echo "$TEXTURE01 Textures Downloaded"
#        sleep 4
#    else
#        /home/pi/scripts/github-downloader.sh https://github.com/julenvitoria/FreeplayGBA-N64HDTextures/tree/master/hires_texture/$TEXTURE01
#        echo "$TEXTURE01 Textures Downloaded"
#        sleep 4
#    fi

    #TEXTURE01
    if [ -d "/home/pi/.local/share/mupen64plus/hires_texture/$TEXTURE01/" ]; then
        rm -r "/home/pi/.local/share/mupen64plus/hires_texture/$TEXTURE01/"
        /home/pi/scripts/github-downloader.sh https://github.com/julenvitoria/FreeplayGBA-N64HDTextures/tree/master/hires_texture/$TEXTURE01
        echo "$TEXTURE01 Textures Downloaded"
        sleep 4
    else
        /home/pi/scripts/github-downloader.sh https://github.com/julenvitoria/FreeplayGBA-N64HDTextures/tree/master/hires_texture/$TEXTURE01
        echo "$TEXTURE01 Textures Downloaded"
        sleep 4
    fi

    #TEXTURE022
    if [ -d "/home/pi/.local/share/mupen64plus/hires_texture/$TEXTURE022/" ]; then
        rm -r "/home/pi/.local/share/mupen64plus/hires_texture/$TEXTURE022/"
        /home/pi/scripts/github-downloader.sh https://github.com/julenvitoria/FreeplayGBA-N64HDTextures/tree/master/hires_texture/$TEXTURE021
        mv $TEXTURE021 "$TEXTURE022" #USE IF ONLY NEEDED
        echo "$TEXTURE022 Textures Downloaded"
        sleep 4
    else
        /home/pi/scripts/github-downloader.sh https://github.com/julenvitoria/FreeplayGBA-N64HDTextures/tree/master/hires_texture/$TEXTURE021
        mv $TEXTURE021 "$TEXTURE022" #USE IF ONLY NEEDED
        echo "$TEXTURE022 Textures Downloaded"
        sleep 4

    fi

    #TEXTURE032
    if [ -d "/home/pi/.local/share/mupen64plus/hires_texture/$TEXTURE032/" ]; then
        rm -r "/home/pi/.local/share/mupen64plus/hires_texture/$TEXTURE032/"
        /home/pi/scripts/github-downloader.sh https://github.com/julenvitoria/FreeplayGBA-N64HDTextures/tree/master/hires_texture/$TEXTURE031
        mv $TEXTURE031 "$TEXTURE032" #USE IF ONLY NEEDED
        echo "$TEXTURE032 Textures Downloaded"
        sleep 4
    else
        /home/pi/scripts/github-downloader.sh https://github.com/julenvitoria/FreeplayGBA-N64HDTextures/tree/master/hires_texture/$TEXTURE031
        mv $TEXTURE031 "$TEXTURE032" #USE IF ONLY NEEDED
        echo "$TEXTURE032 Textures Downloaded"
        sleep 4
    fi

    #TEXTURE042
    if [ -d "/home/pi/.local/share/mupen64plus/hires_texture/$TEXTURE042/" ]; then
        rm -r "/home/pi/.local/share/mupen64plus/hires_texture/$TEXTURE042/"
        /home/pi/scripts/github-downloader.sh https://github.com/julenvitoria/FreeplayGBA-N64HDTextures/tree/master/hires_texture/$TEXTURE041
        mv $TEXTURE041 "$TEXTURE042" #USE IF ONLY NEEDED
        echo "$TEXTURE042 Textures Downloaded"
        sleep 4
    else
        /home/pi/scripts/github-downloader.sh https://github.com/julenvitoria/FreeplayGBA-N64HDTextures/tree/master/hires_texture/$TEXTURE041
        mv $TEXTURE041 "$TEXTURE042" #USE IF ONLY NEEDED
        echo "$TEXTURE042 Textures Downloaded"
        sleep 4
    fi

    echo "APPLIED!!!"
else
    echo "Textures directory does't exist."
    echo "Aborting..."
    sleep 4
fi
