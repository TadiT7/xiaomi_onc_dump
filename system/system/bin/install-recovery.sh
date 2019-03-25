#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:80707c98512dd9ba8b21b648b20526adce992546; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:3af358934f1c4e4a6985291c8cc52578226475f6 EMMC:/dev/block/bootdevice/by-name/recovery 80707c98512dd9ba8b21b648b20526adce992546 67108864 3af358934f1c4e4a6985291c8cc52578226475f6:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
