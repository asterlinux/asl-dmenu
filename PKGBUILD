# Maintainer: Derek Taylor <derek@distrotube.com>
pkgname=asl-dmenu
pkgver=5.0.r22.8695f74
pkgrel=2
epoch=
pkgdesc="A build of dmenu patched for centering, borders, grids, numbers, line height, mouse support, fuzzy matching and highlighting."
arch=(x86_64)
url="https://github.com/asterlinux/asl-dmenu.git"
license=('MIT')
groups=()
depends=(ttf-hack ttf-joypixels)
makedepends=(git)
checkdepends=()
optdepends=()
provides=(dmenu)
conflicts=(dmenu)
replaces=()
backup=()
options=()
install=
changelog=
source=("git+$url")
noextract=()
md5sums=('SKIP')
validpgpkeys=()

build() {
	cd asl-dmenu
	make X11INC=/usr/include/X11 X11LIB=/usr/lib/X11
}

package() {
    cd asl-dmenu  
    mkdir -p ${pkgdir}/opt/${pkgname}
    cp -rf * ${pkgdir}/opt/${pkgname}
    make PREFIX=/usr DESTDIR="${pkgdir}" install
    install -Dm644 LICENSE "${pkgdir}/usr/share/licenses/${pkgname}/LICENSE"
    install -Dm644 README.org "${pkgdir}/usr/share/doc/${pkgname}/README.org"
}
