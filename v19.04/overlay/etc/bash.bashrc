if [ -z "$PS1" ]
then
  return
fi

export EDITOR="vim"
export PAGER="less"
export CLICOLOR="1"
export LSCOLORS="Gxfxcxdxbxegedabagacad"
export GREP_COLOR="1;32"
export IGNOREEOF="0"
export HISTSIZE="100000"
export HISTFILESIZE="100000"
export HISTCONTROL="ignoreboth"

shopt -s cmdhist
shopt -s checkwinsize
shopt -s histappend
shopt -s cdspell

complete -c command type which
complete -d cd
complete -cf sudo

alias vi="vim"
alias ls="ls --color=auto"
alias lsa="ls -lahi"
alias l="ls -la"
alias ll="ls -alFh"
alias ..="cd .."
alias ...="cd ../.."
alias grep="grep --color=auto"
alias rgrep="grep -rn"
alias history="fc -l 1"

if [ -x /usr/lib/command-not-found -o -x /usr/share/command-not-found/command-not-found ]; then
  function command_not_found_handle {
    if [ -x /usr/lib/command-not-found ]
    then
      /usr/lib/command-not-found -- "$1"
      return $?
    elif [ -x /usr/share/command-not-found/command-not-found ]
    then
      /usr/share/command-not-found/command-not-found -- "$1"
      return $?
    else
      printf "%s: command not found\n" "$1" >&2
      return 127
    fi
  }
fi

bash_prompt() {
  local NONE="\[\033[0m\]"

  local U="\[\033[01;32m\]"
  local R="\[\033[01;31m\]"
  local S="\[\033[01;37m\]"
  local H="\[\033[01;35m\]"
  local D="\[\033[01;34m\]"

  if [[ "${EUID}" == "0" ]] ; then
    export PS1="\n$R\u$S@$H\h: $D\w # $NONE"
  else
    export PS1="\n$U\u$S@$H\h: $D\w # $NONE"
  fi
}

bash_prompt && unset bash_prompt
