## History
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=3000
# remove duplicate command
setopt HIST_IGNORE_DUPS

setopt autocd extendedglob nomatch notify
unsetopt beep
bindkey -e

## Comp
autoload -Uz compinit && compinit
zstyle :compinstall filename "${HOME}/.zshrc"

# Archlinux
# zstyle ':completion:*:pacman:*' force-list always
# zstyle ':completion:*:*:pacman:*' menu yes select


# Debian
# zstyle ':completion:*:apt:*' force-list always
# zstyle ':completion:*:*:apt:*' menu yes select
# zstyle ':completion:*:apt-get:*' force-list always
# zstyle ':completion:*:*:apt-get:*' menu yes select
# zstyle ':completion:*:apt-cache:*' force-list always
# zstyle ':completion:*:*:apt-cache:*' menu yes select

## Syntax highlight
# ZSH_SYNTAX_HIGHTLIGHTING='/usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh'
ZSH_SYNTAX_HIGHTLIGHTING='/usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh'
if [[ -f ${ZSH_SYNTAX_HIGHTLIGHTING} ]]; then
  . ${ZSH_SYNTAX_HIGHTLIGHTING}
fi
unset ZSH_SYNTAX_HIGHTLIGHTING

## Dirstack
DIRSTACKFILE="$HOME/.zsh_cache_dirs"
if [[ -f $DIRSTACKFILE ]] && [[ $#dirstack -eq 0 ]]; then
  dirstack=( ${(f)"$(< $DIRSTACKFILE)"} )
  [[ -d $dirstack[1] ]] && cd $dirstack[1]
fi
chpwd() {
  print -l $PWD ${(u)dirstack} >$DIRSTACKFILE
}
DIRSTACKSIZE=20
setopt autopushd pushdsilent pushdtohome
# remove duplicate entries
setopt pushdignoredups
# This reverts the +/- operators.
setopt pushdminus

## Theme
autoload -U colors && colors
# autoload -U promptinit && promptinit
ZSH_THEME='/etc/zsh/theme/fox-dark.theme'
if [[ -e ${ZSH_THEME} ]];then
    . ${ZSH_THEME}
fi
unset ZSH_THEME

## Directory color
LS_COLORS='rs=0:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:tw=30;42:ow=34;42:st=37;44:ex=01;32:'
export LS_COLORS

## Alias
alias ls='ls -F'
alias la='ls -a'
alias ll='ls -lah'

## Neofetch
if [[ -x /usr/bin/neofetch ]];then
    neofetch --color_blocks off
fi
