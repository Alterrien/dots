# ctrlp shortcut
ctrlp() {
    </dev/tty nvim -c CtrlP
}
zle -N ctrlp

bindkey "^p" ctrlp
