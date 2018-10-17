# Based on the file created for Arch Linux by:
# Tobias Powalowski <tpowa@archlinux.org>
# Thomas Baechler <thomas@archlinux.org>

# Maintainer: Philip Müller (x86_64) <philm@manjaro.org>
# Maintainer: Jonathon Fernyhough (i686) <jonathon@manjaro.org>

pkgbase=linux419
pkgname=('linux419' 'linux419-headers')
_kernelname=-MANJARO
_basekernel=4.19
_basever=419
_aufs=20181001
_bfq=v9
_bfqdate=20181012
_sub=0
_rc=rc8
_commit=c343db455eb3105f11bb5ac290d77ab2006b0209
_shortcommit=${_rc}.1017.gc343db4
pkgver=${_basekernel}${_shortcommit}
#pkgver=${_basekernel}.${_sub}
pkgrel=1
arch=('i686' 'x86_64')
url="http://www.kernel.org/"
license=('GPL2')
makedepends=('xmlto' 'docbook-xsl' 'kmod' 'inetutils' 'bc' 'elfutils' 'git')
options=('!strip')
source=(#"https://www.kernel.org/pub/linux/kernel/v4.x/linux-${_basekernel}.tar.xz"
        #"http://www.kernel.org/pub/linux/kernel/v4.x/patch-${pkgver}.xz"
        #https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git/snapshot/linux-stable-rc-$_commit.tar.gz
        "linux-${pkgver}.tar.gz::https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/snapshot/linux-$_commit.tar.gz"
        # the main kernel config files
        'config.x86_64' 'config' 'config.aufs'
        "${pkgbase}.preset" # standard config files for mkinitcpio ramdisk
        '60-linux.hook'     # pacman hook for depmod
        '90-linux.hook'     # pacman hook for initramfs regeneration
        "aufs4.x-rcN-${_aufs}.patch.bz2"
        'aufs4-base.patch'
        'aufs4-kbuild.patch'
        'aufs4-loopback.patch'
        'aufs4-mmap.patch'
        'aufs4-standalone.patch'
        'tmpfs-idr.patch'
        'vfs-ino.patch'
        #"0001-BFQ-${_bfq}-${_bfqdate}.patch::https://github.com/Algodev-github/bfq-mq/compare/0adb328...698937e.patch"
        0001-BFQ-${_bfq}-${_bfqdate}.patch::https://github.com/sirlucjan/kernel-patches/raw/master/4.19/bfq-sq-mq/4.19-bfq-sq-mq-v9r1-2K181012-rc1.patch
        # ARCH Patches
        0001-add-sysctl-to-disallow-unprivileged-CLONE_NEWUSER-by.patch
        # MANJARO Patches
        #'0001-i2c-hid-override-HID-descriptors-for-certain-devices.patch'
        # Bootsplash
        '0001-bootsplash.patch'
        '0002-bootsplash.patch'
        '0003-bootsplash.patch'
        '0004-bootsplash.patch'
        '0005-bootsplash.patch'
        '0006-bootsplash.patch'
        '0007-bootsplash.patch'
        '0008-bootsplash.patch'
        '0009-bootsplash.patch'
        '0010-bootsplash.patch'
        '0011-bootsplash.patch'
        '0012-bootsplash.patch'
        '0013-bootsplash.patch')
