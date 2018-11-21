################################################
## Manjaro Linux STUN (Slightly TUNed) Kernel ##
################################################

# Based on the file created for Arch Linux by:
# Tobias Powalowski <tpowa@archlinux.org>
# Thomas Baechler <thomas@archlinux.org>

# Based on the file created for Manjaro Linux by:
# Philip Müller (x86_64) <philm@manjaro.org>
# Jonathon Fernyhough (i686) <jonathon@manjaro.org>

# Maintainer: Emanuele Ballarin (STUN x86_64) <emanuele@ballarin.cc>

pkgbase=linux419-STUN
pkgname=('linux419-STUN' 'linux419-STUN-headers')
_kernelname=-STUN
_basekernel=4.19
_basever=419
_aufs=20181029
_bfq=v9
_bfqdate=20181101
_wireguard=0.0.20181119
_sub=2
_commit=84df9525b0c27f3ebc2ebb1864fa62a97fdedb7d
pkgver=${_basekernel}.${_sub}
pkgrel=1
arch=('i686' 'x86_64')
url="http://www.kernel.org/"
license=('GPL2')
makedepends=('xmlto' 'docbook-xsl' 'kmod' 'inetutils' 'bc' 'elfutils' 'git')
options=('!strip')
source=(## LINUX KERNEL (base, before the patches)
        "https://www.kernel.org/pub/linux/kernel/v4.x/linux-${_basekernel}.tar.xz"

        ## LINUX KERNEL (upstream patches)
        "http://www.kernel.org/pub/linux/kernel/v4.x/patch-${pkgver}.xz"

        ## LINUX KERNEL (base, before the patches)
        #https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git/snapshot/linux-stable-rc-$_commit.tar.gz
        #"linux-${pkgver}.tar.gz::https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/snapshot/linux-$_commit.tar.gz"
        ## KERNEL and AUFS4 CONFIG FILES (STUNned, where applicable - x86_64)
        'config.x86_64' 'config' 'config.aufs'

        ## MANJARO VANILLA (preset and hooks)
        "${pkgbase}.preset" # standard config files for mkinitcpio ramdisk
        '60-linux.hook'     # pacman hook for depmod
        '90-linux.hook'     # pacman hook for initramfs regeneration

        ## MANJARO VANILLA (AUFS4 support)
        "aufs4.19-${_aufs}.patch.bz2"
        'aufs4-base.patch'
        'aufs4-kbuild.patch'
        'aufs4-loopback.patch'
        'aufs4-mmap.patch'
        'aufs4-standalone.patch'
        'tmpfs-idr.patch'
        'vfs-ino.patch'

        ## MANJARO VANILLA (BFQ upstream support)
        #"0001-BFQ-${_bfq}-${_bfqdate}.patch::https://github.com/Algodev-github/bfq-mq/compare/0adb328...698937e.patch"
        0001-BFQ-${_bfq}-${_bfqdate}.patch::https://github.com/sirlucjan/kernel-patches/raw/master/4.19/bfq-sq-mq/4.19-bfq-sq-mq-v9r1-2K181101-rc1.patch

        ## MANJARO VANILLA (ARCH Patches)
        '0001-add-sysctl-to-disallow-unprivileged-CLONE_NEWUSER-by.patch'

        ## MANJARO VANILLA (HID Patches)
        '0001-i2c-hid-override-HID-descriptors-for-certain-devices.patch'
        '0002-i2c-hid-properly-terminate-i2c_hid_dmi_desc_override_table_array.patch'

        ## MANJARO VANILLA (Bootsplash)
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
        '0013-bootsplash.patch'

        ## STUN PATCHES (Intel Clear Linux Project - Kernel)
        "https://raw.githubusercontent.com/clearlinux-pkgs/linux/master/0101-i8042-decrease-debug-message-level-to-info.patch"
        "https://raw.githubusercontent.com/clearlinux-pkgs/linux/master/0103-silence-rapl.patch"
        "https://raw.githubusercontent.com/clearlinux-pkgs/linux/master/0104-pci-pme-wakeups.patch"
        "https://raw.githubusercontent.com/clearlinux-pkgs/linux/master/0105-ksm-wakeups.patch"
        "https://raw.githubusercontent.com/clearlinux-pkgs/linux/master/0106-intel_idle-tweak-cpuidle-cstates.patch"
        "https://raw.githubusercontent.com/clearlinux-pkgs/linux/master/0108-smpboot-reuse-timer-calibration.patch"
        "https://raw.githubusercontent.com/clearlinux-pkgs/linux/master/0109-raid6-add-Kconfig-option-to-skip-raid6-benchmarking.patch"
        "https://raw.githubusercontent.com/clearlinux-pkgs/linux/master/0110-Initialize-ata-before-graphics.patch"
        "https://raw.githubusercontent.com/clearlinux-pkgs/linux/master/0111-reduce-e1000e-boot-time-by-tightening-sleep-ranges.patch"
        "https://raw.githubusercontent.com/clearlinux-pkgs/linux/master/0112-give-rdrand-some-credit.patch"
        "https://raw.githubusercontent.com/clearlinux-pkgs/linux/master/0113-ipv4-tcp-allow-the-memory-tuning-for-tcp-to-go-a-lit.patch"
        "https://raw.githubusercontent.com/clearlinux-pkgs/linux/master/0115-e1000e-increase-pause-and-refresh-time.patch"
        "https://raw.githubusercontent.com/clearlinux-pkgs/linux/master/0116-kernel-time-reduce-ntp-wakeups.patch"
        "https://raw.githubusercontent.com/clearlinux-pkgs/linux/master/0120-Enable-stateless-firmware-loading.patch"
        "https://raw.githubusercontent.com/clearlinux-pkgs/linux/master/0122-xattr-allow-setting-user.-attributes-on-symlinks-by-.patch"
        "https://raw.githubusercontent.com/clearlinux-pkgs/linux/master/0502-locking-rwsem-spin-faster.patch"

        ## STUN PATCHES (Wireguard - Kernel autopatcher)
        "https://git.zx2c4.com/WireGuard/snapshot/WireGuard-${_wireguard}.tar.xz"

        ## STUN PATCHES (Kernel custom patches)
        "000ker1-manjaro-stun-tickat600.patch"
        "000ker2-manjaro-stun-tcpcake.patch"

        ## H. Hoffstaette patches (cherry-picked)
        #"https://raw.githubusercontent.com/hhoffstaette/kernel-patches/4.19/4.19/block-20180806-loop-properly-observe-rotational-flag-of-underlying-device.patch"
        #"https://raw.githubusercontent.com/hhoffstaette/kernel-patches/4.19/4.19/net-20180928-up-initial-rmem-to-128KB-and-SYN-rwin-to-around-64KB.patch"

        ## STUN PATCHES (Alfred Chen's PDS Scheduler - downloaded locally)
        "v4.19_pds099d.patch"

        # PSI metrics patches
        "psimetrics.patch"

        ## STUN PATCHES (GraySky patch - GCC optimizations)
        "grayskygcc.patch::https://raw.githubusercontent.com/graysky2/kernel_gcc_patch/master/enable_additional_cpu_optimizations_for_gcc_v8.1%2B_kernel_v4.13%2B.patch")

