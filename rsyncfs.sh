#!/bin/sh
rsync \
	--verbose \
	--archive \
	--compress \
	--human-readable \
	--progress \
	--stats \
	--filter="exclude /bin" \
	--filter="exclude /boot" \
	--filter="exclude /dev" \
	--filter="exclude /lib" \
	--filter="exclude /lib64" \
	--filter="exclude /lost+found" \
	--filter="exclude /media" \
	--filter="exclude /mnt" \
	--filter="exclude /proc" \
	--filter="exclude /run" \
	--filter="exclude /sbin" \
	--filter="exclude /srv" \
	--filter="exclude /sys" \
	--filter="exclude /tmp" \
	--filter="exclude /usr" \
	--filter="exclude /var/DYSK" \
	"${1}" "${2}"
