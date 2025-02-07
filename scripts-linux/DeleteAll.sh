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
TEXTURE05=Banjo-Kazooie
TEXTURE06=CASTLEVANIA2

clear
if [ -d "/home/$USER/.local/share/mupen64plus/hires_texture/" ]; then
cd /home/$USER/.local/share/mupen64plus/hires_texture/
echo "Deleting All Textures..."
sleep 2
#THIS IS AN EXAMPLE OF THIS SECTION
#    if [ -d "/home/$USER/.local/share/mupen64plus/hires_texture/$TEXTURE01/" ]; then
#        rm -r "/home/$USER/.local/share/mupen64plus/hires_texture/$TEXTURE01/"
#        echo "$TEXTURE01 Textures Deleted"
#        sleep 1
#    else
#        echo "$TEXTURE01 Textures aren't present, nothing to delete."
#        sleep 1
#    fi

    #TEXTURE01
    if [ -d "/home/$USER/.local/share/mupen64plus/hires_texture/$TEXTURE01/" ]; then
        rm -r "/home/$USER/.local/share/mupen64plus/hires_texture/$TEXTURE01/"
        echo "$TEXTURE01 Textures Deleted"
        sleep 1
    else
        echo "$TEXTURE01 Textures aren't present, nothing to delete."
        sleep 1
    fi

    #TEXTURE022
    if [ -d "/home/$USER/.local/share/mupen64plus/hires_texture/$TEXTURE022/" ]; then
        rm -r "/home/$USER/.local/share/mupen64plus/hires_texture/$TEXTURE022/"
        echo "$TEXTURE022 Textures Deleted."
        sleep 1
    else
        echo "$TEXTURE022 Textures aren't present, nothing to delete."
        sleep 1

    fi

    #TEXTURE032
    if [ -d "/home/$USER/.local/share/mupen64plus/hires_texture/$TEXTURE032/" ]; then
        rm -r "/home/$USER/.local/share/mupen64plus/hires_texture/$TEXTURE032/"
        echo "$TEXTURE032 Textures Deleted."
        sleep 1
    else
        echo "$TEXTURE032 Textures aren't present, nothing to delete."
        sleep 1
    fi

    #TEXTURE042
    if [ -d "/home/$USER/.local/share/mupen64plus/hires_texture/$TEXTURE042/" ]; then
        rm -r "/home/$USER/.local/share/mupen64plus/hires_texture/$TEXTURE042/"
        echo "$TEXTURE042 Textures Deleted."
        sleep 1
    else
        echo "$TEXTURE042 Textures aren't present, nothing to delete."
        sleep 1
    fi
    
    #TEXTURE05
    if [ -d "/home/$USER/.local/share/mupen64plus/hires_texture/$TEXTURE05/" ]; then
        rm -r "/home/$USER/.local/share/mupen64plus/hires_texture/$TEXTURE05/"
        echo "$TEXTURE05 Textures Deleted"
        sleep 1
    else
        echo "$TEXTURE05 Textures aren't present, nothing to delete."
        sleep 1
    fi

    #TEXTURE06
    if [ -d "/home/$USER/.local/share/mupen64plus/hires_texture/$TEXTURE06/" ]; then
        rm -r "/home/$USER/.local/share/mupen64plus/hires_texture/$TEXTURE06/"
        echo "$TEXTURE06 Textures Deleted"
        sleep 1
    else
        echo "$TEXTURE06 Textures aren't present, nothing to delete."
        sleep 1
    fi
    
    echo "APPLIED!!!"
else
    echo "Textures directory does't exist."
    echo "Aborting..."
    sleep 4
fi
