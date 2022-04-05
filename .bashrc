# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

# vi/vim related
set -o vi
alias view="vim -R"
alias vi="vim"
alias vv="vim ~/.vimrc"

# tmux related
TMUX_CONFIG="~/.config/tmux/.tmux.conf"
alias tn="tmux -u -f $TMUX_CONFIG new"
alias ta="tmux -u -f $TMUX_CONFIG attach"
alias tl="tmux ls"
alias tt="vim $TMUX_CONFIG"

# movement shortcuts
alias pb="cd ~/ansible/playbooks"
alias ah="cd /home/kgdsyssvc/svn/kgainey/playbooks/ad-hoc/"
alias ansm="cd /home/kgdsyssvc/svn/ansible/master"
alias ansp="cd /home/kgdsyssvc/svn/ansible/playbooks"
alias kgd="cd /home/kgdsyssvc/svn/kgainey/docs; ll"

# .bashrc related
alias bb="vim ~/.bashrc"
alias bbb=". ~/.bashrc"

alias tree="tree -C -L 4"
alias less="less -R"
alias lll="ll"

function sshsesh {
  eval $(ssh-agent -s)
  ssh-add
}

fixssh() {
  eval $(tmux show-env -s |grep '^SSH_')
}

PS1="\[\033[37m\][\D{%Y%m%d:%H%M%S}|\u@\h|$(/usr/bin/tty | /bin/sed -e 's:/dev/::')] \w\n-> \[\033[00m\]"

# if ! pgrep -u "$USER" ssh-agent > /dev/null; then
#   ssh-agent > "$XDG_RUNTIME_DIR/ssh-agent.env"
# fi
# if [[ ! "$SSH_AUTH_SOCK" ]]; then
#   source "$XDG_RUNTIME_DIR/ssh-agent.env" >/dev/null
# fi
