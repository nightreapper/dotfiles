# Path to your oh-my-zsh installation.
export TERM="xterm-256color"

#export ZSH=/Users/dario/.oh-my-zsh

source ~/.antigen/antigen.zsh

antigen use oh-my-zsh

DISABLE_AUTO_TITLE="true"

antigen bundle git
antigen bundle bundler
antigen bundle rake
antigen bundle ruby
antigen bundle rails
antigen bundle vi-mode

#antigen theme https://github.com/iam4x/zsh-iterm-touchbar

antigen bundle zsh-users/zsh-syntax-highlighting

export DEFAULT_USER=`whoami`

POWERLEVEL9K_MODE='awesome-fontconfig'
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status vi_mode)
POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_DIR_SHOW_WRITABLE=true
POWERLEVEL9K_DIR_PATH_SEPARATOR="%F{black} $(print $'\uE0B1') %F{black}"

antigen theme bhilburn/powerlevel9k powerlevel9k

antigen apply

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
#ZSH_THEME="cobalt2"

# zsh tmux settings
ZSH_TMUX_AUTOSTART='true'

#BASE16_SHELL=$HOME/.config/base16-shell/
#[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

alias allani-start="tmuxinator allani-web"
alias allani-stop="tmuxinator stop allani-web"

alias bers="bundle exec rails s"
alias berc="bundle exec rails c"

alias grbi='git rebase -i `git merge-base ${1:-master} HEAD`'

#history-substring-search fix for OS X 10.9 up
#bindkey '^[[A' history-substring-search-up
#bindkey '^[[B' history-substring-search-down

#source $ZSH/oh-my-zsh.sh

#export PATH="/usr/local/opt/qt@5.5/bin:$PATH"
#source /Users/dario/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
