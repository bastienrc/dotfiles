# Alias
# Gestion du 'ls' : couleur & ne touche pas aux accents
alias ls='ls --classify --tabsize=0 --literal --color=auto --show-control-chars --human-readable'

# Demande confirmation avant d'écraser un fichier
alias cp='cp --interactive'
alias mv='mv --interactive'
alias rm='rm --interactive'

# Raccourcis pour 'ls'
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'

# Git
#alias st='git status'
#alias pullr='git pull --rebase'
#alias pull='git pull'
#alias push='git push'

# Quelques alias pratiques
alias c='clear'
alias less='less --quiet'
alias s='cd ..'
alias df='df --human-readable'
alias du='du --human-readable'
alias md='mkdir'
alias rd='rmdir'
alias upgrade='sudo aptitude update && sudo aptitude dist-upgrade && sudo aptitude clean'
alias grep='grep --color=auto'

# Alias pour mes scripts
# alias majdroits='sudo sh ~/.scripts/majdroits'

# Vim
alias vimbundle='vim +BundleInstall! +BundleClean +q'

# Docker
alias dls='docker container ls'
alias dlsa='docker container ls -a'
alias dstopall='docker container stop $(docker container ls -aq)'
alias drmall='docker container rm $(docker container ls -aq)'
dshell(){
    (docker container exec -ti $1 bash) || (docker container exec -ti $1 sh)
}

# PHP-CLI
alias php='docker run -it --rm --name php-cli -v "$PWD":/usr/src/myapp -w /usr/src/myapp php:alpine php'
