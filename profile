alias ls='ls --all -C --color=never --classify --escape'
# -C   list by columns
# -all list entries starting with '.', including '.' and '..'
# --classify append indicator suffices, like */=>@
# --escape   print C-style escapes for nongraphic characters

alias lynx='lynx -nocolor'
alias wget2='wget2 --progress=bar'

setfont /root/huihang/ter-i32n.psf

# shorthands for git
alias p='git push'
alias d='git diff'
alias c='git commit -a -m "`date; echo "@ "; uname -a`"'
alias l='git log -p' # without -p we don't have diff, i.e. file content
                     # changes, but only comment message and date
# openssl stuff
export SSL_CERT_FILE=/etc/ssl/certs/ca-certificates.crt

# ssh stuff
eval `ssh-agent -s`
ssh-add /root/huihang/github-key-250322

# Test ssh configruation with:
# 	ssh -vvvv -T git@github.com
