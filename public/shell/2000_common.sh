bell() {
#  $@
  echo -e "\07"
#  notify-send -i preferences-desktop-notification-bell -a "bell" "Command finished" "$(echo "$@")"
}

alias vim="nvim"
alias vi="nvim"
alias vimdiff='nvim -d'
export EDITOR=nvim
