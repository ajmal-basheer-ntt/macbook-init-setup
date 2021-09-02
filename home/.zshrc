alias sed=gsed
alias ll="ls -la"
autoload -U +X compinit && compinit
[[ $commands[kubectl] ]] && source <(kubectl completion zsh)
eval $($HOME/.faceless/.venv/bin/_facelesscmd env init)
