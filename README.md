# my-dot-files
saving off my various .* files

This submodule contains submodules, so to clone:
git clone --recursive https://github.com/kristina-hager/my-dot-files.git


and to update:
TODO - need to research the best way to do this or if it's done automatically :)

# useful things for bashrc
```
# set prompt to currdir plus git branch
PS1='[\W$(__git_ps1 " (%s)")]\$ '

# set terminal title
PROMPT_COMMAND='echo -en "\033]0;$(whoami)@$(hostname)  $(pwd)\a"'
```
