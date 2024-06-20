# efl v1.26.3
# enlightenment v0.25.4

dnf -y group install "Development Tools"
dnf config-manager --set-enabled powertools
dnf -y install almalinux-release-devel
dnf -y install \
meson \
cmake \
check-devel \
freetype-devel \
fribidi-devel \
fontconfig-devel \
libpng-devel \
libjpeg-devel \
zlib-devel \
libX11-devel \
libXcursor-devel \
libXrender-devel \
libXrandr-devel \
libXfixes-devel \
libXdamage-devel \
libXcomposite-devel \
libXp-devel \
libXext-devel \
libXinerama-devel \
libXtst-devel \
libXScrnSaver-devel \
libxkbfile \
libxkbcommon-devel \
dbus-devel \
libtiff-devel \
giflib-devel \
libwebp-devel \
openjpeg2-devel \
libspectre-devel \
curl \
libcurl-devel \
openssl-devel \
mesa-libGLU-devel \
mesa-vulkan-devel \
libspectre \
poppler  \
poppler-cpp-devel  \
librsvg2-devel  \
LibRaw-devel  \
libgudev-devel \
libinput-devel \
lua-devel \
 \
libexif-devel \


#lua-devel
#libpam
#libXss-devel
#luajit-devel
#libxcb-devel \
#libxcb-shape-devel \
#libxcb-keysyms1-devel \
#libpulse (pulseaudio's library)
#libsndfile
#libudev (for eeze udev support)
#
#
#systemd
#libblkid & libmount OR libutil-linux
#libgstreamer (1.0 or better)
#bullet
