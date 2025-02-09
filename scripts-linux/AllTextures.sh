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
if [ ! -d "/home/$USER/RetroPie/FreeplayGBA-N64HDTextures/" ]; then
	rm -R /home/$USER/RetroPie/FreeplayGBA-N64HDTextures
fi
git clone https://github.com/julenvitoria/FreeplayGBA-N64HDTextures/
git clone https://github.com/julenvitoria/FreeplayGBA-N64HDTextures2/

if [ -d "/home/$USER/.local/share/mupen64plus/hires_texture/" ]; then
    rm -r /home/$USER/.local/share/mupen64plus/hires_texture/
    cp -R FreeplayGBA-N64HDTextures/hires_texture/* /home/$USER/.local/share/mupen64plus/hires_texture/
	cp -R FreeplayGBA-N64HDTextures/hires_texture2/* /home/$USER/.local/share/mupen64plus/hires_texture/
    rm -R FreeplayGBA-N64HDTextures
	rm -R FreeplayGBA-N64HDTextures2
    echo "Textures Downloaded"
    sleep 4
else
    echo "Textures directory does't exist"
    echo "or Mupen64Plus isn't installed."
    echo "Aborting..."
    sleep 4
fi
