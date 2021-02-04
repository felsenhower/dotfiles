bell() {
#  $@
  echo -e "\07"
#  notify-send -i preferences-desktop-notification-bell -a "bell" "Command finished" "$(echo "$@")"
}

if installed nvim ; then
  alias vim="nvim"
  alias vi="nvim"
  alias vimdiff='nvim -d'
  export EDITOR=nvim
elif which vim >/dev/null ; then
  export EDITOR=vim
fi

if installed git ; then
  git config --global user.name 'Ruben Felgenhauer'
  git config --global user.email 'Ruben.Felgenhauer@uni-hamburg.de'
fi
