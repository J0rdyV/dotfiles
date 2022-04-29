# Path to your oh-my-zsh installation.
export ZSH="/home/jordy/.config/oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="mh"

# https://github.com/ergenekonyigit/lambda-gitster
# ZSH_THEME="lambda-gitster"

# New line before prompt
precmd() { print "" }

# Set list of themes to pick from when loading at random
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Add to .zshrc, before this plugin is loaded:
# Use Control-D instead of Escape to switch to NORMAL mode
# VIM_MODE_VICMD_KEY='^D'

plugins=(git vi-mode fancy-ctrl-z)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

export LANG=en_US.UTF-8
export EDITOR='nvim'
export VISUAL='nvim'

# Completion navigation
zmodload zsh/complist
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

# Vi CLI mode
autoload -Uz edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line

# Ctrl+Backspace to remove a word
bindkey '^H' backward-kill-word

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases
alias yt='(){ youtube-dl --extract-audio --add-metadata --xattrs --embed-thumbnail --audio-quality 0 --audio-format mp3 -i $1 ;}'
alias rdp='(){ xfreerdp /w:1920 /h:1000 /v:$1 ;}'
alias webc='(){ v4l2-ctl -d /dev/video0 -c exposure_absolute=$1; }'
alias bl='(){ sudo echo $1 > /sys/class/backlight/nv_backlight/brightness; }'
alias t='task'
alias i='timew'
alias orders='clear && cd /srv/http/byod-orders && bat .idea/TODO.md'
alias support='cd /srv/http/support-admin'
alias batt='cat /sys/class/power_supply/BAT0/capacity'
alias rm='rm -i'
alias sloc="find -name '*.php' | xargs wc -l"
alias weather='curl wttr.in/\?0pQ'
alias v='nvim'
alias vi='nvim'
alias vim='nvim'
alias gma='git checkout master && git pull && scripts/buildCss.sh && composer install && composer update'
alias newsboat='newsboat -u ~/.config/newsboat/urls -C ~/.config/newsboat/config'

export PATH=$PATH:/home/jordy/.local/bin

