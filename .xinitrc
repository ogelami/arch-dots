#exec i3 -V -d all > ~/i3.log 2>&1
systemctl --user import-environment DISPLAY
exec i3
