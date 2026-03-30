# Add Homebrew's executable directory to the front of the PATH
export PATH=/opt/homebrew/bin:$PATH

# nvm (lazy loaded via zsh-nvm plugin)
export NVM_DIR="$HOME/.nvm"
export NVM_LAZY_LOAD=true

# Antidote plugin manager
source /opt/homebrew/opt/antidote/share/antidote/antidote.zsh
antidote load ~/.zsh_plugins.txt

# Pure prompt
autoload -Uz promptinit && promptinit && prompt pure

# Override localization settings to use en_US (for example git)
export LANG=en_US.UTF-8

#AWS
export AWS_DEFAULT_REGION="eu-central-1"

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

# eza (ls replacement)
alias ls='eza --icons --group-directories-first'
alias l='eza -lah --icons --group-directories-first --git --time-style=relative'
alias la='eza -lah --icons --group-directories-first --git --time-style=relative'
alias ll='eza -lh --icons --group-directories-first --git --time-style=relative'
alias lt='eza --tree --level=2 --icons --group-directories-first'

# Git aliases
# View commits in local branch vs. master
alias current='git log $(git rev-parse --abbrev-ref HEAD) ^main --no-merges'
# View unpushed commits
alias unpushed='git log @{u}..HEAD'
# View all unpushed commits on all branches
alias all-unpushed='git log --branches --not --remotes --oneline'
# View latest unpushed commits on all branches
alias unpushed-branches='git log --branches --not --remotes --oneline --decorate --simplify-by-decoration'

# fzf (ctrl+r: history, ctrl+t: files, alt+c: cd)
source <(fzf --zsh)

eval "$(direnv hook zsh)"

export PATH="$HOME/.local/bin/:$PATH"
