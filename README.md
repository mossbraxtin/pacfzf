# pacfzf

An fzf-based interactive package manager for Arch Linux.

## Commands

| Command | Description |
|---|---|
| `pacfzf install` | Browse and install packages from official repositories |
| `pacfzf remove` | Browse and remove installed packages from official repositories |
| `pacfzf aur-install` | Search and install packages from the AUR |
| `pacfzf aur-remove` | Browse and remove installed AUR/foreign packages |

## Usage

```
pacfzf <command>

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
| `ALT-D / ALT-U` | Scroll preview down/up (half page) |
| `ALT-J / ALT-K` | Scroll preview line by line |

## Dependencies

- `fzf`
- `pacman`
- `paru` or `yay` (required for `aur-install` and `aur-remove`)
- `python3`, `curl` (used for AUR RPC search in `aur-install`)

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
```
