# pacfzf

An fzf-based interactive package manager for Arch Linux.

## Commands

| Command | Description |
|---|---|
| `pacfzf install` | Browse and install packages from official repositories |
| `pacfzf remove` | Browse and remove installed packages from official repositories |
| `pacfzf aur-install` | Browse and install packages from the AUR |
| `pacfzf aur-remove` | Browse and remove installed AUR/foreign packages |
| `pacfzf info` | Browse installed packages and inspect details/files |
| `pacfzf history` | Browse the pacman transaction log (most recent first) |

## Usage

```
pacfzf <command>

Commands:
  install         Browse and install packages from official repositories
  remove          Browse and remove installed packages from official repositories
  aur-install     Browse and install packages from the AUR
  aur-remove      Browse and remove installed AUR/foreign packages
  info            Browse installed packages and view package details
  history         Browse the pacman transaction log (most recent first)

Options:
  -h, --help      Show help
  -V, --version   Show version
```

### Key bindings (all commands)

| Key | Action |
|---|---|
| `TAB` | Multi-select a package |
| `ENTER` | Confirm selection and proceed |
| `ESC` | Cancel |
| `ALT-P` | Toggle preview pane |
| `ALT-B` | Toggle PKGBUILD view (`aur-install`, `aur-remove` only) |
| `ALT-F` | Toggle installed files view (`info` only) |
| `ALT-D / ALT-U` | Scroll preview down/up (half page) |
| `ALT-J / ALT-K` | Scroll preview line by line |

## Configuration

pacfzf reads `~/.config/pacfzf/config` on startup (respects `$XDG_CONFIG_HOME`).

| Variable | Default | Description |
|---|---|---|
| `AUR_QUERY_HELPER` | `yay` | AUR helper for package listing and previews |
| `AUR_INSTALL_HELPER` | `paru` | AUR helper for installing and removing packages |

Example `~/.config/pacfzf/config`:

```sh
AUR_QUERY_HELPER=paru
AUR_INSTALL_HELPER=paru
```

Any helper compatible with standard yay/paru flags works (e.g. `yay`, `paru`, `trizen`).

## Dependencies

- `fzf`
- `pacman`
- `yay` — default `AUR_QUERY_HELPER` (listing and previews)
- `paru` — default `AUR_INSTALL_HELPER` (AUR installs and removes)

Both yay and paru can be swapped out via the [config file](#configuration).

## Installation

### From AUR

```
paru -S pacfzf
```

### Manually

Requires [scdoc](https://sr.ht/~sircmpwn/scdoc/) to compile the man page:

```
scdoc < pacfzf.1.scd > pacfzf.1
sudo install -Dm755 pacfzf /usr/bin/pacfzf
sudo install -Dm644 pacfzf.1 /usr/share/man/man1/pacfzf.1
sudo install -Dm644 completions/bash/pacfzf /usr/share/bash-completion/completions/pacfzf
sudo install -Dm644 completions/zsh/_pacfzf /usr/share/zsh/site-functions/_pacfzf
sudo install -Dm644 completions/fish/pacfzf.fish /usr/share/fish/vendor_completions.d/pacfzf.fish
```
