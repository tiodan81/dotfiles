if [ -s ~/.bashrc ]; then
  source ~/.bashrc
fi

alias gs='git status'
alias ga='git add '
alias gcm='git commit'
alias gc='git commit -m'
alias gb='git branch '
alias gd='git diff'
alias glog='git log --oneline'
alias gamend='git commit --amend'
alias gbr='git branch -D'
alias gum='git co master; git pl master'
alias gmm='git merge origin/master'
alias gsr='git reset HEAD^'
alias ghard='git reset --hard'
alias gnb='git checkout -b'

alias npml='npm list --depth=0'
alias npmlg='npm list -g --depth=0'

function __current_branch_action {
  echo  "git $1`git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`"
  eval  "git $1`git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`"
}

function gmox {
  __current_branch_action "merge origin/"
}

function grox {
  __current_branch_action "rebase origin/"
}
function gpox {
  __current_branch_action "push origin "
}
function gforce {
  __current_branch_action "push --force-with-lease origin "
}

alias gitlog='git log --graph --all --decorate --pretty=format:"%C(magenta)%h %C(blue)%ai %C(green)%an %C(cyan)%s %C(yellow bold)%d"'
alias gf='git fetch -p'
alias gfr='gf; grox'

alias rc='bin/rails c'

[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

export GOPATH="${HOME}/go"
export PATH=${PATH}:"${GOPATH}"/bin

. /Users/danschwartz/.asdf/completions/asdf.bash
. /Users/danschwartz/.asdf/asdf.sh
export PATH="/usr/local/opt/postgresql@10/bin:$PATH"
