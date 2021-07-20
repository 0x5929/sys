# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific environment and startup programs

# added bin paths 
PATH="/usr/share/Modules/bin:/usr/local/cuda-11.1/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/opt/bin:$HOME/bin" ; export PATH

# User specific aliases and functions
alias c='chrome &'
alias f='firefox &'
alias t='terminal &'
