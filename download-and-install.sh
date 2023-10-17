#!/bin/bash
# this script installs merobaja vst vst3 and AU plugin on mac os
function askYesNo {
        QUESTION=$1
        DEFAULT=$2
        if [ "$DEFAULT" = true ]; then
                OPTIONS="[Y/n]"
                DEFAULT="y"
            else
                OPTIONS="[y/N]"
                DEFAULT="n"
        fi
        read -p "$QUESTION $OPTIONS " -n 1 -s -r INPUT
        INPUT=${INPUT:-${DEFAULT}}
        echo ${INPUT}
        if [[ "$INPUT" =~ ^[yY]$ ]]; then
            ANSWER=true
        else
            ANSWER=false
        fi
}

askYesNo "Do you like to install merobaja instrument plugin on your system?" true
DOIT=$ANSWER

if [ "$DOIT" = true ]; then
  echo "downloading......."
git clone https://github.com/khumnath/merobaja.git
cd merobaja

   sudo cp -r "mac/merobaja.component"* "/Library/Audio/Plug-Ins/Components"
   sudo cp -r "mac/merobaja.instruments"* "/Library/Audio/Plug-Ins/Components"
   sudo cp -r "mac/merobaja.vst3"* "/Library/Audio/Plug-Ins/VST"
   sudo cp -r "mac/merobaja.instruments"* "/Library/Audio/Plug-Ins/VST"
echo "plugin installed!!"  
else
    echo "good bye!!"
sleep 3
clear && printf '\e[3J'
fi