sha256sums=('0c68f5655528aed4f99dae71a5b259edc93239fa899e2df79c055275c21749a1'
            '51603f6bd4549f97d99a8c8f7e898f6f2b53b2347cb37ed404bf210e2f83f81d'

            ## CONFIGURATION FILE (due to frequent updates, for now)
            'SKIP'

            'cf9f1917c4570d52b0b88c41c26da42fe65ffca3cb7c562413f2d85c4fb84853'
            'b44d81446d8b53d5637287c30ae3eb64cae0078c3fbc45fcf1081dd6699818b5'
            '8634091ef2d9c59baf3474f1ea6311086baa524cc0ea060bb11143afcb8b1c58'
            'ae2e95db94ef7176207c690224169594d49445e04249d2499e9d2fbc117a0b21'
            'f7fff46bf963f6b1cf53b65b51d77749a59586e429c4c056e01dfdab78a6120b'
            '6562e8cb8d292d32181d7b7a4fe52c20b1db80764e0cdc9df07aff78a3ca9591'
            'e239321d84448dd7575b9c5fc58bd76bcb5f0fdb7188a0dcad6010b88e67921c'
            '7e6286cf91aaa68785312a0f6483e3323d8bab4feaaa6f09f2b2b7fc8157e811'
            'd0cf9baab7a5c130036cbd4532c0bd2819ca504ec78bdbbffe66f9c8410857c9'
            '179f00f707a0c809cd44fff01bd31991a5dfff5500e2b02321f22925126404f0'
            '37c07a2dd5249ce9277a370cf60cbebb24dc1e92b845ce419de63453d5e0b685'
            'a50226860ed658251eb74014daad773cb0a8700ed7c5b81548ee4f77e8d6d4de'
            '7f861935faf7ebd2d528052a363f0356c9b5239e32a68b4ec23dcf95ee91e708'
            '3ac265b7be567e628c073d64bd9a9090360c9d98e9c7b9f60ca206a86882932e'
            '37b86ca3de148a34258e3176dbf41488d9dbd19e93adbd22a062b3c41332ce85'
            '94afbc6a9cb0709f6cd71879bae66454ec26d37c83f49f58e4de28d47678e66b'
            '8dc7285a797c77e917aab1c05847370b71725389b9718c58b4565b40eed80d85'
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
            '035ea4b2a7621054f4560471f45336b981538a40172d8f17285910d4e0e0b3ef'

            # Clear Linux
            '672646f867f94e206e36ded0c11552a31c90823d8f978cf95ecbc96e45dc9cb1'
            '742074f41787d9596e9ebf0dee347979032095bdc4ca87f4af79f0c1596b9310'
            'aeb92407b464e5701beca366292e1baa1b352d946331e41ad0b3d0002c579fec'
            'f10a1d266ac272028683805d0f87f48efaaa283565263776ed812000146f4fc3'
            'a8bd3192b295b1eeb31e70bcd65abeff2db7c8457f428e4720298fd9e10d6960'
            'b97d4bb24dd34a6a67afdbdfda3930ec1503405ac0cf98b168e72cd1da1d5c2b'
            'f293fb065a92aa9d823d47628501ec76c8f7c8a85d488bf25d08456499eae504'
            '7fbd514701aadd869bb634a1c734b830fda8d65240003f48f22e99ea3848d7b0'
            '410a66cd9d7f964b3b43743c927346850b2bb054102ad7403d1f92e6ec6fab75'
            '16d2ed058a378b23e17dcfe7ab8c9fe532b0f324480c5eeb2a860351ac718aec'
            '4e4a7e88cb717437ee4241a2ad5604dfd15e125e04805b6769a872602f4dc778'
            '44512886edccfb9896dee733b6acde564e8ef85612354ab31ef954294cff5ca0'
            'cce373a7b21052e3e448d409fb9dcde737155c5322d4bc42fb729c1350aece75'
            '4ab024df99d69063fdcd5de27138ff48c5f1304d4333709fd66514009837bcb3'
            '0b1d7371d230b08cdedb73dc1e38040d19a94fafde26bba86a9f807868123dc6'
            'b7f84870dd0c9bba4bae2e177c57485e428a4097d28b1765afad6796694296ca'

            # WireGuard
            'af05824211b27cbeeea2b8d6b76be29552c0d80bfe716471215e4e43d259e327'

            # STUN custom
            '21914b7c9cb341fdea933e6f965208676e21449e65842e8e6bab7f4edd9e45ac'
            '2d0ba1fabc10195a9edf4f114027eae93ec8c95000fca662a8fd8c0421b6fe21'

            # H.H. patches
            #'5b104c485a900d1d1facb9174a2adc77ee9be136d2ca7a7fd4ab10d7f7a84c38'
            'e587c477e3e666985855d75908e0f6a4fee4566ce21886ec2e93a82854a7c170'

            # PDS Scheduler
            '71ef0aa0dc0a0bdda677c1f2f708bc7a9834bcb7bbfe590fee5cebf52be6420a'

            # PSI
            '2eaca8e69f70a3d0c71acd281827460217b4c41088a052bc403113d8bd0abb39'

            # GraySky
            '9f7177679c8d3f8d699ef0566a51349d828436dba04603bc2223f98c60d2d178')

