# Maintainer: Dunky <braxtinmoss13@gmail.com>
pkgname=pacfzf
pkgver=0.1.1
pkgrel=1
pkgdesc="fzf-based interactive package manager for Arch Linux"
arch=('any')
url="https://github.com/mossbraxtin/pacfzf"
license=('MIT')
depends=('fzf' 'pacman' 'python' 'curl')
optdepends=(
'paru: AUR support'
'yay: AUR support (fallback)'
)
makedepends=('scdoc')
source=("$pkgname-$pkgver.tar.gz::$url/archive/v$pkgver.tar.gz")
b2sums=('9cc9194cf7a6a77759077a9746936b85543618c4ff4ea089c348ea587008a651db6f640244c0f0045660e5196a26f85a01beb59d11bccb3ee61fdbdf46881218')

build() {
cd "$pkgname-$pkgver"
scdoc < pacfzf.1.scd > pacfzf.1
}

package() {
cd "$pkgname-$pkgver"
install -Dm755 pacfzf "$pkgdir/usr/bin/pacfzf"
install -Dm644 pacfzf.1 "$pkgdir/usr/share/man/man1/pacfzf.1"
install -Dm644 LICENSE "$pkgdir/usr/share/licenses/$pkgname/LICENSE"
install -Dm644 README.md "$pkgdir/usr/share/doc/$pkgname/README.md"
}
