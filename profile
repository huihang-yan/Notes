alias ls='ls --all -C --color=never --classify --escape'
# -C   list by columns
# -all list entries starting with '.', including '.' and '..'
# --classify append indicator suffices, like */=>@
# --escape   print C-style escapes for nongraphic characters

alias lynx='lynx -nocolor'
alias wget2='wget2 --progress=bar'

setfont /root/huihang/Notes/ter-i32n.psf

alias inspkg=installpkg
# When trying to input 'installpkg', the TAB autocompletion always
# blocks me because of 'install'. So let's get a new name.

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
ssh-add /root/huihang/no-upload/github-key-250322
# the repository `no-upload` is offline-only
# not uploading to GitHub etc., would only stay offline
# transferred, for example, between disk and usb stick with `git clone`
#
# The use of `git` for local repository is generally for integrity
# so that if some malware - or good software - altered the files,
# we would know that the files are edited. This should be also possible
# to be implemented with a customised fuse filesystem which monitors and logs
# every write operation.

# Test ssh configruation with:
# 	ssh -vvvv -T git@github.com

# Search text:
# 	grep "xxx" -I -r . |less
