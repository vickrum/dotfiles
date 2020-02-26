# history

HISTSIZE=16384
SAVEHIST=16384
HISTFILE=~/.zhistory

setopt append_history
setopt completeinword
setopt extended_history
setopt hist_find_no_dups
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_no_functions
setopt hist_no_store
setopt hist_reduce_blanks
setopt hist_save_no_dups
setopt inc_append_history
setopt share_history

# For PuTTY
export TERM=xterm-256color

stty -ixon # Disable flow control

bindkey -v
bindkey '^R' history-incremental-search-backward
bindkey '^[p' history-beginning-search-backward
bindkey '^[n' history-beginning-search-forward

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/vickrum/.zshrc'

autoload -Uz compinit
fpath=(~/utils/comp/zsh/ $fpath)
compinit
# End of lines added by compinstall

# prompt
autoload -Uz promptinit vcs_info
promptinit
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' unstagedstr '%F{157}*'
zstyle ':vcs_info:*' stagedstr '%F{11}+'
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' formats '%F{120}%b%u%c%f'
zstyle ':vcs_info:*' actionformats '%F{120}%b%u%c%f:%F{87}%a%f'
setopt prompt_subst

function prompt()
{
    git branch > /dev/null 2> /dev/null && echo '$' && return
    echo '%(0#.#.$)'
}

add-zsh-hook precmd vcs_info

function jobcount() {
  # needs work. often overcounts.
  local stopped=$(jobs | wc -l)
  if (($stopped)); then
    echo -n "%F{111}${stopped}%f"
  fi
}

function tmux_pane() {
    if [ "$TMUX" ]; then
        echo -n "[%F{105}$(tmux display-message -p '#P')%f]"
    fi
}

function docker-ip() {
  sudo docker inspect --format '{{ .NetworkSettings.Networks.local.IPAddress }}' "$@"
}

PROMPT='
%F{69}%T%f %F{69}%m%f %F{43}${PWD/#$HOME/~}%f ${vcs_info_msg_0_} $(jobcount)
$(prompt) '

# title
case $TERM in
    putty*|xterm*|screen*)
        function title() { print -Pn "\e]0;%m: ${PWD/#$HOME/~}\a" }
        add-zsh-hook precmd title
        ;;
esac

alias ls='ls --color=auto'
alias ll='ls -lphAF'
alias ct='ctags -R *'
alias grep='grep --colour=always'

which pyenv > /dev/null
if [ $? -eq 0 ]; then
    eval "$(pyenv init -)"
fi

which rbenv > /dev/null
if [ $? -eq 0 ]; then
    eval "$(rbenv init -)"
fi
