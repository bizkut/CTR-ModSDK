# Crash Team Racing - Portmaster Port

Native ARM port of CTR-PC decompilation for Portmaster handheld devices.

## Quick Start

1. Copy `crashteamracing/` folder to your device's `ports/` directory
2. Add your PS1 disc image as `ctr-u.bin` (USA) in the folder
3. Launch from Portmaster

## Requirements

- **Game Data**: Original PS1 disc image (`.bin` format)
  - `ctr-u.bin` (USA/NTSC-U)
  - `ctr-pal.bin` (Europe/PAL)
  - `ctr-j.bin` (Japan/NTSC-J)
- **Device**: Portmaster with armhf support (most arm64 devices work)

## Package Contents

| File | Description |
|------|-------------|
| `CrashTeamRacingPC` | Game binary (armhf, 421KB) |
| `Crash Team Racing.sh` | Launch script |
| `libs/` | Bundled SDL2 & OpenAL libraries |
| `port.json` | Portmaster metadata |

## Controls

| Button | Action |
|--------|--------|
| D-Pad/Stick | Steering |
| A/Cross | Accelerate |
| B/Circle | Use Item |
| X/Square | Brake |
| Start | Pause |

## Build from Source

```bash
cd rebuild_PC
mkdir build-armhf && cd build-armhf
cmake .. -DCMAKE_TOOLCHAIN_FILE=../armhf-toolchain.cmake
make -j$(nproc)
```

**Requirements**: `gcc-arm-linux-gnueabihf`, `libsdl2-dev:armhf`, `libopenal-dev:armhf`

## Credits

- [CTR-tools](https://github.com/CTR-tools/CTR-ModSDK) - Decompilation project
- [PsyCross](https://github.com/OpenDriver2/PsyCross) - PSX emulation layer

## License

Decompilation code is open source. Game data requires original disc.
