You dont need to move around any files.

clone with 
``` bash
$ git clone <URL> ~/.vim --recurse
```
You need to create a blank .vimrc in ~ and then add:

``` bash
echo 'set rtp+=~/.vim/rc/.vimrc' >> ~/.vimrc
echo 'source ~/.vim/rc/.vimrc' >> ~/.vimrc
```
