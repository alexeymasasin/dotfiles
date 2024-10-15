<h1 align="left">BSPWM Dotfiles</h1> 

<table>
      <tr>
            <td>OS</td>
            <td><a target="_blank" href="https://archlinux.org/">Arch Linux</a></td>
            <td rowspan="10">
                  <img align="center" src="https://raw.githubusercontent.com/alexeymasasin/dotfiles/refs/heads/main/images/bspwm.png"/>
                  <br/><br/>
                  <p align="center">
                        <a href="#installation">Installation</a> / <a href="#packages">Packages</a> / <a href="#services">Services</a> / <a href="#fonts">Fonts</a>  / <a href="#gallery">Gallery</a> / <a href="#hotkeys">Hotkeys</a> / <a href="#credit">Credit</a> 
                  </p>
            </td>
      </tr>
      <tr>
            <td>WM</td>
            <td><a target="_blank" href="https://github.com/baskerville/bspwm">BSPWM</a></td>
      </tr>
      <tr>
            <td>Bar</td>
            <td><a target="_blank" href="https://github.com/polybar/polybar">Polybar</a></td>
      </tr>
      <tr>
            <td>Launcher</td>
            <td><a target="_blank" href="https://github.com/davatorium/rofi">Rofi</a></td>
      </tr>
      <tr>
            <td>Compositor</td>
            <td><a target="_blank" href="https://github.com/FT-Labs/picom">Picom</a></td>
      </tr>
      <tr>
            <td>Terminal</td>
            <td><a href="https://alacritty.org/">Alacritty</a></td>
      </tr>
      <tr>
            <td>Notifiy</td>
            <td><a target="_blank" href="https://github.com/dunst-project/dunst">Dunst</a></td>
      </tr>
      <tr>
            <td>Theme</td>
            <td><a target="_blank" href="https://draculatheme.com/gtk">Dracula</a></td>
      </tr>
      <tr>
            <td>Icons</td>
            <td><a target="_blank" href="https://www.gnome-look.org/p/2200291">Colloid Pastel</a></td>
      </tr>
      <tr>
            <td>Cursor</td>
            <td><a target="_blank" href="https://www.gnome-look.org/p/1481466">XCursor Pro Dark</a></td>
      </tr>
      
</table>

<h2 id="installation">Installation</h2>

