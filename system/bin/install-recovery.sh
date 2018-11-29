#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:861adf2b072a4a8489f77a8b957179dba17251d9; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:67108864:5b9ed0f36ed129d3e82cd53ea83f66ada9797e31 EMMC:/dev/block/bootdevice/by-name/recovery 861adf2b072a4a8489f77a8b957179dba17251d9 67108864 5b9ed0f36ed129d3e82cd53ea83f66ada9797e31:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
