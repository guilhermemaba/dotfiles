function load(){ [[ -f $1 ]] && . $1 }
function require() {
    [[ -f $1 ]] || echo "Missing file $1"
    [[ -f $1 ]] && . $1
}

# require '/etc/profile'        # this is done in /etc/.zprofile
require ~/.zsh/modules.sh
require ~/.zsh/alias.sh
require ~/.zsh/env.sh
require ~/.zsh/options.sh
require ~/.zsh/prompt.sh

load /usr/share/zsh/site-contrib/powerline.zsh
load /usr/share/zsh/plugins/zsh-syntax-highlight/zsh-syntax-highlighting.zsh

# we need to load the plugins before
require ~/.zsh/completion.sh
require ~/.zsh/bindkey.sh

export WORKON_HOME=/virtualenvs
export PROJECT_HOME=/projects
source $(which virtualenvwrapper.sh)
