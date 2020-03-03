# Other Random Notes

These notes don't fit into a greater category, so I am preserving them here for now.

## Using QEMU-static to chroot into foreign architecture filesystems.

Based on this answer: https://unix.stackexchange.com/a/222981

Install qemu-user-static packages:  
`apt install qemu-user-static`

Copy qemu-[arch]-static to the root filesystem's /usr/bin  
`cp $(which qemu-[arch]-static) $ROOT_FS/usr/bin`

Chroot into the filesystem:  
`chroot $ROOT_FS qemu-[arch]-static /bin/bash`
