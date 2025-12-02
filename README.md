# Nvim Settings

I use caps-bloq as Esc key, and i map it in the OS directly.

## Ubuntu
G editor:
>20.04

`sudo apt install dconf-cli dconf-editor`

open it and go to org >> gnome >> desktop >> input-sources

Add the following command in xkb-options, don't delete the brackets, and use single commas.

`'caps:swapescape'`

Create the folder `nvim` in `~/.config` and get the files in this repository inside. When you open nvim again or do `:so` you should get all the configuration again.

# Learning tools

Inside nvim `:Tutor`, `:h` for help with an type of commands

https://www.vim-hero.com/ - interactive exercises
