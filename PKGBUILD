# Maintainer: Dunky <braxtinmoss13@gmail.com>
pkgname=pacfzf
pkgver=0.3.0
pkgrel=1
pkgdesc="fzf-based interactive package manager for Arch Linux"
arch=('any')
url="https://github.com/mossbraxtin/pacfzf"
license=('MIT')
depends=('fzf' 'pacman' 'yay' 'paru')
makedepends=('scdoc')
source=("$pkgname-$pkgver.tar.gz::$url/archive/v$pkgver.tar.gz")
b2sums=('49f59a1a55fad68cff06b4f18b8a9c29b7090f06209e534a68213ba999f22794cd4d0379e65122d54c5a000e663127bed60aeca4803037692865fb648ce08e07')

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
install -Dm644 completions/bash/pacfzf "$pkgdir/usr/share/bash-completion/completions/pacfzf"
install -Dm644 completions/zsh/_pacfzf "$pkgdir/usr/share/zsh/site-functions/_pacfzf"
install -Dm644 completions/fish/pacfzf.fish "$pkgdir/usr/share/fish/vendor_completions.d/pacfzf.fish"
}
