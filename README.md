# Nvim Settings

I use caps-bloq as Esc key, and i map it in the OS directly.

## Ubuntu
Using dconf editor:
>20.04
`sudo apt install dconf-cli dconf-editor`
open it and go to org >> gnome >> desktop >> input-sources

Add the following command in xkb-options, don't delete the brackets, and use single commas.

`'setxkbmap -option caps:swapescape'`

# Learning tools
https://www.vim-hero.com/ - interactive exercises
