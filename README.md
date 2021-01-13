# dotfiles

## Personal Notes

* Relies on [dotbot](https://github.com/anishathalye/dotbot) and my personal [ohmyzsh fork](https://github.com/felsenhower/ohmyzsh)
* Submodules are automatically cloned
* There is a folder `public/shelltools` that will be linked to `~/.shelltools`
  * It contains shell scripts that start with 4 numbers so that they can be naturally sorted, e.g. `1000_oh_my_zsh.zsh`
  * Some files end with `.sh` and others with `.zsh`
  * The `.bashrc` sources all `sh` files in order
  * The `.zshrc` sources all (`.sh` and `.zsh`) scripts in order:
  ```ZSH
  for f in "$HOME"/.shelltools/*.(zsh|sh) ; do
    source "$f"
  done
  ```
  * This way, I can easily disable parts simply by renaming a file

## Installation

1. Install whatever from `zsh`, `neovim`, `redshift`, `vlc`.
2. Clone the repo to `~/.dotfiles/`:<br/>
   `$ git clone git@github.com:felsenhower/dotfiles.git` or<br/>
   `$ git clone https://github.com/felsenhower/dotfiles.git`.
3. Try `./install`.
4. Probably fail doing it, else `goto 7`.
5. Fix everything.
6. `goto 3`.
7. Change default shell to `zsh`:<br/>
   `chsh -s $(which zsh)`.
8. Reboot (or logout + login).
