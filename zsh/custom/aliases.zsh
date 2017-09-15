# Aliases for term utils
alias ll='ls -lFh'
alias la='ls -lA'
alias l='ls -CF'
alias :q='exit'

alias ccat='pygmentize -g'
#openvpn
alias vpn_eisti='sudo systemctl start openvpn-client@eisti.students'

#proxy
alias proxinit='export http_proxy=`gpg --decrypt ~/.proxypw.gpg ` \
    && export https_proxy=$http_proxy && export HTTP_PROXY=$http_proxy \
    && export HTTPS_PROXY=$http_proxy'
#
#Screens
alias screen_home='xrandr --output DP2 --mode 1680x1050 --left-of eDP1'

#venv
alias vsrc="source venv/bin/activate"
alias vnew='virtualenv -p `which python3 ` venv'
#
# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dir_colors && eval "$(dircolors -b ~/.dir_colors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# fip
alias fip='mpv http://chai5she.cdn.dvmr.fr/fip-midfi.mp3'
