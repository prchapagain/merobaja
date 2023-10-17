#!/bin/bash
# this script installs merobaja vst vst3 and AU plugin on mac os
echo "Do you like to install merobaja instrument plugin on your system? y/n"
read answer
if [[ $answer == y* ]]; then
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