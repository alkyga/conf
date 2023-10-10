# .bashrc

export EDITOR="vim"
export SVN_EDITOR="vim"
export PYTHONPATH="$HOME/.config/python"

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Source custom aliases
if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

if [ -f ~/.dsys_aliases ]; then
	. ~/.dsys_aliases
fi

dump_mvmt_aliases () {
	for i in "$(sort ~/.config/genalias/mvmt-aliases)"; do
		echo "$i"
	done
}

# .bashrc related
alias bb="vim $HOME/.bashrc"
alias bbb=". $HOME/.bashrc"

# other
alias aa="~/.config/genalias/genalias.sh > ~/.bash_aliases; . ~/.bash_aliases"
alias ea="vi ~/.config/genalias/mvmt-aliases;autoalias;bbb"
alias l="ll"
alias less="less -R"
alias ll="ls -lh"
alias lll="ll"
alias ls="ls --color=auto --group-directories-first"
alias L="ll -A"
alias sstat="svn status"
alias sci="svn ci"
alias tree="tree --dirsfirst -C -L 4"
alias wtf=dump_mvmt_aliases

# vi/vim related
alias view="vim -R"
alias vi="$EDITOR"
alias vim="$EDITOR"
alias vv="vim ~/.config/nvim/init.vim"

# tmux related
TMUX_CONFIG="~/.config/tmux/tmux.conf"
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
shopt -s extglob
set -o vi
stty -ixon

# ENV
export d="$(date --iso-8601)"
PATH=$PATH:$HOME/.local/bin:$HOME/bin
#PS1="\[\033[37m\][\D{%Y%m%d:%H%M%S}|\u@\h|$(/usr/bin/tty | /bin/sed -e 's:/dev/::')] \w\n-> \[\033[00m\]"
#PS1="\[\D{%Y%m%d:%H%M%S}|\u@\h|$(/usr/bin/tty | /bin/sed -e 's:/dev/::')] $(echo $DIRLABEL) \w\n-> "
PS1="\[\D{%Y%m%d:%H%M%S}|\u@\h|$(/usr/bin/tty | /bin/sed -e 's:/dev/::')] \w\n-> "
export PATH
