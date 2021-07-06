ifeq ($(KERNELRELEASE),)
	PWD := $(shell pwd)
	KDIR := $(KERNEL_PATH)

default:
	$(MAKE) -C $(KDIR) M=$(PWD) modules ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- 
clean:
	rm -rf *.ko *.order *.symvers *.cmd *.o *.mod.c *.tmp_versions .*.cmd .tmp_versions

else
	obj-m := welcome.o

endif
