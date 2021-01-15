DOTFILES_PATH="$HOME"'/.dotfiles'

function dotfiles() {
  (
    cd "$DOTFILES_PATH"
    case "$1" in
      'install')
        shift
        ./install "$@"
        ;;
      *)
        "$@"
        ;;
    esac
  )
}
