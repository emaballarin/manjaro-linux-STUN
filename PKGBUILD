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

pkgbase=linux420-STUN
pkgname=('linux420-STUN' 'linux420-STUN-headers')
_kernelname=-STUN
_aufs=20181217
_basekernel=4.20
_basever=420
_aufs=20190211
_bfq=v9
_bfqdate=20190204
_wireguard=0.0.20190227
_sub=13
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
        "https://www.kernel.org/pub/linux/kernel/v4.x/patch-${pkgver}.xz"

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
        "aufs4.20.4+-${_aufs}.patch.bz2"
        'aufs4-base.patch'
        'aufs4-kbuild.patch'
        'aufs4-loopback.patch'
        'aufs4-mmap.patch'
        'aufs4-standalone.patch'
        'tmpfs-idr.patch'
        'vfs-ino.patch'

        ## MANJARO VANILLA (BFQ upstream support)
        #"0001-BFQ-${_bfq}-${_bfqdate}.patch::https://github.com/Algodev-github/bfq-mq/compare/0adb328...698937e.patch"
        0001-BFQ-${_bfq}-${_bfqdate}.patch::https://raw.githubusercontent.com/sirlucjan/kernel-patches/master/4.20/bfq-sq-mq/4.20-bfq-sq-mq-v9r1-2K190204-rc1.patch

        ## MANJARO VANILLA (ARCH Patches)
        0001-add-sysctl-to-disallow-unprivileged-CLONE_NEWUSER-by.patch

        ## MANJARO VANILLA (HID Patches)
        # Still none.

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
        "https://raw.githubusercontent.com/clearlinux-pkgs/linux/master/0124-use-lfence-instead-of-rep-and-nop.patch"
        "https://raw.githubusercontent.com/clearlinux-pkgs/linux/master/0125-do-accept-in-LIFO-order-for-cache-efficiency.patch"
        "https://raw.githubusercontent.com/clearlinux-pkgs/linux/master/0127-locking-rwsem-spin-faster.patch"

        ## STUN PATCHES (Intel Clear Linux Project - CVE Fixes)
        "https://raw.githubusercontent.com/clearlinux-pkgs/linux/master/0002-vhost-vsock-fix-vhost-vsock-cid-hashing-inconsistent.patch"
        "https://raw.githubusercontent.com/clearlinux-pkgs/linux/master/CVE-2019-8980.patch"
        "https://raw.githubusercontent.com/clearlinux-pkgs/linux/master/bbr.patch"

        ## STUN PATCHES (Wireguard - Kernel autopatcher)
        "https://git.zx2c4.com/WireGuard/snapshot/WireGuard-${_wireguard}.tar.xz"

        ## STUN PATCHES (Kernel custom patches)
        "000ker1-manjaro-stun-tickat600.patch"
        "000ker2-manjaro-stun-tcpcake.patch"

        ## STUN PATCHES (Alfred Chen's PDS Scheduler - downloaded locally, with patches)
        "v4.20_pds099n.patch"

        ## STUN PATCHES (GraySky patch - GCC optimizations)
        "grayskygcc.patch::https://raw.githubusercontent.com/graysky2/kernel_gcc_patch/master/enable_additional_cpu_optimizations_for_gcc_v8.1%2B_kernel_v4.13%2B.patch")

