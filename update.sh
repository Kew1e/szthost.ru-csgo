#!/bin/bash
# Author: Denis_Kew1e

STEAM_USERNAME=$1
STEAM_PASSWORD=$2
STEAMCMD_HOME="$PWD/../../steamcmd"
CSGO_HOME="$PWD/"

mkdir -p $STEAMCMD_HOME
mkdir -p $CSGO_HOME

cd $STEAMCMD_HOME
if [ ! -f "steamcmd.sh" ]; then
	wget https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz
	tar -xvzf steamcmd_linux.tar.gz
	rm steamcmd_linux.tar.gz
fi

./steamcmd.sh +@sSteamCmdForcePlatformBitness 32 +login anonymous +force_install_dir $CSGO_HOME +app_update 740 validate +exit
# The CSGO 64 bit build seems to not work for some reason...
