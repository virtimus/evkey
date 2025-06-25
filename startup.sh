#!/bin/bash

sudo mkdir -p /dev/input/evkey
sudo chown $USER /dev/input/evkey
#sudo mkdir -p /dev/evkey-shortcuts
homeDir=~
sudo mkdir -p /dev/input/evkey-shortcuts
if [ -e $homeDir/evkey-shortcuts ]; then 
   sudo cp $homeDir/evkey-shortcuts/* /dev/input/evkey-shortcuts/
sudo chown $USER /dev/input/evkey-shortcuts

fi
#cd /src/evkey && sudo nice -n19 ./evkey simple cpulimit -l 50 --
#cd /src/evkey && sudo nice -n19 ./evkey simple
sudo ln -sf /dev/input/by-id/*-event-kbd /dev/input/kbd
sudo chown $USER /dev/input/kbd

cd /src/evkey
./evkey /dev/input/kbd &

#read -p "Press enter to continue"



