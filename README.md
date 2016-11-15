You dont need to move around any files.

clone with 
``` bash
$ git pull <URL> --recurse
```
You need to create a blank .vimrc in ~ and then add:

``` bash
$ set rtp+=~/.vim/rc/.vimrc
$ source ~/.vim/rc/.vimrc
```
to your ~/.vimrc file
