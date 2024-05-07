# New line before prompt
precmd() { print "" }

# Enable colors and change prompt:
autoload -U colors && colors

# source: https://salferrarello.com/zsh-git-status-prompt/
# Autoload zsh add-zsh-hook and vcs_info functions (-U autoload w/o substition, -z use zsh style)
autoload -Uz add-zsh-hook vcs_info
# Enable substitution in the prompt.
setopt prompt_subst
# Run vcs_info just before a prompt is displayed (precmd)
add-zsh-hook precmd vcs_info
# add ${vcs_info_msg_0} to the prompt
# e.g. here we add the Git information in red  
PROMPT='%F{green}%1~ %F{yellow}${vcs_info_msg_0_}%f%# '
#PS1='%B%{$fg[green]%}%1~ %{$fg[yellow]%}${vcs_info_msg_0_}%{$reset_color%} '

# Enable checking for (un)staged changes, enabling use of %u and %c
zstyle ':vcs_info:*' check-for-changes true
# Set custom strings for an unstaged vcs repo changes (*) and staged changes (+)
zstyle ':vcs_info:*' unstagedstr ' *'
zstyle ':vcs_info:*' stagedstr ' +'
# Set the format of the Git information for vcs_info
zstyle ':vcs_info:git:*' formats       '(%b%u%c) '
zstyle ':vcs_info:git:*' actionformats '(%b|%a%u%c) '

setopt autocd		# Automatically cd into typed directory.
stty stop undef		# Disable ctrl-s to freeze terminal.
setopt interactive_comments

# History in cache directory:
HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE="${XDG_CACHE_HOME:-$HOME/.cache}/zsh/history"
ZSH_COMPDUMP="${XDG_CACHE_HOME:-$HOME/.cache}/zsh/.zcompdump-${(%):-%m}-${ZSH_VERSION}"

# Load aliases and shortcuts if existent.
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc"

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# vi mode
bindkey -v
export KEYTIMEOUT=1
bindkey '^R' history-incremental-search-backward

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

export GPG_TTY=$(tty)

# gruvbox colors and font in tty
if [ "$TERM" = "linux" ]; then
    setfont ter-p20n
    echo -en "\e]P0000000" #black
    echo -en "\e]P8928374" #darkgrey
    echo -en "\e]P1CC241D" #darkred
    echo -en "\e]P9FB4934" #red
    echo -en "\e]P298971A" #darkgreen
    echo -en "\e]PAB8BB26" #green
    echo -en "\e]P3D79921" #brown / dark yellow
    echo -en "\e]PBFABD2F" #yellow
    echo -en "\e]P4458588" #darkblue
    echo -en "\e]PC83A598" #blue
    echo -en "\e]P5B16286" #darkmagenta
    echo -en "\e]PDD3869B" #magenta
    echo -en "\e]P6689D6A" #darkcyan
    echo -en "\e]PE8EC07C" #cyan
    echo -en "\e]P7A89984" #lightgrey
    echo -en "\e]PFEBDBB2" #white
    clear #for background artifacting
fi
