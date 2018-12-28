#!/bin/zsh

## Install (0) the Manjaro STUN Kernel and the related (1) nvidia, (2) acpi_call,
## (3) virtualbox_host, (4) SPL/ZFS, kernel extramodules.
## WARNING: This "all in one" script is experimental!

##################
## Get packages ##
##################

# Export variables
export MANJAROSTUN_TMPDIR="$(pwd)/TMPDIR"
export MANJAROSTUN_PKGS="$(pwd)/PKGS"

# Prepare build/install structure
mkdir -p "$MANJAROSTUN_TMPDIR"
mkdir -p "$MANJAROSTUN_PKGS"

# Clean-up (eventual) previous build
cd "$MANJAROSTUN_TMPDIR"
rm -R -f ./*

# Clone relevant git repositories
cd "$MANJAROSTUN_TMPDIR"

git clone --recursive https://github.com/emaballarin/manjaro-linux-stun.git
git clone --recursive https://github.com/emaballarin/manjaro-linux-stun-nvidia.git
git clone --recursive https://gitlab.manjaro.org/packages/extra/linux420-extramodules/acpi_call.git
git clone --recursive https://gitlab.manjaro.org/packages/extra/linux420-extramodules/virtualbox-modules.git
git clone --recursive https://gitlab.manjaro.org/packages/extra/linux420-extramodules/spl_zfs.git

###############################
## Auto-reconfigure packages ##
###############################

# acpi_call
cd "$MANJAROSTUN_TMPDIR/acpi_call"
mv ./acpi_call.install ./acpi_call-STUN.install
sed -i "s/_linuxprefix=.*/_linuxprefix=linux420-STUN/g" ./PKGBUILD
sed -i "s/_extramodules=.*/_extramodules=extramodules-4.20-STUN/g" ./PKGBUILD
sed -i "s/install=\$_pkgname\.install.*/install=acpi_call-STUN\.install/g" ./PKGBUILD
sed -i "s/acpi_call\.install\"/acpi_call-STUN\.install\"/g" ./PKGBUILD

# SPL/ZFS
cd "$MANJAROSTUN_TMPDIR/spl_zfs"
mv ./install ./spl_zfs-STUN.install
sed -i "s/_linuxprefix=.*/_linuxprefix=linux420-STUN/g" ./PKGBUILD
sed -i "s/_extramodules=.*/_extramodules=extramodules-4.20-STUN/g" ./PKGBUILD
sed -i "s/install=install.*/install=spl_zfs-STUN\.install/g" ./PKGBUILD
sed -i "s/install\"/spl_zfs-STUN\.install\"/g" ./PKGBUILD
sed -i "s/package_linux420-spl/package_linux420-STUN-spl/g" ./PKGBUILD
sed -i "s/package_linux420-zfs/package_linux420-STUN-zfs/g" ./PKGBUILD

# virtualbox-modules
cd "$MANJAROSTUN_TMPDIR/virtualbox-modules"
mv ./virtualbox-host-modules.install ./virtualbox-host-modules-STUN.install
mv ./virtualbox-guest-modules.install ./virtualbox-guest-modules-STUN.install
sed -i "s/_linuxprefix=.*/_linuxprefix=linux420-STUN/g" ./PKGBUILD
sed -i "s/_extramodules=.*/_extramodules=extramodules-4.20-STUN/g" ./PKGBUILD
sed -i "s/install=virtualbox-host-modules\.install.*/install=virtualbox-host-modules-STUN\.install/g" ./PKGBUILD
sed -i "s/install=virtualbox-guest-modules\.install.*/install=virtualbox-guest-modules-STUN\.install/g" ./PKGBUILD
sed -i "s/virtualbox-host-modules\.install\"/virtualbox-host-modules-STUN\.install\"/g" ./PKGBUILD
sed -i "s/virtualbox-guest-modules\.install\"/virtualbox-guest-modules-STUN\.install\"/g" ./PKGBUILD
sed -i "s/package_linux420-virtualbox-host-modules/package_linux420-STUN-virtualbox-host-modules/g" ./PKGBUILD
sed -i "s/package_linux420-virtualbox-guest-modules/package_linux420-STUN-virtualbox-guest-modules/g" ./PKGBUILD

####################
## Build packages ##
####################

cd "$MANJAROSTUN_TMPDIR/manjaro-linux-stun"
makepkg -Csfi --noconfirm

cd "$MANJAROSTUN_TMPDIR/manjaro-linux-stun-nvidia"
makepkg -Csf

cd "$MANJAROSTUN_TMPDIR/acpi_call"
makepkg -Csf

cd "$MANJAROSTUN_TMPDIR/spl_zfs"
makepkg -Csf

## virtualbox-modules ##

# Build package
cd "$MANJAROSTUN_TMPDIR/virtualbox-modules"
makepkg -Csf --noconfirm

# Remove (now useless) MAKE-dependencies previously installed
sudo pacman -R virtualbox-guest-dkms virtualbox-host-dkms --noconfirm
sudo pacman -R virtualbox-guest-dkms virtualbox-host-dkms --noconfirm

#####################
## Deploy packages ##
#####################

# Ask if deployment/install is really wanted
echo ' '
#bash -c "read -p 'Was the whole build process successful? Press [ENTER] to deploy and install Manjaro STUN!'"
echo ' '

# Remove (eventually) previously built packages
rm -R -f "$MANJAROSTUN_PKGS/*"


cd "$MANJAROSTUN_TMPDIR/manjaro-linux-stun"
cp ./*.pkg.tar.xz "$MANJAROSTUN_PKGS"

cd "$MANJAROSTUN_TMPDIR/manjaro-linux-stun-nvidia"
cp ./*.pkg.tar.xz "$MANJAROSTUN_PKGS"

cd "$MANJAROSTUN_TMPDIR/acpi_call"
cp ./*.pkg.tar.xz "$MANJAROSTUN_PKGS"

cd "$MANJAROSTUN_TMPDIR/spl_zfs"
cp ./*.pkg.tar.xz "$MANJAROSTUN_PKGS"

cd "$MANJAROSTUN_TMPDIR/virtualbox-modules"
cp ./*host*.pkg.tar.xz "$MANJAROSTUN_PKGS"

######################
## Install packages ##
######################
cd "$MANJAROSTUN_PKGS"
sudo pacman -U ./* --noconfirm
trizen -S wireguard-tools --noconfirm

# Ask for file cleanup
echo ' '
#bash -c "read -p 'If the installation was successful, press [ENTER] to perform a file cleanup. Hit [CTRL]+[C] to exit without cleanup.'"
echo ' '

rm -R -f "$MANJAROSTUN_TMPDIR"
rm -R -f "$MANJAROSTUN_PKGS"
