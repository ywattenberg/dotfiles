alias pmi="sudo pacman -Syu "

if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'


# VPN
alias wgub="sudo wg-quick up berlin"
alias wgdb="sudo wg-quick down berlin"
alias vim="nvim"
alias vi="nvim"
alias rmr="rm -r "

alias android="QT_QPA_PLATFORM=xcb && $ANDROID_HOME/emulator/emulator -avd Pixel_9_Pro"
