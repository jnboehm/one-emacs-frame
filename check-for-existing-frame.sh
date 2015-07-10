#!/bin/zsh

# get the version and trim the quotation marks
emacsversion=$(emacsclient -e '(message emacs-version)')
emacsversion="${emacsversion%\"}"
emacsversion="${emacsversion#\"}"

# change this to match your frametitle as uniquely as possible
frametitle="Emacs "$emacsversion
runinst=$(wmctrl -l | grep -c $frametitle)

if [ $runinst = 1 ];
  then 
    exec emacsclient -n $1
  else 
    exec emacsclient -n -c $1
fi
