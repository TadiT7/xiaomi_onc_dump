#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:d88095845c59c735662c73f03ff35f674ccfc0f4; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:c8ea73aa2267d3e37604d2b55729ba1941d1e1c4 EMMC:/dev/block/bootdevice/by-name/recovery d88095845c59c735662c73f03ff35f674ccfc0f4 67108864 c8ea73aa2267d3e37604d2b55729ba1941d1e1c4:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
