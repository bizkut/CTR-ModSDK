set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR arm)

set(CMAKE_C_COMPILER arm-linux-gnueabihf-gcc)
set(CMAKE_CXX_COMPILER arm-linux-gnueabihf-g++)

set(CMAKE_FIND_ROOT_PATH /usr/arm-linux-gnueabihf /usr/lib/arm-linux-gnueabihf)
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)

# Use pkg-config for armhf
set(ENV{PKG_CONFIG_PATH} "/usr/lib/arm-linux-gnueabihf/pkgconfig:/usr/share/pkgconfig")
set(ENV{PKG_CONFIG_LIBDIR} "/usr/lib/arm-linux-gnueabihf/pkgconfig:/usr/share/pkgconfig")
set(PKG_CONFIG_EXECUTABLE "/usr/bin/arm-linux-gnueabihf-pkg-config" CACHE FILEPATH "" FORCE)

# SDL2 - armhf paths
set(SDL2_FOUND TRUE CACHE BOOL "")
set(SDL2_INCLUDE_DIRS "/usr/include/SDL2" CACHE PATH "")
set(SDL2_LIBRARIES "-L/usr/lib/arm-linux-gnueabihf -lSDL2" CACHE STRING "")

# OpenAL - armhf paths  
set(OpenAL_FOUND TRUE CACHE BOOL "")
set(OPENAL_FOUND TRUE CACHE BOOL "")
set(OPENAL_INCLUDE_DIR "/usr/include/AL" CACHE PATH "")
set(OPENAL_LIBRARY "-L/usr/lib/arm-linux-gnueabihf -lopenal" CACHE STRING "")
