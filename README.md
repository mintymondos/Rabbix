
Rabbix is a project built to be an x86 (potentially) fully functioning UNIX-like kernel (much like Torvalds' Linux) made to be fast as FUCK and easy to use.

current (x86) 32bit-flavor version: 0.01
current (x86) 64bit-flavor version: 0.00 (not indev yet, will be when 32bit-flavor released)

BUILD INFO:
    to install dependencies and other shit, run ./build-cross.sh
    then after, build the kernel itself, run ./rub.sh

explanation for some things 
filesystem drivers
    Rabbix will eventually (or does depending on the FS) support the following filesystems 
        - fat12 [WIP]
        - fat16 [WIP]
        - fat32 [WIP]
        - ext2 [WIP]
        - ext3 [WIP]
        - ext4 [NO SHIT ITS STILl WIP!!!!]
        - exfat [VERY WIP!!!!!!!]
        - redsea [WIP] (long live King Terry the Terrible)
    this list is definitely subject to change as time goes on, however, no filesystem will ever be dropped from support as to not break userspace.

    - a note on RedSea
        RedSea will probably never be implemented into the 32 bit flavor of RABBIX since King Terry made it exclusively for 64 bits, sorry!

3: userspace
    if you cant tell by the name, /Rabbix/userspace is where the userspace stuff goes, such as: the DE, WM, and all other processes
4: drivers
    its the drivers, self explanatory.
5: helpers
    the helper stuff like string.c/.h. Along with kprintf, the kernel panic function, and the RABBIX logo ascii, etc.
BOOTLOADER SUPPORT:
currently the only thing that Rabbix 0.01 supports is 32 bit GRUB, however contributers can do whatever and add support for other bootloaders

X86-64 FLAVOR
    right now the version with the most priority is the regular 32 bit x86 kernel, x96-64 support will lag behind in terms of features upon release since the 32 bit version is of the highest priority.
