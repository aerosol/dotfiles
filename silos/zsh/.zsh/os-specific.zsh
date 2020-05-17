if [[ "$OSTYPE" == "darwin"* ]]; then
    export LDFLAGS="-L/usr/local/opt/readline/lib"
    export CPPFLAGS="-I/usr/local/opt/readline/include"
    alias o=open
else
    alias o='xdg-open'
    alias open='xdg-open'
    alias pbcopy='xsel --clipboard --input'
    alias pbpaste='xsel --clipboard --output'
fi
