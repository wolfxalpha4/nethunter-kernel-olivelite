### AnyKernel3 Workspace
# begin properties
properties() { '
kernel.string=NetHunter Kernel for Redmi 8A / Mi439 (crDroid A14)
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=olivelite
device.name2=olive
device.name3=olives
device.name4=pine
device.name5=Mi439
device.name6=mi439
supported.versions=14, 14.0
'; } # end properties

### AnyKernel setup
# global attributes
block=boot;
is_slot_device=0;
ramdisk_compression=auto;
patch_vbmeta_flag=auto;

## AnyKernel methods (DO NOT CHANGE)
# import patching functions/variables - see for reference
. tools/ak3-core.sh;

## AnyKernel install
dump_boot;

write_boot;
## end install