sha256sums=('ad0823183522e743972382df0aa08fb5ae3077f662b125f1e599b0b2aaa12438'
            'db8a5472aaf0c7500c95661c81a9cd501d8fa3996238b6ddcf6ac55a511a2a43'

            ## CONFIGURATION FILE (due to frequent updates, for now)
            'SKIP'

            'f5903377d29fc538af98077b81982efdc091a8c628cb85566e88e1b5018f12bf'
            'b44d81446d8b53d5637287c30ae3eb64cae0078c3fbc45fcf1081dd6699818b5'
            '8634091ef2d9c59baf3474f1ea6311086baa524cc0ea060bb11143afcb8b1c58'
            'ae2e95db94ef7176207c690224169594d49445e04249d2499e9d2fbc117a0b21'
            'f7fff46bf963f6b1cf53b65b51d77749a59586e429c4c056e01dfdab78a6120b'
            '2891876a566e91aa7b12823ec523ac6b0ac988cab4dfb61f7630b8299a7f2417'
            'a42d5d3732e794aa618d86b5d35b78d67b2954247c7c9f79f899521003fe36ee'
            '298703c7dc231cc28c5949e2c96f2b86a1a11ff592862ff61e4f35a348db2e14'
            '6d03acb120c076c22ad5846f68090e24f0f4388cf0a6d3f2ba0d099731f6454f'
            '6c9520147d7c7c3e0eb187c22429f32741765f302f36ebcd9444a25f9cf0f641'
            'ff4ec0fc6bd3d43ae22c3a84e21fde96729521802cbe2b4f8fa5ef80da8819d3'
            '78fd61b9d76f5009f3fd3aa77c2d6b968c3e870cd2fad4d1d7cb72864f1bb32b'
            '5504d2c0c1c0937624bae1c9d10b6044532e059c3c86fde5e7a88b61ccac0adc'
            '0998de1fd20f531f4f147e42af78137ee44c549dcfc9b6027ca91b5c791af11e'
            '37b86ca3de148a34258e3176dbf41488d9dbd19e93adbd22a062b3c41332ce85'
            'a504f6cf84094e08eaa3cc5b28440261797bf4f06f04993ee46a20628ff2b53c'
            'e096b127a5208f56d368d2cb938933454d7200d70c86b763aa22c38e0ddb8717'
            '8c1c880f2caa9c7ae43281a35410203887ea8eae750fe8d360d0c8bf80fcc6e0'
            '1144d51e5eb980fceeec16004f3645ed04a60fac9e0c7cf88a15c5c1e7a4b89e'
            'dd4b69def2efacf4a6c442202ad5cb93d492c03886d7c61de87696e5a83e2846'
            '028b07f0c954f70ca37237b62e04103e81f7c658bb8bd65d7d3c2ace301297dc'
            'c8b0cb231659d33c3cfaed4b1f8d7c8305ab170bdd4c77fce85270d7b6a68000'
            '8dbb5ab3cb99e48d97d4e2f2e3df5d0de66f3721b4f7fd94a708089f53245c77'
            'a7aefeacf22c600fafd9e040a985a913643095db7272c296b77a0a651c6a140a'
            'e9f22cbb542591087d2d66dc6dc912b1434330ba3cd13d2df741d869a2c31e89'
            '27471eee564ca3149dd271b0817719b5565a9594dc4d884fe3dc51a5f03832bc'
            '60e295601e4fb33d9bf65f198c54c7eb07c0d1e91e2ad1e0dd6cd6e142cb266d'
            '035ea4b2a7621054f4560471f45336b981538a40172d8f17285910d4e0e0b3ef'

            # Clear Linux
            'eb26172f27859c264a67b788eac8c8a8a9d6ee207e1ec783188153cf5192d695'
            '300146e9c6e12466524ecd2cdbeccb6989445915bb35bc209463afb21fbc355a'
            '9901e3ee35a72a1a8dec53819fd05766f0d62d5658aec79ef47a7b8f598b6f12'
            '60400b4af3f9f4e870096f60a02ef736625a853d6422cca1fe4bf2b096057d62'
            '1b068866602ffd07d71630a6d1bd9f53d0880d2f0b3c84c1720b6437abb82c34'
            '1e0962b8719eb81205ecde9fb541886fe0b9dae0469a5383b214b1c214ec2e23'
            '8f0ed08305f03e456bdf69c5c82d0064dbe6d1ded4bf849188399c37bddefb46'
            '3fde44ba09f41fcbec6a8de4cff56db180bbadde6ad41994e262190d1f63b727'
            '20222d7e15ca01bbcd94239a5a070b55e11552dbc737e7c2256735b91a71525e'
            'a583f494a5013e729dc7788868fbbcaf10f47ed845ed05d084743bb72adbe359'
            '156cd64bb4f6e74c02fdb97aee62c9740079539b06cbf6fb85ca44f531115a6a'
            'e03aed7207b828f23f84aa6fbf9aaafe741b24fafe04526e80aa40d52f8b9c16'
            '5a345edd54e5a5c4476383933eac39051d17cc7ba91ccf2de188c8424f2e2271'
            '1452ff50ec90b999c89eac17a4223ab53ba70b1df4fb5f19932b189fb962e309'
            '4092058ce0fd5fcd81b3576471e62cb1b095257fb70752c13f3a4405f699cb5a'
            '47490f334b417b51ee777747504c9ea85a321a5801933f2d734fabdc5d2aa5e0'
            'ea681694766c1a94c09a3c6979a4f41c567b77f6452dbdb12f7909acb5e8aa93'
            'c2192ee4b6129450e207428527cbbb08f3a1ccbbaf4fdb94ec786a23191b41c6'

            # Clear Linux - CVE Fixes
            'e6bcab5cf7c112e69f746e4ad465f989123f01c6bf23d85071b51895c099dcaa'
            '69ae4a51eb793319ba176b1cb9b788fa217f4ed04bddfd583c910ef2fa143b6b'
            'fe3c58af296180a29f539669c2cb4e127e781c5a2afc778ffe89f2b3d3dc74a5'

            # WireGuard
            'SKIP'

            # STUN custom
            '21914b7c9cb341fdea933e6f965208676e21449e65842e8e6bab7f4edd9e45ac'
            '2d0ba1fabc10195a9edf4f114027eae93ec8c95000fca662a8fd8c0421b6fe21'

            # PDS Scheduler
            'db1160adfbdb978695cc0b2bde16347c49445ada379a8fb7efe32d02b1105393'

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

  # add latest fixes from stable queue, if needed
  # http://git.kernel.org/?p=linux/kernel/git/stable/stable-queue.git
  # enable only if you have "gen-stable-queue-patch.sh" executed before
  #patch -Np1 -i "${srcdir}/prepatch-${_basekernel}`date +%Y%m%d`"


  echo '--- --- ---'
  echo ' '

  # add STUN patches
  echo 'Patching: STUN CUSTOM'
  patch -Np1 -i "${srcdir}/000ker1-manjaro-stun-tickat600.patch"
  patch -Np1 -i "${srcdir}/000ker2-manjaro-stun-tcpcake.patch"
  echo '--- --- ---'
  echo ' '

  # disable USER_NS for non-root users by default
  echo 'Patching: MANJARO CUSTOM'
  patch -Np1 -i ../0001-add-sysctl-to-disallow-unprivileged-CLONE_NEWUSER-by.patch

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
  patch -Np1 -i "${srcdir}/aufs4.20.4+-${_aufs}.patch"
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
  patch -Np1 -i "${srcdir}/0124-use-lfence-instead-of-rep-and-nop.patch"
  patch -Np1 -i "${srcdir}/0125-do-accept-in-LIFO-order-for-cache-efficiency.patch"
  patch -Np1 -i "${srcdir}/0127-locking-rwsem-spin-faster.patch"
  echo '--- --- ---'
  echo ' '

  # Clear Linux
  echo 'Patching: CLEAR LINUX PROJECT - CVE Fixes'
  patch -Np1 -i "${srcdir}/0002-vhost-vsock-fix-vhost-vsock-cid-hashing-inconsistent.patch"
  #patch -Np1 -i "${srcdir}/CVE-2019-8912.patch" # Already applied in 4.20.12
  patch -Np1 -i "${srcdir}/CVE-2019-8980.patch"
  patch -Np1 -i "${srcdir}/bbr.patch"
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

  # PDS Scheduler - With patches
  echo 'Patching: PDS Scheduler - With patches'
  patch -Np1 -i "${srcdir}/v4.20_pds099n.patch"
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

  # rewrite configuration
  yes "" | make config >/dev/null
}

build() {
  cd "${srcdir}/linux-${_basekernel}"

  # build!
  make ${MAKEFLAGS} LOCALVERSION= bzImage modules
}

package_linux420-STUN() {
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

package_linux420-STUN-headers() {
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
  #install -Dt "${_builddir}/arch/${KARCH}/kernel" -m644 "arch/${KARCH}/kernel/macros.s"

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
