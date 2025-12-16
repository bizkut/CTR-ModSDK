#!/bin/bash

# SPDX-License-Identifier: MIT
# Portmaster port for Crash Team Racing (CTR) PC decompilation
# Requires original PS1 game data (ctr-u.bin)

# Get the directory where this script is located
GAMEDIR="$(dirname "$(realpath "$0")")"
cd "$GAMEDIR"

# Check for game data
if [ ! -f "ctr-u.bin" ] && [ ! -f "ctr-pal.bin" ] && [ ! -f "ctr-j.bin" ]; then
    echo "ERROR: Game data not found!"
    echo "Please place your original PS1 disc image (ctr-u.bin, ctr-pal.bin, or ctr-j.bin) in:"
    echo "$GAMEDIR"
    sleep 5
    exit 1
fi

# Set up library path for bundled armhf libraries
export LD_LIBRARY_PATH="$GAMEDIR/libs:$LD_LIBRARY_PATH"

# Set up SDL environment
export SDL_GAMECONTROLLERCONFIG="$SDL_GAMECONTROLLERCONFIG"
export SDL_AUDIODRIVER="${SDL_AUDIODRIVER:-alsa}"

# Use gl4es for OpenGL ES compatibility if available
if [ -d "/usr/lib/gl4es" ]; then
    export LD_LIBRARY_PATH="/usr/lib/gl4es:$LD_LIBRARY_PATH"
    export LIBGL_ES=2
fi

# Enable 32-bit execution on 64-bit systems
export QEMU_LD_PREFIX="/usr/arm-linux-gnueabihf"

# Run the game
./CrashTeamRacingPC "$@"
