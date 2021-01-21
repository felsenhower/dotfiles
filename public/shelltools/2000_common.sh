bell() {
#  $@
  echo -e "\07"
#  notify-send -i preferences-desktop-notification-bell -a "bell" "Command finished" "$(echo "$@")"
}

if which nvim >/dev/null 2>/dev/null ; then
  alias vim="nvim"
  alias vi="nvim"
  alias vimdiff='nvim -d'
  export EDITOR=nvim
elif which vim >/dev/null ; then
  export EDITOR=vim
fi

if which git >/dev/null 2>/dev/null ; then
  git config --global user.name 'Ruben Felgenhauer'
  git config --global user.email '4felgenh@informatik.uni-hamburg.de'
fi
