#! /bin/bash

./deps/nerves_system_br/create-build.sh nerves_defconfig .nerves/artifacts/ovcs_infotainment_system_rpi4-portable-1.27.0 >/dev/null
cd .nerves/artifacts/ovcs_infotainment_system_rpi4-portable-1.27.0
echo "*** You are now in your target shell, to go back type exit or press CTRL-d"
echo "*** Use make menuconfig to enter buildroot menu"
echo "*** Use make savedefconfig when you're done for your changes to make effect" 
exec bash
