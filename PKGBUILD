# Maintainer: Dunky <braxtinmoss13@gmail.com>
pkgname=pacfzf
pkgver=0.1.3
pkgrel=1
pkgdesc="fzf-based interactive package manager for Arch Linux"
arch=('any')
url="https://github.com/mossbraxtin/pacfzf"
license=('MIT')
depends=('fzf' 'pacman' 'yay' 'paru')
makedepends=('scdoc')
source=("$pkgname-$pkgver.tar.gz::$url/archive/v$pkgver.tar.gz")
b2sums=('ec51cdca545945befadb3fcd2737dd879dc29e23ff67647375d9335616014dbbfb5980bbaca615df1ad200eca568958a1c4184e3e8f980280ecd1905ecb11bce')

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
