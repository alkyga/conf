# .bashrc

export EDITOR="nvim"
export SVN_EDITOR="nvim"
export PYTHONPATH="$HOME/.config/python"

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Source custom aliases
if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

dump_mvmt_aliases () {
	for i in "$(sort ~/.config/genalias/mvmt-aliases)"; do
		echo "$i"
	done
}

# .bashrc related
alias bb="vim $HOME/.bashrc"
alias bbb=". $HOME/.bashrc"
alias tree="tree -C -L 4"
alias less="less -R"
alias ls="ls --color=auto --group-directories-first"
alias ll="ls -lh"
alias l="ll"
alias L="ll -A"
alias lll="ll"
alias aa="~/.config/genalias/genalias.sh > ~/.bash_aliases; . ~/.bash_aliases"
alias ea="vi ~/.config/genalias/mvmt-aliases;autoalias;bbb"
alias wtf=dump_mvmt_aliases

# vi/vim related
alias view="vim -R"
alias vi="$EDITOR"
alias vim="$EDITOR"
alias vv="vim ~/.config/nvim/init.vim"

# tmux related
TMUX_CONFIG="~/.config/tmux/.tmux.conf"
alias tn="tmux -u -f $TMUX_CONFIG new"
alias ta="tmux -u -f $TMUX_CONFIG attach"
alias tl="tmux ls"
alias tt="vim $TMUX_CONFIG"

# shell opts
shopt -s autocd
shopt -s cdable_vars
shopt -s cdspell
shopt -s dirspell
shopt -s cmdhist
shopt -s direxpand
shopt -s expand_aliases
shopt -s histappend
shopt -s nocaseglob
set -o vi

# ENV
PATH=$PATH:$HOME/.local/bin:$HOME/bin
#PS1="\[\033[37m\][\D{%Y%m%d:%H%M%S}|\u@\h|$(/usr/bin/tty | /bin/sed -e 's:/dev/::')] \w\n-> \[\033[00m\]"
#PS1="\[\D{%Y%m%d:%H%M%S}|\u@\h|$(/usr/bin/tty | /bin/sed -e 's:/dev/::')] $(echo $DIRLABEL) \w\n-> "
#PS1="\[\D{%Y%m%d:%H%M%S}|\u@\h|$(/usr/bin/tty | /bin/sed -e 's:/dev/::')] \w\n-> "
PROMPT_COMMAND='PS1X=$(p="${PWD#${HOME}}"; [ "${PWD}" != "${p}" ] && printf "~";IFS=/; for q in ${p:1}; do printf /${q:0:1}; done; printf "${q:1}")'

color_prompt=yes
if [ "$color_prompt" = yes ]; then
    PS1='\[\033[34m\]\[\D{%Y%m%d:%H%M%S}\[\033[37m\]|\[\033[31m\]${PS1X}\[\033[37m\]|${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt
export PATH
