# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

shopt -s histappend

HISTSIZE=1000
HISTFILESIZE=2000

shopt -s checkwinsize

case "$TERM" in
    xterm-color) color_prompt=yes;;
    screen) PROMPT_COMMAND='echo -n -e "\033k$USER\033\134"';;
esac

force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$UID" = "0" ]; then
    PS1='\[\033[G\]\[\e[1;31m\][\u@\h]\W \$\[\e[0m\] '
else
    PS1='\[\033[G\]\[\e[1;32m\][\u@\h]\W \$\[\e[0m\] '
fi

if [ -f ~/.shell_aliases ]; then
    . ~/.shell_aliases
fi

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
