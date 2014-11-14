# Lines configured by zsh-newuser-install
HISTFILE=~/.zhistfile
HISTSIZE=1000
SAVEHIST=1000

# For PuTTY
export TERM=xterm-256color

bindkey -v
bindkey '^R' history-incremental-search-backward

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/vickrum/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# prompt
autoload -Uz promptinit vcs_info
promptinit
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' unstagedstr '%F{157}*'
zstyle ':vcs_info:*' stagedstr '%F{11}+'
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' formats '[%F{120}%b%u%c%f]'
zstyle ':vcs_info:*' actionformats '[%F{120}%b%u%c%f:%F{87}%a%f]'
setopt prompt_subst
function prompt()
{
    git branch > /dev/null 2> /dev/null && echo '±' && return
    echo '%(0#.#.$)'
}
add-zsh-hook precmd vcs_info
PROMPT='
[%F{216}%T%f][%F{172}%m%f:%F{222}${PWD/#$HOME/~}%f]${vcs_info_msg_0_}
$(prompt) '

# title
case $TERM in
    putty*|xterm*|screen*)
        function title() { print -Pn "\e]0;%m: ${PWD/#$HOME/~}\a" }
        add-zsh-hook precmd title
        ;;
esac

. $HOME/.commonrc
