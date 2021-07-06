# Maintainer: Arthur Rocha de Menezes <arthurstomp@gmail.com>
pkgname="remermaid"
pkgver=0.1
pkgrel=1
arch=("x86_64")
url=""
license=('GPL')
depends=("inotify-tools>=3.20.11.0-1")
source=("git+https://github.com/arthurstomp/remermaid.git")
md5sums=('SKIP')

package() {
	cd "$pkgname"
	mkdir -p "$pkgdir/usr/bin/"
	cp "$pkgname.sh" "$pkgdir/usr/bin/$pkgname"
}
