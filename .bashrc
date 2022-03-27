[[ $- != *i* ]] && return

setxkbmap es
alias ls='ls -l --classify=always --color=auto'
alias pacman='sudo pacman'
alias gss='git status'
alias gsss='git status -s'
alias gshw='git show'
alias gdff='git diff -U12 --color=always --cached'
alias glg='git log --all --decorate --oneline --graph'
alias gaa='git add -A'
alias gau='git add -U'
alias gcm='git commit -m'
alias gcma='git commit --amend -m'
alias gpsh='git push'
alias gchko='git checkout'
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias scripts='/usr/bin/git --git-dir=$HOME/.scripts/ --work-tree=$HOME/Scripts/'

alias phpunit='/home/frnkq/programming/bmba/api/vendor/bin/phpunit'
alias bmbapi='cd programming/bmba/api/ && php artisan serve --port=1215'
alias bmbadmin='cd programming/bmba/admin/ && ng serve'
PS1='[\u@\h \W]\$ '


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export ANDROID_SDK_ROOT="/home/frnkq/Android/Sdk"
export ANDROID_HOME=$ANDROID_SDK_ROOT
export JAVA_HOME="/usr/lib/jvm/default"
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools
HISTSIZE=
HISTFILESIZE=
. "$HOME/.cargo/env"

