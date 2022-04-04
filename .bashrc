[[ $- != *i* ]] && return

setxkbmap es
source /usr/share/nvm/init-nvm.sh
HISTSIZE=
PS1='\[\e[0;1;38;5;196m\]\u\[\e[0;2m\]@\[\e[0;38;5;196m\]\h\[\e[0m\]:\[\e[0;1;38;5;196m\]\w\[\e[0;1;2;38;5;196m\] | Time: \[\e[0;2m\]\t\n\[\e[0;1;38;5;196m\]$\[\e[0;5;38;5;196m\]_\[\e[0m\]' 
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export XDG_CONFIG_HOME="$HOME/.config"
export ANDROID_SDK_ROOT="/home/frnkq/Android/Sdk"
export ANDROID_HOME=$ANDROID_SDK_ROOT
export JAVA_HOME="/usr/lib/jvm/default"
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools


alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias gaa='git add -A'
alias gau='git add -U'
alias gchko='git checkout'
alias gcm='git commit -m'
alias gcma='git commit --amend -m'
alias gdff='git diff -U12 --color=always --cached'
alias glg='git log --all --decorate --oneline --graph'
alias gpsh='git push'
alias gshw='git show'
alias gss='git status'
alias gsss='git status -s'
alias h='history'
alias ls='ls -l --classify=always --color=auto'
alias pacman='sudo pacman'
