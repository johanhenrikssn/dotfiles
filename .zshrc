source /opt/homebrew/share/antigen/antigen.zsh

# Load Antigen configurations
antigen init ~/.antigenrc

# Add Homebrew's executable directory to the front of the PATH
export PATH=/opt/homebrew/bin:$PATH

#Nvm
export NVM_LAZY_LOAD=true

# Override localization settings to use en_US (for example git)
export LANG=en_US.UTF-8

#AWS
export AWS_DEFAULT_REGION="eu-central-1"
#Alias
alias y='yarn'
alias dc='docker-compose'

# pnpm
export PNPM_HOME="$HOME/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
alias p='pnpm'
alias pi='pnpm i'
alias pd='pnpm dev'

# centi
alias c='centi'
alias cdb='centi database'

#Git alias
# View commits in local branch vs. master
alias current='git log $(git rev-parse --abbrev-ref HEAD) ^main --no-merges'
# View unpushed commits
alias unpushed='git log @{u}..HEAD'
# View all unpushed commits on all branches
alias all-unpushed='git log --branches --not --remotes --oneline'
# View latest unpushed commits on all branches
alias unpushed-branches='git log --branches --not --remotes --oneline --decorate --simplify-by-decoration'

#nvm
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

eval "$(direnv hook zsh)"

export PATH="$HOME/.local/bin/:$PATH"
