source /usr/local/share/antigen/antigen.zsh

# Load Antigen configurations
antigen init ~/.antigenrc

# Add Homebrew's executable directory to the front of the PATH
export PATH=/usr/local/bin:$PATH

#Nvm
export NVM_LAZY_LOAD=true

# Override localization settings to use en_US (for example git)
export LANG=en_US.UTF-8

# saml2aws shell completion
eval "$(saml2aws --completion-script-zsh)"

#AWS
export AWS_DEFAULT_REGION="eu-central-1"
#export AWS_DEFAULT_PROFILE=account

#OpenSSL
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"

#Alias
alias y='yarn'
alias dc='docker-compose'

#TIER
alias n="nvm use"
alias yd="n && yarn db:start"
alias yb="n && yarn backend start:watch"
alias yf="n && yarn frontend start"
alias yi="n && yarn install"

#Git alias
# View commits in local branch vs. master
alias current='git log $(git rev-parse --abbrev-ref HEAD) ^main --no-merges'
# View unpushed commits
alias unpushed='git log @{u}..HEAD'
# View all unpushed commits on all branches
alias all-unpushed='git log --branches --not --remotes --oneline'
# View latest unpushed commits on all branches
alias unpushed-branches='git log --branches --not --remotes --oneline --decorate --simplify-by-decoration'
# graphical for all branches
alias git-grog='git config --global alias.grog 'log --graph --abbrev-commit --decorate --all --format=format:"%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(dim white) - %an%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n %C(white)%s%C(reset)"''

#nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
