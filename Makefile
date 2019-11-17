VULKAN_SDK_PATH=/home/chen/vulkansdk/x86_64
CFLAGS=-std=c++17 -I$(VULKAN_SDK_PATH)/include
LDFLAGS = -L$(VULKAN_SDK_PATH)/lib `pkg-config --static --libs glfw3` -lvulkan

VulkanHelloWorld: main.cpp
	g++ $(CFLAGS) -o VulkanHelloWorld main.cpp $(LDFLAGS)

.PHONY: test clean

test: VulkanHelloWorld
	LD_LIBRARY_PATH=$(VULKAN_SDK_PATH)/lib VK_LAYER_PATH=$(VULKAN_SDK_PATH)/etc/vulkan/explicit_layer.d ./VulkanHelloWorld

clean:
	rm -f VulkanHelloWorld
