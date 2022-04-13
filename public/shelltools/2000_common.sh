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
elif installed vim ; then
  export EDITOR=vim
fi

git_config() {
  if [ "$(git config --global "$1")" != "$2" ] ; then
    git config --global "$1" "$2"
  fi
}

if ! [ -f ~/.gitconfig.lock ] ; then
    if installed git ; then
        git_config init.templatedir '~/.git-templates'
         if installed diff-so-fancy ; then  
            git_config core.pager "diff-so-fancy | less --tabs=4 -RFX"
            git_config interactive.diffFilter "diff-so-fancy --patch"
            
            git_config color.ui true
        
            git_config color.diff-highlight.oldNormal    "red bold"
            git_config color.diff-highlight.oldHighlight "red bold 52"
            git_config color.diff-highlight.newNormal    "green bold"
            git_config color.diff-highlight.newHighlight "green bold 22"
        
            git_config color.diff.meta       "11"
            git_config color.diff.frag       "magenta bold"
            git_config color.diff.func       "146 bold"
            git_config color.diff.commit     "yellow bold"
            git_config color.diff.old        "red bold"
            git_config color.diff.new        "green bold"
            git_config color.diff.whitespace "red reverse"
        fi
    fi
fi

if installed diff-so-fancy ; then
  function fancydiff() {
    diff -u "$@" | diff-so-fancy
  }
  alias diff=fancydiff
fi

alias nvidia-gputop="watch -n1 nvidia-smi"
alias gputop="nvidia-gputop"

export SHELLCHECK='1'
