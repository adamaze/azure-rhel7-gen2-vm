virt-install \
	--name rhel77 \
	--memory 4096 \
	--vcpus 4 \
	--boot uefi \
	--os-variant rhel7.7 \
	-l /var/lib/libvirt/images/rhel-server-7.7-x86_64-dvd.iso \
	--disk size=4 \
	--initrd-inject $(pwd)/kickstart.cfg \
	--extra-args="ks=file:/kickstart.cfg console=tty0 console=ttyS0,115200n8" \
	--graphics=none \
	--network network=default
