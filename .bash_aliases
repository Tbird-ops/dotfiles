alias ls='ls --color=auto'
alias ll='ls -laFtr'
alias la='ls -alF'
alias grep='grep --color=auto'
alias copy='wl-copy'
alias copylast='fc -ln -1 | cut -c 3- | wl-copy'
alias paste='wl-paste -n'

alias vol='docker run -it --rm -v $(pwd):/data:ro blacktop/volatility:plugins $@'
alias vol3='docker run -it --rm -v $(pwd):/data:ro accenturecifr/volatility3 $@'

alias vim='nvim'

alias lg='lazygit'
alias gst='git status'

alias open='xdg-open'
