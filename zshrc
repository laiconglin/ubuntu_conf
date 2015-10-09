# load zgen
source "${HOME}/laiconglin/zgen/zgen.zsh"

# check if there's no init script
if ! zgen saved; then
    echo "Creating a zgen save"
    zgen oh-my-zsh
    # plugins
    zgen oh-my-zsh plugins/git
    zgen oh-my-zsh plugins/sudo
    zgen oh-my-zsh plugins/command-not-found
    zgen load zsh-users/zsh-syntax-highlighting
    # plugins
    zgen oh-my-zsh plugins/git
    zgen oh-my-zsh plugins/sudo
    zgen oh-my-zsh plugins/command-not-found
    zgen oh-my-zsh plugins/pip
    zgen oh-my-zsh plugins/sudo
    zgen oh-my-zsh plugins/aws
    zgen oh-my-zsh plugins/chruby
    zgen oh-my-zsh plugins/colored-man
    zgen oh-my-zsh plugins/git
    zgen oh-my-zsh plugins/github
    zgen oh-my-zsh plugins/knife
    zgen oh-my-zsh plugins/knife_ssh
    zgen oh-my-zsh plugins/python
    zgen oh-my-zsh plugins/rsync
    zgen oh-my-zsh plugins/screen
    zgen oh-my-zsh plugins/vagrant

    zgen load zsh-users/zsh-syntax-highlighting
    zgen load chrissicool/zsh-256color


    #zgen load /path/to/super-secret-private-plugin

    zgen load zsh-users/zsh-history-substring-search
    zgen load tarruda/zsh-autosuggestions

    # completions
    zgen load zsh-users/zsh-completions src

    # theme
    #zgen oh-my-zsh themes/miloshadzic
    zgen oh-my-zsh themes/arrow

    # save all to init script
    zgen save
fi

zle-line-init() {
    zle autosuggest-start
}
zle -N zle-line-init

##autosuggestion
bindkey '^f' vi-forward-word
bindkey '^e' vi-end-of-line

source "${HOME}/.lairc"
