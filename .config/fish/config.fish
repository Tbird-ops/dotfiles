if status is-interactive
    # Commands to run in interactive sessions can go here

    # Make starship prompt default
    starship init fish | source

    # Enable FZF for shell
    fzf --fish | source

    # Enable zoxide for smarter cd command
    zoxide init fish | source

    # Enable Yazi "y" change directory command
    function y
        set tmp (mktemp -t "yazi-cwd.XXXXXX")
        command yazi $argv --cwd-file="$tmp"
        if read -z cwd <"$tmp"; and [ "$cwd" != "$PWD" ]; and test -d "$cwd"
            builtin cd -- "$cwd"
        end
        rm -f -- "$tmp"
    end

    # Add my own aliases
    if test -e /home/tbird/.config/fish/fish_aliases
        source /home/tbird/.config/fish/fish_aliases
    end

    # Various env vars to preserve
    set -x PWNDBG_NO_AUTOUPDATE 1

end
