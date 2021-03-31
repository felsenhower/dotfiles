export DOTFILES_PATH="$HOME"'/.dotfiles'

function dotfiles() {
  if [ "$1" = "install" ] ; then
    (
      cd "$DOTFILES_PATH"
      shift
      ./install "$@"
    )
  elif [ "$1" = "cd" ] ; then
    shift
    cd "$DOTFILES_PATH"/"$@"
  else
    (
      cd "$DOTFILES_PATH"
      "$@"
    )
  fi
}
