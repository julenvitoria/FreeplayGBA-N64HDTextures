#!/bin/bash
#By julenvitoria

#THIS IS AN EXAMPLE OF THIS SECTION
#GITHUB=NAME_OF_GITHUB
#TEXTURE=NAME_OF_TEXTURE

GITHUB=N64HDTextures
GITHUB2=N64HDTextures2
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
cd /home/$USER/RetroPie
if [ -d "/home/$USER/RetroPie/FreeplayGBA-$GITHUB/" ]; then
	rm -R /home/$USER/RetroPie/FreeplayGBA-$GITHUB
fi
if [ -d "/home/$USER/RetroPie/FreeplayGBA-$GITHUB2/" ]; then
	rm -R /home/$USER/RetroPie/FreeplayGBA-$GITHUB2
fi
git clone https://github.com/julenvitoria/FreeplayGBA-$GITHUB/
git clone https://github.com/julenvitoria/FreeplayGBA-$GITHUB2/

if [ -d "/home/$USER/.local/share/mupen64plus/hires_texture/" ]; then
    rm -R /home/$USER/.local/share/mupen64plus/hires_texture
	mkdir /home/$USER/.local/share/mupen64plus/hires_texture
    cp -R FreeplayGBA-$GITHUB/hires_texture/$TEXTURE01 /home/$USER/.local/share/mupen64plus/hires_texture/
	cp -R FreeplayGBA-$GITHUB/hires_texture/$TEXTURE021 "/home/$USER/.local/share/mupen64plus/hires_texture/$TEXTURE022"
	cp -R FreeplayGBA-$GITHUB/hires_texture/$TEXTURE031 "/home/$USER/.local/share/mupen64plus/hires_texture/$TEXTURE032"
	cp -R FreeplayGBA-$GITHUB/hires_texture/$TEXTURE041 "/home/$USER/.local/share/mupen64plus/hires_texture/$TEXTURE042"
	cp -R FreeplayGBA-N64HDTextures2/hires_texture/$TEXTURE05 /home/$USER/.local/share/mupen64plus/hires_texture/
	cp -R FreeplayGBA-N64HDTextures2/hires_texture/$TEXTURE06 /home/$USER/.local/share/mupen64plus/hires_texture/
    rm -R FreeplayGBA-$GITHUB
	rm -R FreeplayGBA-$GITHUB2
    echo "Textures Downloaded"
    sleep 4
else
    echo "Textures directory does't exist"
    echo "or Mupen64Plus isn't installed."
    echo "Aborting..."
    sleep 2
fi
