# Git aliases
alias gs='git status'
alias gca='git add --all && git commit'
alias gpr='git pull --rebase'
alias push='git push'
alias glg="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
alias gco='git checkout'
alias gcom='git checkout master'
alias gphm='git push heroku master'

# Eject button for git
alias gfuck='git reset . && git checkout . && git clean -df'

# More aliases available in the git plugin for oh-my-zsh:
# https://github.com/robbyrussell/oh-my-zsh/blob/master/plugins/git/git.plugin.zsh
