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
alias st='git status'
alias pullr='git pull --rebase'
alias pull='git pull'
alias push='git push'

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

# Laradock
alias laradock-up='cd /data/Lab/laradock && docker-compose up -d nginx mysql phpmyadmin workspace'
alias laradock-down='cd /data/Lab/laradock && docker-compose down'

# Portainer
alias portainer-up='cd /data/Lab/Portainer && docker-compose up -d'
alias portainer-down='cd /data/Lab/Portainer && docker-compose down'

# Vim
alias vimbundle='vim +BundleInstall! +BundleClean +q'
