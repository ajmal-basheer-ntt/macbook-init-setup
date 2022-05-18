# Fig pre block. Keep at the top of this file.
. "$HOME/.fig/shell/zprofile.pre.zsh"
eval "$(/opt/homebrew/bin/brew shellenv)"
export GOPATH=/Users/ajmal.basheer/go
#export PATH=/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/bin:/Users/ajmal.basheer/go/bin:/Users/ajmal.basheer/Library/Python/3.8/bin:/Library/Python/3.8/site-packages
export PATH=/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/bin:/Users/ajmal.basheer/go/bin
export GPG_TTY=$(tty)

PATH="/opt/homebrew/opt/gnu-sed/libexec/gnubin:$PATH"

# Setting PATH for Python 2.7
# The original version is saved in .zprofile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

# Setting PATH for Python 3.9
# The original version is saved in .zprofile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.9/bin:${PATH}"
export PATH

# Fig post block. Keep at the bottom of this file.
. "$HOME/.fig/shell/zprofile.post.zsh"
ajmal.basheer@ajmalbasheer-MacBook-Pro ~ %
ajmal.basheer@ajmalbasheer-MacBook-Pro ~ % cat .zshrc
# Fig pre block. Keep at the top of this file.
. "$HOME/.fig/shell/zshrc.pre.zsh"
autoload -U +X compinit && compinit
alias k=kubectl
[[ $commands[kubectl] ]] && source <(kubectl completion zsh)
compdef __start_kubectl k

alias helm3=helm
alias sed=gsed
alias ll="ls -la"

# faceless
eval $($HOME/.faceless/.venv/bin/_facelesscmd env init)
#eval $($HOME/.faceless/.dev/bin/_facelesscmd env init)
# set npm token
export NPM_TOKEN=$(cat ~/.npmrc|tail -c 37)

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Fig post block. Keep at the bottom of this file.
. "$HOME/.fig/shell/zshrc.post.zsh"
export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"