sha256sums=('deeccf2638682679454b38c86c6569c9724fdbb468b5eeff5b244973a653428a'
            '18b83bfd46260c6fca02476b0dab70460e04a44c953ca29c535adf4454fbe78b'
            'f5903377d29fc538af98077b81982efdc091a8c628cb85566e88e1b5018f12bf'
            'b44d81446d8b53d5637287c30ae3eb64cae0078c3fbc45fcf1081dd6699818b5'
            '43942683a7ff01b180dff7f3de2db4885d43ab3d4e7bd0e1918c3aaf2ee061f4'
            'ae2e95db94ef7176207c690224169594d49445e04249d2499e9d2fbc117a0b21'
            '90831589b7ab43d6fab11bfa3ad788db14ba77ea4dc03d10ee29ad07194691e1'
            '2f120b403e7c8039bc642ac994caf5fb71eef05b6cd07fe2d21f73a2d67b97ec'
            'c66bcd5ed9d7f9d261a7afb6005cd2406d965e7a3ad47a8507f9e68595fd7bc6'
            'de7051f531e4f5c3ccb995489f23946c867b4c36c7b464559e43a15f3ad76f6d'
            'd57df412765b9bf23aff8366e8f6dfb87a822d4fddc5de4fd7e51d236169acc1'
            '6d10c5a50232db07757097b24e5b5b2fbcf4362d105ca241d5242e5ba08c7691'
            '473cc8e1d4b94d4689a11136d55e43b1c0b9cb22b88771eb4b2b47165c2137b3'
            'a50226860ed658251eb74014daad773cb0a8700ed7c5b81548ee4f77e8d6d4de'
            '7f861935faf7ebd2d528052a363f0356c9b5239e32a68b4ec23dcf95ee91e708'
            'fecfe39fbd05677dcc35b04ecd1ecf91bf080fee82e152c06eb9b1bc6d70d0c5'
            '37b86ca3de148a34258e3176dbf41488d9dbd19e93adbd22a062b3c41332ce85'
            'a504f6cf84094e08eaa3cc5b28440261797bf4f06f04993ee46a20628ff2b53c'
            'e096b127a5208f56d368d2cb938933454d7200d70c86b763aa22c38e0ddb8717'
            '8c1c880f2caa9c7ae43281a35410203887ea8eae750fe8d360d0c8bf80fcc6e0'
            '1144d51e5eb980fceeec16004f3645ed04a60fac9e0c7cf88a15c5c1e7a4b89e'
            'dd4b69def2efacf4a6c442202ad5cb93d492c03886d7c61de87696e5a83e2846'
            'c12a25d9b181924f34386e2e678e65d2609ec5e04746731b92ca957f99d66d1f'
            'c8b0cb231659d33c3cfaed4b1f8d7c8305ab170bdd4c77fce85270d7b6a68000'
            '8dbb5ab3cb99e48d97d4e2f2e3df5d0de66f3721b4f7fd94a708089f53245c77'
            'a7aefeacf22c600fafd9e040a985a913643095db7272c296b77a0a651c6a140a'
            'e9f22cbb542591087d2d66dc6dc912b1434330ba3cd13d2df741d869a2c31e89'
            '27471eee564ca3149dd271b0817719b5565a9594dc4d884fe3dc51a5f03832bc'
            '60e295601e4fb33d9bf65f198c54c7eb07c0d1e91e2ad1e0dd6cd6e142cb266d'
            '035ea4b2a7621054f4560471f45336b981538a40172d8f17285910d4e0e0b3ef')
