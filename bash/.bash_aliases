alias emacs='emacs -nw'

alias ls-dot-dir='ls -la | grep -e "^[d|l].* \."'
alias ls-dotfiles='ls -la | grep -e "^[-|l].* \."'

alias pip=pip3

alias vpn-up="nmcli con up Fetch\ Robotics\ L2TP --ask"
alias vpn-down="nmcli con down Fetch\ Robotics\ L2TP"

alias firefox-restart="pkill firefox-esr && sleep 2 && nohup firefox-esr &"

alias venv="python -m venv"

alias imv="imv-x11"

alias diff="git diff --no-index"

sshota ()
{
  ssh -oStrictHostKeyChecking=no -i ~/.ssh/id_ed25519_calvin_robot support@"$@"
}

scp-to-ota ()
{
  robot="$1"; shift
  scp -i ~/.ssh/id_ed25519_calvin_robot "$@" support@"$robot":~
}

scp-from-ota ()
{
  #robot="$1"; shift
  #scp -i ~/.ssh/id_ed25519_calvin_robot "$@" support@"$robot"
  echo "oops I didn't make this yet"
}

pretty_csv () 
{ 
  column -t -s, -n "$@" | less -F -S -X -K
}

alias ag='ag --color-path "1;32" --color-match "2;33" --color-line-number "2;33" --color --group'

alias dnsclear='sudo resolvectl flush-caches'
