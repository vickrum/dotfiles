[[ -r ~/.bashrc ]] && . ~/.bashrc

set -o vi

COLOUR_TIME=`tput setaf 6`
COLOUR_HOST=`tput setaf 4`
COLOUR_DIR=`tput setaf 5`
COLOUR_GIT_BRANCH=`tput setaf 2`
COLOUR_RESET=`tput op`
GIT_PS1_SHOWDIRTYSTATE=1
# PS1='${COLOUR_HOST}\h${COLOUR_RESET}:${COLOUR_DIR}\W$(__git_ps1 "${COLOUR_RESET}:${COLOUR_GIT_BRANCH}%s${COLOUR_RESET}")\$ '
PS1="\n"
PS1="${PS1}[${COLOUR_TIME}\A${COLOUR_RESET}]"
PS1="${PS1}[${COLOUR_HOST}\h${COLOUR_RESET}:${COLOUR_DIR}\w${COLOUR_RESET}]"
PS1="${PS1}\$(__git_ps1 '${COLOUR_RESET}[${COLOUR_GIT_BRANCH}%s${COLOUR_RESET}]')"
PS1="${PS1}\n\$ "
