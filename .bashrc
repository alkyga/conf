# .bashrc

export EDITOR="nvim"

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# .bashrc related
alias bb="vim ~/.bashrc"
alias bbb=". ~/.bashrc"
alias tree="tree -C -L 4"
alias less="less -R"
alias ls="ls --color=auto --group-directories-first"
alias ll="ls -lh"
alias l="ll"
alias L="ll -A"
alias lll="ll"

# vi/vim related
alias view="vim -R"
alias vi="$EDITOR"
alias vim="$EDITOR"
#alias vv="vim ~/.vimrc"
alias vv="vim ~/.config/nvim/init.vim"

# tmux related
TMUX_CONFIG="~/.config/tmux/.tmux.conf"
alias tn="tmux -u -f $TMUX_CONFIG new"
alias ta="tmux -u -f $TMUX_CONFIG attach"
alias tl="tmux ls"
alias tt="vim $TMUX_CONFIG"

# movement shortcuts
aliaslist="ad: $HOME/svn/ansible/devl
adm		$ad/master
adp		$ad/playbook
ap		$HOME/svn/ansible/prod
apm		$ap/master
app		$ap/playbook
kgd		$HOME/svn/kgainey/docs
kg		$HOME/svn/kgainey/docs
ah		$adm/roles/apache_httpd
ahl		$adm/roles/apache_httpd
ahp		$adm/roles/apache_httpd
ahlp	$adm/roles/apache_httpd"

export ad="$HOME/svn/ansible/devl"
export ap="$HOME/svn/ansible/prod"
export add="$ad/docs"
export adm="$ad/master"
export apd="$ap/docs"
export apm="$ap/master"
export app="$ap/playbook"
export adp="$ad/playbook"
export kg="$HOME/svn/kgainey/"
export kgd="$HOME/svn/kgainey/docs"
export ah="$adm/roles/apache_httpd/"
export ahl="$adm/roles/apache_httpd_laravel/"

alias ad="cd $ad; ll;"
alias ap="cd $ap; ll;"
alias add="cd $ap; ll;"
alias adm="cd $adm; ll;"
alias apm="cd $apm; ll;"
alias adp="cd $adp; ll;"
alias app="cd $app; ll;"
alias kgd="cd $kgd; ll;"
alias kg="cd $kg; ll;"
alias kgad="cd $kgad; ll"
alias ah="cd $ah; ll;"
alias ahl="cd $ahl; ll;"

# alias builder
#echo $aliaslist | sed -r 's/^(.+) (.+)$/export \1=\"\2\"\n alias \1=\"cd \$\2; ll;\"/' 

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
PS1="\[\D{%Y%m%d:%H%M%S}|\u@\h|$(/usr/bin/tty | /bin/sed -e 's:/dev/::')] \w\n-> "
export EDITOR="vim"
export PATH
