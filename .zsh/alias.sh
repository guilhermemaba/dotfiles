# vim:ft=zsh:ts=4:sts=4:sw=4:

alias l=ls
alias ...='cd ../..'
alias ....='cd ../../..'

alias vi=vim
alias -s tex=vim
alias -s c=vim
alias -s cpp=vim

alias ag='ag --pager="less -R"'
alias difftree='rsync -crv --dry-run '
alias emacs='emacs -nw'
alias gcc='colorgcc'
alias info='info --vi-keys'
alias vi='vim -p'
alias ls='ls --color'

#alias grep='grep --color=auto'
#alias grep='ack --pager="less -R"'
#alias ack='ack --pager="less -R"'

if (( ! $+commands[ack] && $+commands[ack-grep] )); then
    alias ack='ack-grep';
fi

# TODO: [- or -] may happen inside a regex, needs to change the start and end for deletion
if (( $+commands[wdiff] )); then
    filter_changes='/\[-/,/-\]/; /{\+/,/\+}/'

    if (( $+commands[cwdiff] )); then
        function _diff(){ \wdiff $@ | awk $filter_changes | cwdiff -f }
    else
        function _diff(){ \wdiff $@ | awk $filter_changes }
    fi
elif (( $+commands[colordiff] && $+commands[diff] )); then
    function _diff(){ \diff $@ | colordiff }
fi

if whence _diff > /dev/null; then
    alias diff=_diff
fi

if (( $+commands[php] )); then
    function urlencode() { php -r '$s = isset($argv[1]) ? $argv[1] : fgets(STDIN); echo urlencode($s) . "\n";' $@ }
    function urldecode() { python -c "import sys, urllib as ul; print ul.unquote_plus(sys.argv[1])" $1 }
fi

if (( $+commands[python] )); then
    if ! whence _diff > /dev/null; then
        function urlencode() { python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1])" $1 }
    fi
    function format() { python2.7 -c "import sys; print sys.argv[1].format(*(sys.argv[2:] if len(sys.argv) > 2 else sys.stdin))" $@; }
fi

# https://nicholassterling.wordpress.com/2012/03/30/a-zsh-map-function/
function map_() {
    print -- "${(e)2}"
}

function map() {
    typeset f="$1"
    shift
    typeset x
    typeset result=0

    for x; {
        map_ "$x" "$f" || result=$?
    }

    return $result
}

function mapa() {
    typeset f="\$[ $1 ]"; shift
    map "$f" "$@"
}

function urlencodestream() {
    mapa urlencode
}
