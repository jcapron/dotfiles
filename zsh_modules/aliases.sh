# .zshrc aliases
alias zshrc="s $HOME/.zshrc $HOME/Code/dotfiles"
alias src="source $HOME/.zshrc"

# Smartass aliases
alias l='ls -lah'
alias psaux='ps aux | grep'
alias cl="clear"
alias pingjacques="curl -X GET http://jacques-hipchat-bot.herokuapp.com"
alias cbibug="open https://github.com/cbinsights/cbi/issues/new"

alias rickroll="curl -L http://bit.ly/10hA8iC | bash"

# alias sshbotdev="ssh ubuntu@54.236.202.117"
# alias sshbot="ssh ubuntu@10.3.46.161"
alias sshbot="cbi-ssh 10.3.46.161"
alias sshetl="cbi-ssh 10.3.47.45"
alias sshrpdev="ssh 10.1.11.45"
alias sshrpstg="ssh 10.2.8.4"
alias docker_reset="docker-compose stop && docker-compose down && docker volume rm researchportal_php_1 && docker volume rm researchportal_mysqldata && docker-compose rm && docker stop $(docker ps -aq) && docker rm $(docker ps -aq) && docker rmi $(docker images -aq)"

alias cbi-vault="/Users/jcapron/bin/cbi-vault"
