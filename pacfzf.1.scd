pacfzf(1)

# NAME

pacfzf - fzf-based interactive package manager for Arch Linux

# SYNOPSIS

*pacfzf* <command> [options]

# DESCRIPTION

pacfzf provides interactive fzf-based commands for browsing, installing,
removing, and inspecting packages from both official Arch Linux repositories
and the AUR.

# COMMANDS

*install*
	Browse all available official-repository packages not yet installed.
	Preview shows full *pacman -Sii* output.
	Installs selected packages with *sudo pacman -S --noconfirm*.

*remove*
	Browse all installed packages from official repositories.
	Preview shows *pacman -Qi* output.
	Removes selected packages with *sudo pacman -Rns --noconfirm*.

*aur-install*
	Browse all available AUR packages using the configured query helper.
	Preview shows package info. Press *ALT-B* to toggle the PKGBUILD preview.
	Installs selected packages using the configured install helper.

*aur-remove*
	Browse all installed foreign (AUR) packages.
	Preview shows package info. Press *ALT-B* to toggle the PKGBUILD preview.
	Removes selected packages using the configured install helper.

*info*
	Browse all installed packages and inspect them interactively.
	Preview shows *pacman -Qi* output.
	Press *ALT-F* to toggle a list of installed files (*pacman -Ql*).
	Read-only — no install or remove action is performed.

*history*
	Browse the pacman transaction log in reverse chronological order.
	Shows all *installed*, *removed*, and *upgraded* events from
	*/var/log/pacman.log*. Fully fuzzy-searchable.

# CONFIGURATION

pacfzf reads *$XDG_CONFIG_HOME/pacfzf/config* (default:
*~/.config/pacfzf/config*) on startup. The file is sourced as a shell script.

Available variables:

[[ AUR_QUERY_HELPER
:< AUR helper used for package listing and previews. Default: *yay*
|[ AUR_INSTALL_HELPER
:< AUR helper used for installing and removing packages. Default: *paru*

Example config:

```
AUR_QUERY_HELPER=paru
AUR_INSTALL_HELPER=paru
```

Any AUR helper that supports the standard *yay*/*paru* flags (*-Slqa*, *-Siia*,
*-Gpa*, *-S*, *-Rns*) is compatible.

# OPTIONS

*-h*, *--help*
	Show a short help message and exit.

*-V*, *--version*
	Show the version number and exit.

# KEY BINDINGS

The following key bindings apply across all commands:

[[ TAB
:< Toggle selection for a package (multi-select)
|[ ENTER
:< Confirm selection and proceed with install/remove
|[ ESC
:< Cancel and exit without changes
|[ ALT-P
:< Toggle the preview pane
|[ ALT-B
:< Toggle PKGBUILD view (aur-install and aur-remove only)
|[ ALT-F
:< Toggle installed files view (info only)
|[ ALT-D
:< Scroll preview down half a page
|[ ALT-U
:< Scroll preview up half a page
|[ ALT-J
:< Scroll preview down one line
|[ ALT-K
:< Scroll preview up one line

# DEPENDENCIES

*fzf*(1), *pacman*(8)

*yay*(8) and *paru*(8) are the default AUR helpers. These can be overridden
via *AUR_QUERY_HELPER* and *AUR_INSTALL_HELPER* in the config file.

# EXAMPLES

Install a package from the official repositories:

	pacfzf install

Remove an installed AUR package interactively:

	pacfzf aur-remove

Search for and install an AUR package:

	pacfzf aur-install

Inspect an installed package and its files:

	pacfzf info

Browse recent package transactions:

	pacfzf history

# FILES

_~/.config/pacfzf/config_
	Optional shell config file. Sourced at startup if present.

_/usr/share/bash-completion/completions/pacfzf_
	Bash tab-completions.

_/usr/share/zsh/site-functions/_pacfzf_
	Zsh tab-completions.

_/usr/share/fish/vendor_completions.d/pacfzf.fish_
	Fish tab-completions.

# BUGS

Report bugs at: https://github.com/mossbraxtin/pacfzf/issues

# AUTHORS

Maintained by Dunky <braxtinmoss13@gmail.com>.

# SEE ALSO

*pacman*(8), *fzf*(1), *yay*(8), *paru*(8)
