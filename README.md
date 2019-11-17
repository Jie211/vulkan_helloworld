# Install

### sdk
[SDK Download](https://vulkan.lunarg.com/sdk/home)
[LunarXchange](https://vulkan.lunarg.com/doc/sdk/1.1.126.0/linux/getting_started.html)
```
tar zxvf vulkansdk-linux-x86_64-1.1.126.0.tar.gz
```

dependency
```bash
sudo apt-get update
sudo apt-get dist-upgrade
sudo apt install libxcb1-dev xorg-dev
sudo apt-get install libglm-dev cmake libxcb-dri3-0 libxcb-present0 libpciaccess0 \
libpng-dev libxcb-keysyms1-dev libxcb-dri3-dev libx11-dev g++ gcc g++-multilib \
libmirclient-dev libwayland-dev libxrandr-dev libxcb-ewmh-dev git python3 bison
sudo apt-get install qt5-default qtwebengine5-dev
```

sample
https://vulkan.lunarg.com/doc/view/1.1.126.0/linux/vulkan_samples.html

build
```bash
./vulkansdk samples
```

### GLFW
[GLFW - An OpenGL library](https://www.glfw.org/)
```bash
cd glfw-3.3
cmake .
make -j 4
sudo make install
```

### GLM
```bash
sudo apt install libglm-dev
```
