#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:e0b54ae5662d4bc6400fd4a414972df0d24a5fb2; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:8e0ce99f7903e7c5bcd81a8b978bb00ab6aff3c6 EMMC:/dev/block/bootdevice/by-name/recovery e0b54ae5662d4bc6400fd4a414972df0d24a5fb2 67108864 8e0ce99f7903e7c5bcd81a8b978bb00ab6aff3c6:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
