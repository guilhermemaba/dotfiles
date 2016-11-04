# vim:ft=zsh:ts=4:sts=4:sw=4:

export PS2="> "
export RPS1="%F{blue}%T%f"

if [[ $UID -eq '0' ]]; then;
    export PS1="%F{green}%m%f@%F{red}%n%f %1. %(?.%#.%F{red}%#%f) "
else;
    export PS1="%F{green}%m%f@%F{cyan}%n%f %1.% # "
fi;

# show the hostname when we are connected through ssh
if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
    if [[ $UID -eq '0' ]]; then;
        export PS1="%M $PS1"
    elif [[ $USER = 'dev' ]]; then;
        export PS1="%M $PS1"
    else;
        export PS1="%M $PS1"
    fi;
fi;
#add-zsh-hook precmd gitprompt