prepare() {
  #mv "${srcdir}/linux-stable-rc-${_commit}" "${srcdir}/linux-${_basekernel}"
  mv "${srcdir}/linux-${_commit}" "${srcdir}/linux-${_basekernel}"
  cd "${srcdir}/linux-${_basekernel}"

  # add upstream patch
  #patch -p1 -i "${srcdir}/patch-${pkgver}"

  # add latest fixes from stable queue, if needed
  # http://git.kernel.org/?p=linux/kernel/git/stable/stable-queue.git
  # enable only if you have "gen-stable-queue-patch.sh" executed before
  #patch -Np1 -i "${srcdir}/prepatch-${_basekernel}`date +%Y%m%d`"

  # disable USER_NS for non-root users by default
  patch -Np1 -i ../0001-add-sysctl-to-disallow-unprivileged-CLONE_NEWUSER-by.patch

  # https://bugzilla.redhat.com/show_bug.cgi?id=1526312
  # https://forum.manjaro.org/t/36269/78
  # currently dropped: 
  # https://forum.manjaro.org/t/61760/5
  # https://forum.manjaro.org/t/61760/15
  #patch -Np1 -i ../0001-i2c-hid-override-HID-descriptors-for-certain-devices.patch

  # Add bootsplash - http://lkml.iu.edu/hypermail/linux/kernel/1710.3/01542.html
  patch -Np1 -i "${srcdir}/0001-bootsplash.patch"
  patch -Np1 -i "${srcdir}/0002-bootsplash.patch"
  patch -Np1 -i "${srcdir}/0003-bootsplash.patch"
  patch -Np1 -i "${srcdir}/0004-bootsplash.patch"
  patch -Np1 -i "${srcdir}/0005-bootsplash.patch"
  patch -Np1 -i "${srcdir}/0006-bootsplash.patch"
  patch -Np1 -i "${srcdir}/0007-bootsplash.patch"
  patch -Np1 -i "${srcdir}/0008-bootsplash.patch"
  patch -Np1 -i "${srcdir}/0009-bootsplash.patch"
  patch -Np1 -i "${srcdir}/0010-bootsplash.patch"
  patch -Np1 -i "${srcdir}/0011-bootsplash.patch"
  patch -Np1 -i "${srcdir}/0012-bootsplash.patch"
  # use git-apply to add binary files
  git apply -p1 < "${srcdir}/0013-bootsplash.patch"

  # add aufs4 support
  patch -Np1 -i "${srcdir}/aufs4.x-rcN-${_aufs}.patch"
  patch -Np1 -i "${srcdir}/aufs4-base.patch"
  patch -Np1 -i "${srcdir}/aufs4-kbuild.patch"
  patch -Np1 -i "${srcdir}/aufs4-loopback.patch"
  patch -Np1 -i "${srcdir}/aufs4-mmap.patch"
  patch -Np1 -i "${srcdir}/aufs4-standalone.patch"
  patch -Np1 -i "${srcdir}/tmpfs-idr.patch"
  patch -Np1 -i "${srcdir}/vfs-ino.patch"

  # add BFQ scheduler
  patch -Np1 -i "${srcdir}/0001-BFQ-${_bfq}-${_bfqdate}.patch"

  if [ "${CARCH}" = "x86_64" ]; then
    cat "${srcdir}/config.x86_64" > ./.config
  else
    cat "${srcdir}/config" > ./.config
  fi

  cat "${srcdir}/config.aufs" >> ./.config

  if [ "${_kernelname}" != "" ]; then
    sed -i "s|CONFIG_LOCALVERSION=.*|CONFIG_LOCALVERSION=\"${_kernelname}\"|g" ./.config
    sed -i "s|CONFIG_LOCALVERSION_AUTO=.*|CONFIG_LOCALVERSION_AUTO=n|" ./.config
  fi

  # set extraversion to pkgrel
  sed -ri "s|^(EXTRAVERSION =).*|\1 -${pkgrel}|" Makefile

  # set patch level
  sed -ri "s|^(PATCHLEVEL =).*|\1 19|" Makefile

  # don't run depmod on 'make install'. We'll do this ourselves in packaging
  sed -i '2iexit 0' scripts/depmod.sh

  # get kernel version
  make prepare

  # load configuration
  # Configure the kernel. Replace the line below with one of your choice.
  #make menuconfig # CLI menu for configuration
  #make nconfig # new CLI menu for configuration
  #make xconfig # X-based configuration
  #make oldconfig # using old config from previous kernel version
  # ... or manually edit .config

  # rewrite configuration
  yes "" | make config >/dev/null
}

build() {
  cd "${srcdir}/linux-${_basekernel}"

  # build!
  make ${MAKEFLAGS} LOCALVERSION= bzImage modules
}

package_linux419() {
  pkgdesc="The ${pkgbase/linux/Linux} kernel and modules"
  depends=('coreutils' 'linux-firmware' 'kmod' 'mkinitcpio>=0.7')
  optdepends=('crda: to set the correct wireless channels of your country')
  provides=("linux=${pkgver}")
  backup=("etc/mkinitcpio.d/${pkgbase}.preset")
  install=${pkgname}.install

  cd "${srcdir}/linux-${_basekernel}"

  KARCH=x86

  # get kernel version
  _kernver="$(make LOCALVERSION= kernelrelease)"

  mkdir -p "${pkgdir}"/{boot,usr/lib/modules}
  make LOCALVERSION= INSTALL_MOD_PATH="${pkgdir}/usr" modules_install
  cp arch/$KARCH/boot/bzImage "${pkgdir}/boot/vmlinuz-${_basekernel}-${CARCH}"

  # add kernel version
  if [ "${CARCH}" = "x86_64" ]; then
     echo "${pkgver}-${pkgrel}-MANJARO x64" > "${pkgdir}/boot/${pkgbase}-${CARCH}.kver"
  else
     echo "${pkgver}-${pkgrel}-MANJARO x32" > "${pkgdir}/boot/${pkgbase}-${CARCH}.kver"
  fi

  # make room for external modules
  local _extramodules="extramodules-${_basekernel}${_kernelname:--MANJARO}"
  ln -s "../${_extramodules}" "${pkgdir}/usr/lib/modules/${_kernver}/extramodules"

  # add real version for building modules and running depmod from hook
  echo "${_kernver}" |
    install -Dm644 /dev/stdin "${pkgdir}/usr/lib/modules/${_extramodules}/version"

  # remove build and source links
  rm "${pkgdir}"/usr/lib/modules/${_kernver}/{source,build}

  # now we call depmod...
  depmod -b "${pkgdir}/usr" -F System.map "${_kernver}"

  # add vmlinux
  install -Dt "${pkgdir}/usr/lib/modules/${_kernver}/build" -m644 vmlinux

  # sed expression for following substitutions
  local _subst="
    s|%PKGBASE%|${pkgbase}|g
    s|%BASEKERNEL%|${_basekernel}|g
    s|%ARCH%|${CARCH}|g
    s|%KERNVER%|${_kernver}|g
    s|%EXTRAMODULES%|${_extramodules}|g
  "

  # hack to allow specifying an initially nonexisting install file
  sed "${_subst}" "${startdir}/${install}" > "${startdir}/${install}.pkg"
  true && install=${install}.pkg

  # install mkinitcpio preset file
  sed "${_subst}" ${srcdir}/linux419.preset |
    install -Dm644 /dev/stdin "${pkgdir}/etc/mkinitcpio.d/${pkgbase}.preset"

  # install pacman hooks
  sed "${_subst}" ${srcdir}/60-linux.hook |
    install -Dm644 /dev/stdin "${pkgdir}/usr/share/libalpm/hooks/60-${pkgbase}.hook"
  sed "${_subst}" ${srcdir}/90-linux.hook |
    install -Dm644 /dev/stdin "${pkgdir}/usr/share/libalpm/hooks/90-${pkgbase}.hook"
}