prepare() {
  #mv "${srcdir}/linux-stable-rc-${_commit}" "${srcdir}/linux-${_basekernel}"
  #mv "${srcdir}/linux-${_commit}" "${srcdir}/linux-${_basekernel}"
  cd "${srcdir}/linux-${_basekernel}"
  echo ' '
  echo 'PATCHING...'
  echo ' '

  # add upstream patch
  echo 'Patching: UPSTREAM'
  patch -p1 -i "${srcdir}/patch-${pkgver}"
  echo '--- --- ---'
  echo ' '

  # add latest fixes from stable queue, if needed
  # http://git.kernel.org/?p=linux/kernel/git/stable/stable-queue.git
  # enable only if you have "gen-stable-queue-patch.sh" executed before
  #patch -Np1 -i "${srcdir}/prepatch-${_basekernel}`date +%Y%m%d`"

  # add STUN patches
  echo 'Patching: STUN CUSTOM'
  patch -Np1 -i "${srcdir}/000ker1-manjaro-stun-tickat600.patch"
  patch -Np1 -i "${srcdir}/000ker2-manjaro-stun-tcpcake.patch"
  echo '--- --- ---'
  echo ' '

  # disable USER_NS for non-root users by default
  echo 'Patching: MANJARO CUSTOM'
  patch -Np1 -i ../0001-add-sysctl-to-disallow-unprivileged-CLONE_NEWUSER-by.patch

  # https://bugzilla.redhat.com/show_bug.cgi?id=1526312
  # https://forum.manjaro.org/t/36269/78
  patch -Np1 -i ../0001-i2c-hid-override-HID-descriptors-for-certain-devices.patch
  patch -Np1 -i ../0002-i2c-hid-properly-terminate-i2c_hid_dmi_desc_override_table_array.patch

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
  echo '--- --- ---'
  echo ' '

  # add aufs4 support
  echo 'Patching: MANJARO - AUFS4'
  patch -Np1 -i "${srcdir}/aufs4.19-${_aufs}.patch"
  patch -Np1 -i "${srcdir}/aufs4-base.patch"
  patch -Np1 -i "${srcdir}/aufs4-kbuild.patch"
  patch -Np1 -i "${srcdir}/aufs4-loopback.patch"
  patch -Np1 -i "${srcdir}/aufs4-mmap.patch"
  patch -Np1 -i "${srcdir}/aufs4-standalone.patch"
  patch -Np1 -i "${srcdir}/tmpfs-idr.patch"
  patch -Np1 -i "${srcdir}/vfs-ino.patch"
  echo '--- --- ---'
  echo ' '

  # add BFQ scheduler
  echo 'Patching: MANJARO - BFQ-SQ/MQ'
  patch -Np1 -i "${srcdir}/0001-BFQ-${_bfq}-${_bfqdate}.patch"
  echo '--- --- ---'
  echo ' '

  # HHO TCPv4 (Google: rmem)
  echo 'Patching: H.H. - TCPv4'
  patch -Np1 -i "${srcdir}/net-20180928-up-initial-rmem-to-128KB-and-SYN-rwin-to-around-64KB.patch"
  echo '--- --- ---'
  echo ' '

  ## PSI Metrics
  #echo 'Patching: PSI Metrics'
  #patch -Np1 -i "${srcdir}/psimetrics.patch"
  #echo '--- --- ---'
  #echo ' '

  # Clear Linux
  echo 'Patching: CLEAR LINUX PROJECT - Kernel'
  patch -Np1 -i "${srcdir}/0101-i8042-decrease-debug-message-level-to-info.patch"
  patch -Np1 -i "${srcdir}/0103-silence-rapl.patch"
  patch -Np1 -i "${srcdir}/0104-pci-pme-wakeups.patch"
  patch -Np1 -i "${srcdir}/0105-ksm-wakeups.patch"
  patch -Np1 -i "${srcdir}/0106-intel_idle-tweak-cpuidle-cstates.patch"
  patch -Np1 -i "${srcdir}/0108-smpboot-reuse-timer-calibration.patch"
  patch -Np1 -i "${srcdir}/0109-raid6-add-Kconfig-option-to-skip-raid6-benchmarking.patch"
  patch -Np1 -i "${srcdir}/0110-Initialize-ata-before-graphics.patch"
  patch -Np1 -i "${srcdir}/0111-reduce-e1000e-boot-time-by-tightening-sleep-ranges.patch"
  patch -Np1 -i "${srcdir}/0112-give-rdrand-some-credit.patch"
  patch -Np1 -i "${srcdir}/0113-ipv4-tcp-allow-the-memory-tuning-for-tcp-to-go-a-lit.patch"
  patch -Np1 -i "${srcdir}/0115-e1000e-increase-pause-and-refresh-time.patch"
  patch -Np1 -i "${srcdir}/0116-kernel-time-reduce-ntp-wakeups.patch"
  patch -Np1 -i "${srcdir}/0120-Enable-stateless-firmware-loading.patch"
  patch -Np1 -i "${srcdir}/0122-xattr-allow-setting-user.-attributes-on-symlinks-by-.patch"
  patch -Np1 -i "${srcdir}/0502-locking-rwsem-spin-faster.patch"
  echo '--- --- ---'
  echo ' '

  # WireGuard
  echo 'Patching: WireGuard'
  _prewg_curdir="$(pwd)"
  cd "${srcdir}/WireGuard-${_wireguard}/contrib/kernel-tree/"
  _wg_ker_calldir="$(pwd)"
  cd "${srcdir}/linux-${_basekernel}/"
  "$_wg_ker_calldir/create-patch.sh" > ./wgpatch.patch
  patch -p1 -i ./wgpatch.patch
  rm ./wgpatch.patch
  cd "$_prewg_curdir"
  echo '--- --- ---'
  echo ' '

  # PDS Scheduler
  echo 'Patching: PDS Scheduler'
  patch -Np1 -i "${srcdir}/v4.19_pds099d.patch"
  echo '--- --- ---'
  echo ' '

  # GraySky
  echo 'Patching: GraySky'
  patch -Np1 -i "${srcdir}/grayskygcc.patch"
  echo '--- --- ---'
  echo ' '

  echo 'PATCHING DONE!'
  echo ' '
  echo ' '

  if [ "${CARCH}" = "x86_64" ]; then
    cat "${srcdir}/config.x86_64" > ./.config
  else
    echo "Warning! You are trying to install the i686 version of this package. STUN is not supported on such platforms."
    echo "The standard MANJARO version of this package will be installed instead."
    bash -c "read -p 'Press [ENTER] to continue...'"
    cat "${srcdir}/config" > ./.config
  fi

  cat "${srcdir}/config.aufs" >> ./.config

  if [ "${_kernelname}" != "" ]; then
    sed -i "s|CONFIG_LOCALVERSION=.*|CONFIG_LOCALVERSION=\"${_kernelname}\"|g" ./.config
    sed -i "s|CONFIG_LOCALVERSION_AUTO=.*|CONFIG_LOCALVERSION_AUTO=n|" ./.config
  fi

  # set extraversion to pkgrel
  sed -ri "s|^(EXTRAVERSION =).*|\1 -${pkgrel}|" Makefile

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

package_linux419-STUN() {
  pkgdesc="The ${pkgbase/linux/Linux} kernel and modules"
  depends=('coreutils' 'linux-firmware' 'kmod' 'mkinitcpio>=0.7')
  optdepends=('crda: to set the correct wireless channels of your country' 'wireguard-tools: to use the Wireguard module included')
  provides=("linux=${pkgver}" "WIREGUARD-MODULE")
  backup=("etc/mkinitcpio.d/${pkgbase}.preset")
  install=${pkgname}.install

  cd "${srcdir}/linux-${_basekernel}"

  KARCH=x86

  # get kernel version
  _kernver="$(make LOCALVERSION= kernelrelease)"

  mkdir -p "${pkgdir}"/{boot,usr/lib/modules}
  make LOCALVERSION= INSTALL_MOD_PATH="${pkgdir}/usr" modules_install
  cp arch/$KARCH/boot/bzImage "${pkgdir}/boot/vmlinuz-${_basekernel}${_kernelname}-${CARCH}"

  # add kernel version
  if [ "${CARCH}" = "x86_64" ]; then
     echo "${pkgver}-${pkgrel}-STUN x64" > "${pkgdir}/boot/${pkgbase}-${CARCH}.kver"
  else
     echo "Warning! You are trying to install the i686 version of this package. STUN is not supported on such platforms."
     echo "The standard MANJARO version of this package will be installed instead."
     bash -c "read -p 'Press [ENTER] to continue...'"
     echo "${pkgver}-${pkgrel}-STUN x32" > "${pkgdir}/boot/${pkgbase}-${CARCH}.kver"
  fi

  # make room for external modules
  local _extramodules="extramodules-${_basekernel}${_kernelname:--STUN}"
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
  sed "${_subst}" ${srcdir}/${pkgbase}.preset |
    install -Dm644 /dev/stdin "${pkgdir}/etc/mkinitcpio.d/${pkgbase}.preset"

  # install pacman hooks
  sed "${_subst}" ${srcdir}/60-linux.hook |
    install -Dm644 /dev/stdin "${pkgdir}/usr/share/libalpm/hooks/60-${pkgbase}.hook"
  sed "${_subst}" ${srcdir}/90-linux.hook |
    install -Dm644 /dev/stdin "${pkgdir}/usr/share/libalpm/hooks/90-${pkgbase}.hook"
}

package_linux419-STUN-headers() {
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
    echo "Warning! You are trying to install the i686 version of this package. STUN is not supported on such platforms."
    echo "The standard MANJARO version of this package will be installed instead."
    bash -c "read -p 'Press [ENTER] to continue...'"
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
