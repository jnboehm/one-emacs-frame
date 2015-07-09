#!/bin/zsh

# change this to match your frametitle as uniquely as possible
frametitle="Emacs" 
runinst=$(wmctrl -l | grep -c $frametitle)

if [ $runinst = 1 ];
  then 
    exec emacsclient -n $1
  else 
    exec emacsclient -n -c $1
fi
