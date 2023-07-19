test -s "./.envrc" && load-local-conf
add-zsh-hook chpwd load-local-conf

# always chdir to the latest dir
_lastdir=/tmp/_lastdir
[ -f $_lastdir ] && cd $(<$_lastdir)

track() {
	echo $PWD > $_lastdir
}

add-zsh-hook chpwd track
