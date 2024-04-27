#! /bin/bash

VERSION=$(head -1 ./VERSION)
PWD=$(pwd)
PROJECT=${PWD##*/}

./deps/nerves_system_br/create-build.sh nerves_defconfig .nerves/artifacts/${PROJECT}-portable-${VERSION} >/dev/null
cd .nerves/artifacts/${PROJECT}-portable-${VERSION}
echo "*** You are now in your target shell, to go back type exit or press CTRL-d"
echo "*** Use make menuconfig to enter buildroot menu"
echo "*** Use make savedefconfig when you're done for your changes to make effect" 
echo "*** Use make linux-defconfig to enter the kernel menu"
echo "*** Use make linux-update-defconfig to save changes to the kernel"
exec bash
