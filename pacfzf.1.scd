pacfzf(1)

# NAME

pacfzf - fzf-based interactive package manager for Arch Linux

# SYNOPSIS

*pacfzf* <command> [options]

# DESCRIPTION

pacfzf provides four interactive fzf-based commands for browsing, installing,
and removing packages from both official Arch Linux repositories and the AUR.

# COMMANDS

*install*
	Browse all available official-repository packages not yet installed.
	Preview shows full *pacman -Sii* output.
	Installs selected packages with *sudo pacman -S*.

*remove*
	Browse all installed packages from official repositories.
	Preview shows *pacman -Qi* output.
	Removes selected packages with *sudo pacman -Rns*.

*aur-install*
	Search the AUR interactively via the AUR RPC API.
	Type a query to load results sorted by popularity.
	Preview shows *paru -Si* (or *yay -Si*) output.
	Press *ALT-B* to toggle the PKGBUILD preview.
	Installs selected packages with *paru -S* (or *yay -S*).

*aur-remove*
	Browse all installed foreign (AUR) packages.
	Preview shows *pacman -Qi* output.
	Press *ALT-B* to toggle the PKGBUILD preview.
	Removes selected packages with *paru -Rns* (or *yay -Rns*).

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
|[ ALT-D
:< Scroll preview down half a page
|[ ALT-U
:< Scroll preview up half a page
|[ ALT-J
:< Scroll preview down one line
|[ ALT-K
:< Scroll preview up one line

# DEPENDENCIES

*fzf*(1), *pacman*(8), *curl*(1), *python3*(1)

For AUR commands: *paru* or *yay* must be installed.

# EXAMPLES

Install a package from the official repositories:

	pacfzf install

Remove an installed AUR package interactively:

	pacfzf aur-remove

Search for and install an AUR package:

	pacfzf aur-install

# BUGS

Report bugs at: https://github.com/mossbraxtin/pacfzf/issues

# AUTHORS

Maintained by Dunky <braxtinmoss13@gmail.com>.

# SEE ALSO

*pacman*(8), *fzf*(1), *paru*(8)
