setenv bootargs console=ttyS0,115200 earlyprintk root=/dev/mmcblk0p2 rootwait

mmc dev 0
fatload mmc 0 $kernel_addr_r zImage
fatload mmc 0 $fdt_addr_r sun6i-a31s-sinovoip-bpi-m2.dtb

bootz $kernel_addr_r - $fdt_addr_r
