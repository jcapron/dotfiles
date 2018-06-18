ZSH=$HOME/.oh-my-zsh
ZSH_MODULES=$HOME/Code/dotfiles/zsh_modules
ZSH_THEME="gitsome"
COMPLETION_WAITING_DOTS="true"
DISABLE_AUTO_TITLE="true"
UNBUNDLED_COMMANDS=(foreman) # commands you don't want the bundler plugin to run

plugins=(
  autojump
  bundler
  brew
  compleat
  gem
  git
  git-remote-branch
  osx
  rake-fast
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
source $ZSH_MODULES/path.sh
source $ZSH_MODULES/aliases.sh
source $ZSH_MODULES/autojump.sh
source $ZSH_MODULES/cbi.sh
source $ZSH_MODULES/go.sh
source $ZSH_MODULES/git.sh
source $ZSH_MODULES/mysql.sh
source $ZSH_MODULES/nginx.sh
source $ZSH_MODULES/php.sh
source $ZSH_MODULES/postgresql.sh
source $ZSH_MODULES/py.sh
source $ZSH_MODULES/rbenv.sh
source $ZSH_MODULES/variables.sh

cbi-scp() {
  if [ ! -f ~/.ssh/blessid ]; then
    echo -e 'y'|ssh-keygen -f ~/.ssh/blessid -b 4096 -t rsa -N ''
    ssh-keygen -y -f ~/.ssh/blessid > ~/.ssh/blessid.pub
  fi
  ip=`echo $@ | perl -nle '/(10\.[0-3]\.\d+\.\d+)/ && print $1'`
  python ~/.ssh/bless_client/bless_client.py -d $ip
  scp -F /dev/null -o "IdentitiesOnly true" -o "StrictHostKeyChecking false" -i ~/.ssh/blessid -i ~/.ssh/blessid-cert.pub $@
}

clear
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"

