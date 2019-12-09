metal -c -target air64-apple-macos SDL_shaders_metal.metal -o metal.air
metallib -o sdl.metallib metal.air
xxd -i sdl.metallib > SDL_shaders_metal_catalyst.h
rm metal.air sdl.metallib
