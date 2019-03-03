#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:ad2e81fb2aeb191bf51fdc243114a56cfd8908ce; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:67108864:a6dfd817d998cfb84d4a049830a835e9ba6d7f9d EMMC:/dev/block/bootdevice/by-name/recovery ad2e81fb2aeb191bf51fdc243114a56cfd8908ce 67108864 a6dfd817d998cfb84d4a049830a835e9ba6d7f9d:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