- Clone this repo to your local machine: `git clone https://github.com/alexeymasasin/dotfiles.git`
- Copy the contents from [this folder](https://github.com/alexeymasasin/dotfiles/tree/main/bspwm) to your `~/` path and reaplace everything
- Make sure that all scripts are executable (if not: `sudo chmod +x <script-file>`)
- Install required <a href="#packages">packages</a> and <a href="#fonts">fonts</a>
- Enable required <a href="#services">services</a>

<table align="center">
   <tr>
      <th align="center">
         WARNING
      </th>
   </tr>
   <tr>
      <td align="center">
        THIS CONFIGURATION IS DESIGNED FOR 1920X1080 MONITORS,
        SOME FUNCTIONALITY OF THE SHELL MAY NOT WORK AS IT SHOULD.
        IN THIS CASE YOU NEED TO MAKE ADJUSTMENTS MANUALLY.
        IF YOU FIND ERRORS IN THE SHELL, PLEASE REPORT THE PROBLEM.
   </tr>
</table>

<h2 id="fonts">Fonts</h2>

Run `fc-cache -fv fonts` and then install following fonts:
- https://www.nerdfonts.com/font-downloads <br>
      Arch package: `ttf-jetbrains-mono-nerd`
- https://fonts.google.com/noto/specimen/Noto+Color+Emoji <br>
      Arch package: `noto-fonts-emoji`

<h2 id="services">Services</h2>

To enable a service run `systemctl enable <service-name>`
      
<details>
      <summary><b>output of "systemctl list-unit-files | grep enabled"</b></summary>
      
      bluetooth-autoconnect.service                enabled         disabled
      bluetooth.service                            enabled         disabled
      getty@.service                               enabled         enabled
      ly.service                                   enabled         disabled
      NetworkManager-dispatcher.service            enabled         disabled
      NetworkManager-wait-online.service           enabled         disabled
      NetworkManager.service                       enabled         disabled
      openrgb.service                              enabled         disabled
      systemd-boot-update.service                  disabled        enabled
      systemd-confext.service                      disabled        enabled
      systemd-fsck-root.service                    enabled-runtime disabled
      systemd-homed-activate.service               disabled        enabled
      systemd-homed.service                        disabled        enabled
      systemd-network-generator.service            disabled        enabled
      systemd-networkd-wait-online.service         disabled        enabled
      systemd-networkd.service                     disabled        enabled
      systemd-pstore.service                       disabled        enabled
      systemd-remount-fs.service                   enabled-runtime disabled
      systemd-resolved.service                     disabled        enabled
      systemd-sysext.service                       disabled        enabled
      systemd-timesyncd.service                    enabled         enabled
      systemd-journald-audit.socket                disabled        enabled
      systemd-mountfsd.socket                      disabled        enabled
      systemd-nsresourced.socket                   disabled        enabled
      systemd-userdbd.socket                       enabled         enabled
      machines.target                              disabled        enabled
      reboot.target                                disabled        enabled
      remote-cryptsetup.target                     disabled        enabled
      remote-fs.target                             enabled         enabled
      fstrim.timer                                 enabled         disabled
</details>

<h2 id="packages">Packages</h2>

To install a package run `sudo pacman -S <package-name>` or `sudo pacman -Syu <package-name>`

<b>pacman -Q</b>     
```
a52dec abseil-cpp acl ada adobe-source-code-pro-fonts adwaita-cursors adwaita-icon-theme adwaita-icon-theme-legacy alacritty alsa-card-profiles alsa-lib alsa-topology-conf alsa-ucm-conf alsa-utils amd-ucode aom archlinux-keyring argon2 aribb24 at-spi2-core attr audit autoconf automake avahi base base-devel bash binutils bison blueberry bluetooth-autoconnect bluez bluez-libs bluez-tools bluez-utils brotli bspwm bzip2 c-ares ca-certificates ca-certificates-mozilla ca-certificates-utils cairo cairomm-1.16 cantarell-fonts coreutils cryptsetup curl dav1d db5.3 dbus dbus-broker dbus-broker-units dbus-units dconf debugedit default-cursors deskreen desktop-file-utils device-mapper diffutils discord dmenu double-conversion duktape dunst e2fsprogs efibootmgr efivar ell exo expat faad2 fakeroot feh ffmpeg ffmpeg4.4 fftw file filesystem findutils firefox flac flameshot flex fontconfig freeglut freetype2 fribidi fuse-common fuse2 fuse3 gawk gc gcc gcc-libs gcr-4 gdbm gdk-pixbuf2 gettext giflib girara git glib-networking glib2 glibc glibmm-2.68 glslang glu gmp gnome-bluetooth gnu-free-fonts gnupg gnutls gobject-introspection-runtime google-chrome gperftools gpgme gpick gpm graphene graphite grep groff grub gsettings-desktop-schemas gsettings-system-schemas gsm gssdp gst-plugin-pipewire gst-plugins-bad-libs gst-plugins-base-libs gstreamer gtest gtk-update-icon-cache gtk2 gtk3 gtk4 gtkmm-4.0 guile gupnp gupnp-igd gvfs gzip harfbuzz hicolor-icon-theme hidapi highway htop hunspell hwdata i2c-tools i3lock iana-etc icu imath imlib2 intel-gmmlib intel-media-driver iproute2 iptables iputils iso-codes iwd jansson jasper jbigkit json-c json-glib jsoncpp kbd kcoreaddons keyutils kguiaddons5 kmod krb5 l-smash lame lcms2 libappindicator-gtk3 libarchive libass libassuan libasyncns libatasmart libavc1394 libb2 libblockdev libblockdev-crypto libblockdev-fs libblockdev-loop libblockdev-mdraid libblockdev-nvme libblockdev-part libblockdev-swap libbluray libbpf libbs2b libbytesize libcanberra libcap libcap-ng libcdio libcdio-paranoia libcloudproviders libcolord libconfig libcups libdaemon libdatrie libdbusmenu-glib libdbusmenu-gtk3 libdca libdeflate libdispatch libdovi libdrm libdvbpsi libdvdnav libdvdread libebml libedit libelf libepoxy libev libevdev libevent libexif libfdk-aac libffi libfontenc libfreeaptx libgcrypt libgirepository libglvnd libgnomekbd libgpg-error libgtop libgudev libice libidn libidn2 libiec61883 libinput libisl libjpeg-turbo libjxl libksba liblc3 libldac libldap libluv libmad libmatroska libmfx libmm-glib libmng libmnl libmodplug libmpc libmpcdec libmpdclient libmpeg2 libmysofa libndp libnetfilter_conntrack libnewt libnfnetlink libnftnl libnghttp2 libnghttp3 libnice libnl libnm libnma libnma-common libnotify libnsl libnvme libogg libomxil-bellagio libopenmpt libp11-kit libpcap libpciaccess libpgm libpipewire libplacebo libpng libproxy libpsl libptytty libpulse libraw1394 librsvg libsamplerate libsasl libseccomp libsecret libsigc++-3.0 libsm libsndfile libsodium libsoup3 libsoxr libssh libssh2 libstemmer libsynctex libsysprof-capture libtar libtasn1 libteam libthai libtheora libtiff libtirpc libtool libunibreak libunistring libunwind libupnp libusb libutf8proc libuv libva libva-intel-driver libva-mesa-driver libvdpau libverto libvlc libvorbis libvpl libvpx libvterm libwacom libwebp libwireplumber libx11 libxau libxcb libxcomposite libxcrypt libxcursor libxcvt libxdamage libxdg-basedir libxdmcp libxext libxfce4ui libxfce4util libxfixes libxfont2 libxft libxi libxinerama libxkbcommon libxkbcommon-x11 libxkbfile libxklavier libxml2 libxmu libxpm libxrandr libxrender libxshmfence libxss libxt libxtst libxv libxxf86vm licenses lilv linux linux-api-headers linux-firmware linux-firmware-whence llvm-libs lm_sensors lmdb lsof lua lua51-lpeg luajit lv2 lxappearance ly lz4 lzo m4 mailcap make mbedtls2 md4c mdadm mesa minizip mkinitcpio mkinitcpio-busybox mobile-broadband-provider-info mpdecimal mpfr mpg123 msgpack-c mtdev nano ncurses neofetch neovim nettle network-manager-applet networkmanager nm-connection-editor node-gyp nodejs-lts-iron nodejs-nopt noto-fonts-cjk noto-fonts-emoji npm npth nspr nss ntfs-3g ocl-icd openal opencore-amr openexr openh264 openjpeg2 openrgb openssh openssl opus orc os-prober p11-kit pacman pacman-mirrorlist pam pambase pango pangomm-2.48 parted patch pavucontrol pciutils pcre pcre2 pcsclite perl perl-error perl-mailtools perl-timedate picom pinentry pipewire pipewire-alsa pipewire-audio pipewire-jack pixman pkgconf polkit polybar popt portaudio procps-ng protobuf psmisc pulseaudio pulseaudio-bluetooth python python-dbus python-gobject python-prctl python-setproctitle qt5-base qt5-declarative qt5-svg qt5-translations qt5-wayland qt5-x11extras qt6-base qt6-declarative qt6-imageformats qt6-svg qt6-translations qt6-wayland ranger rav1e readline ripgrep rnnoise rofi rtkit rubberband rxvt-unicode rxvt-unicode-terminfo sbc sdl2 sed semver serd shaderc shadow shared-mime-info slang smartmontools snappy sord sound-theme-freedesktop speex speexdsp spirv-tools sqlite sratom srt startup-notification sudo svt-av1 sxhkd systemd systemd-libs systemd-sysvcompat taglib tar tdb telegram-desktop texinfo thunar thunar-volman tinysparql tpm2-tss tree-sitter tree-sitter-c tree-sitter-lua tree-sitter-markdown tree-sitter-query tree-sitter-vim tree-sitter-vimdoc tslib ttf-liberation tzdata udisks2 unibilium unzip util-linux util-linux-libs v4l-utils vapoursynth vi vid.stab vim vim-runtime visual-studio-code-bin vlc vmaf volume_key vulkan-headers vulkan-icd-loader vulkan-intel vulkan-radeon wayland webrtc-audio-processing-1 wget which wireless_tools wireplumber wpa_supplicant x264 x265 xapp xcb-proto xcb-util xcb-util-cursor xcb-util-image xcb-util-keysyms xcb-util-renderutil xcb-util-wm xcb-util-xrm xclip xcolor xdg-utils xdo xf86-input-libinput xf86-video-amdgpu xf86-video-ati xf86-video-nouveau xf86-video-vmware xfconf xkeyboard-config xorg-fonts-encodings xorg-server xorg-server-common xorg-setxkbmap xorg-xauth xorg-xinit xorg-xkbcomp xorg-xmodmap xorg-xprop xorg-xrandr xorg-xrdb xorg-xset xorgproto xvidcore xxhash xz yarn zathura zeromq zimg zix zlib zram-generator zstd
```
<b>pacman -Qe</b>
```
alacritty alsa-utils amd-ucode base base-devel blueberry bluetooth-autoconnect bluez-utils bspwm deskreen discord dmenu dunst efibootmgr feh firefox flameshot git google-chrome gpick grub gst-plugin-pipewire gvfs htop i2c-tools i3lock intel-media-driver iwd libpulse libva-intel-driver libva-mesa-driver linux linux-firmware lsof lxappearance ly nano neofetch neovim network-manager-applet networkmanager nodejs-lts-iron noto-fonts-cjk noto-fonts-emoji npm ntfs-3g openrgb os-prober pavucontrol picom pipewire pipewire-alsa pipewire-jack polybar pulseaudio pulseaudio-bluetooth python-prctl ranger ripgrep rofi rxvt-unicode smartmontools sxhkd telegram-desktop thunar-volman ttf-liberation unzip vi vim visual-studio-code-bin vlc vulkan-intel vulkan-radeon wget wireless_tools wireplumber xclip xcolor xdg-utils xdo xf86-video-amdgpu xf86-video-ati xf86-video-nouveau xf86-video-vmware xorg-server xorg-xinit xorg-xrandr yarn zathura zram-generator
```

<h2 id="gallery">Gallery</h2>
<p align="center">
<img src="https://raw.githubusercontent.com/alexeymasasin/dotfiles/refs/heads/main/images/bspwm.png" />
    &nbsp;&nbsp;
<img src="https://raw.githubusercontent.com/alexeymasasin/dotfiles/refs/heads/main/images/ranger.png" />
</p>

<h2 id="hotkeys">HotKeys</h2>
<table>
      <tr>
            <th colspan="2">Main Hotkeys</th>
      </tr>
      <tr>
            <td>Terminal</td>
            <td>super + enter</td>
      </tr>
      <tr>
            <td>Rofi menu</td>
            <td>super + d</td>
      </tr>
      <tr>
            <td>Screenshot</td>
            <td>print</td>
      </tr>
      <tr>
            <td>Lock screen</td>
            <td>super + shift + q</td>
      </tr>
      <tr>
            <td>Color picker</td>
            <td>super + shift + x</td>
      </tr>
      <tr>
            <td>Random wallpaper</td>
            <td>super + alt + w</td>
      </tr>
      <tr>
            <th colspan="2"><b>BSPWM</b></th>
      </tr>
      <tr>
            <td>Close a node</td>
            <td>super + w</td>
      </tr>
      <tr>
            <td>Kill a node</td>
            <td>super + shift + w</td>
      </tr>
      <tr>
            <td>Restart BSPWM & Polybar</td>
            <td>super + alt + r</td>
      </tr>
      <tr>
            <td>Restart SXHKD</td>
            <td>super + esc</td>
      </tr>
      <tr>
            <td>Switch desktops</td>
            <td>super + 1 ... 9</td>
      </tr>
      <tr>
            <td>Move a node to desktop</td>
            <td>super + shift + 1 ... 9</td>
      </tr>
      <tr>
            <td>Swith a node to floating Mode</td>
            <td>super + s</td>
      </tr>
      <tr>
            <th colspan="2"><b>Launch Applications</b></th>
      </tr>
      <tr>
            <td>Telegram</td>
            <td>super + shift + t</td>
      </tr>
      <tr>
            <td>Visual Studio Code</td>
            <td>super + shift + v</td>
      </tr>
      <tr>
            <td>Firefox</td>
            <td>super + shift + f</td>
      </tr>
      <tr>
            <td>Firefox (Private Window)</td>
            <td>super + shift + i</td>
      </tr>
      <tr>
            <td>Chrome</td>
            <td>super + shift + c</td>
      </tr>
      <tr>
            <td>Thunar</td>
            <td>super + shift + n</td>
      </tr>
      <tr>
            <td>Ranger</td>
            <td>super + shift + m</td>
      </tr>
      <tr>
            <td>Volume Controller</td>
            <td>super + shift + p</td>
      </tr>
      <tr>
            <th colspan="2"><b>Open .config files</b></th>
      </tr>
      <tr>
            <td>BSPWMRC</td>
            <td>super + shift + f1</td>
      </tr>
      <tr>
            <td>SXHKDRC</td>
            <td>super + shift + f2</td>
      </tr>
      <tr>
            <td>Polybar</td>
            <td>super + shift + f3</td>
      </tr>
      <tr>
            <td>Picom</td>
            <td>super + shift + f4</td>
      </tr>
            <th colspan="2"><b>Move / resize nodes</b></th>
      </tr>
      <tr>
            <td>Expand a window</td>
            <td>super + alt + {h,j,k,l}</td>
      </tr>
      <tr>
            <td>Contract a window</td>
            <td>super + alt + shift + {h,j,k,l}</td>
      </tr>
      <tr>
            <td>Switch nodes positions</td>
            <td>super + shift + {h,j,k,l}</td>
      </tr>
      <tr>
            <td>Move a focused floating window with keyboard</td>
            <td>super + {Left, Down, Up, Right}</td>
      </tr>
      <tr>
            <td>Move a focused floating window with mouse</td>
            <td>super + left-click</td>
      </tr>
      <tr>
            <td>Resize a focused floating window with mouse</td>
            <td>super + right-click</td>
      </tr>
</table>

Other hotkeys are in `~/.config/sxhkd/sxhkdrc`.

<h2 id="credit">Credit for inspiration</h2>

[Zproger / bspwm-dotfiles](https://github.com/Zproger/bspwm-dotfiles)
