autoload -Uz compinit && compinit
alias k=kubectl
[[ $commands[kubectl] ]] && source <(kubectl completion zsh)
compdef __start_kubectl k

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/terraform terraform

source /opt/homebrew/opt/nvm/nvm.sh

alias ll="ls -la"
alias helm3=helm