package_linux419-headers() {
  pkgdesc="Header files and scripts for building modules for ${pkgbase/linux/Linux} kernel"
  provides=("linux-headers=$pkgver")

  cd "${srcdir}/linux-${_basekernel}"
  local _builddir="${pkgdir}/usr/lib/modules/${_kernver}/build"

  install -Dt "${_builddir}" -m644 Makefile .config Module.symvers
  install -Dt "${_builddir}/kernel" -m644 kernel/Makefile

  mkdir "${_builddir}/.tmp_versions"

  cp -t "${_builddir}" -a include scripts

  install -Dt "${_builddir}/arch/${KARCH}" -m644 "arch/${KARCH}/Makefile"
  install -Dt "${_builddir}/arch/${KARCH}/kernel" -m644 "arch/${KARCH}/kernel/asm-offsets.s"

  if [ "${CARCH}" = "i686" ]; then
    install -Dt "${_builddir}/arch/${KARCH}" -m644 "arch/${KARCH}/Makefile_32.cpu"
  fi

  cp -t "${_builddir}/arch/${KARCH}" -a "arch/${KARCH}/include"

  install -Dt "${_builddir}/drivers/md" -m644 drivers/md/*.h
  install -Dt "${_builddir}/net/mac80211" -m644 net/mac80211/*.h

  # http://bugs.archlinux.org/task/13146
  install -Dt "${_builddir}/drivers/media/i2c" -m644 drivers/media/i2c/msp3400-driver.h

  # http://bugs.archlinux.org/task/20402
  install -Dt "${_builddir}/drivers/media/usb/dvb-usb" -m644 drivers/media/usb/dvb-usb/*.h
  install -Dt "${_builddir}/drivers/media/dvb-frontends" -m644 drivers/media/dvb-frontends/*.h
  install -Dt "${_builddir}/drivers/media/tuners" -m644 drivers/media/tuners/*.h

  # add xfs and shmem for aufs building
  mkdir -p "${_builddir}"/{fs/xfs,mm}

  # copy in Kconfig files
  find . -name Kconfig\* -exec install -Dm644 {} "${_builddir}/{}" \;

  if [ "${CARCH}" = "x86_64" ]; then
    # add objtool for external module building and enabled VALIDATION_STACK option
    install -Dt "${_builddir}/tools/objtool" tools/objtool/objtool
  fi

  # remove unneeded architectures
  local _arch
  for _arch in "${_builddir}"/arch/*/; do
    [[ ${_arch} == */x86/ ]] && continue
    rm -r "${_arch}"
  done

  # remove files already in linux-docs package
  rm -r "${_builddir}/Documentation"

  # Fix permissions
  chmod -R u=rwX,go=rX "${_builddir}"

  # strip scripts directory
  local _binary _strip
  while read -rd '' _binary; do
    case "$(file -bi "${_binary}")" in
      *application/x-sharedlib*)  _strip="${STRIP_SHARED}"   ;; # Libraries (.so)
      *application/x-archive*)    _strip="${STRIP_STATIC}"   ;; # Libraries (.a)
      *application/x-executable*) _strip="${STRIP_BINARIES}" ;; # Binaries
      *) continue ;;
    esac
    /usr/bin/strip ${_strip} "${_binary}"
  done < <(find "${_builddir}/scripts" -type f -perm -u+w -print0 2>/dev/null)
}
