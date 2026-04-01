set -l commands install remove aur-install aur-remove info history

# Disable file completions
complete -c pacfzf -f

# Subcommands (only when no subcommand has been given yet)
complete -c pacfzf -n "not __fish_seen_subcommand_from $commands" \
    -a install -d 'Browse and install packages from official repositories'
complete -c pacfzf -n "not __fish_seen_subcommand_from $commands" \
    -a remove -d 'Browse and remove installed packages from official repositories'
complete -c pacfzf -n "not __fish_seen_subcommand_from $commands" \
    -a aur-install -d 'Browse and install packages from the AUR'
complete -c pacfzf -n "not __fish_seen_subcommand_from $commands" \
    -a aur-remove -d 'Browse and remove installed AUR/foreign packages'
complete -c pacfzf -n "not __fish_seen_subcommand_from $commands" \
    -a info -d 'Browse installed packages and view package details'
complete -c pacfzf -n "not __fish_seen_subcommand_from $commands" \
    -a history -d 'Browse the pacman transaction log (most recent first)'

# Flags
complete -c pacfzf -n "not __fish_seen_subcommand_from $commands" \
    -s h -l help -d 'Show help message'
complete -c pacfzf -n "not __fish_seen_subcommand_from $commands" \
    -s V -l version -d 'Show version information'
