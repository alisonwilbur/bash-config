Git repo for Alison's shell scripts and stuff


## Setup

1. Clone this repo into your home directory
``` bash
cd ~
mkdir Code
cd Code
git clone https://github.com/alisonwilbur/bash-config.git 
```
2. Create symlinks from for these files in the home directory
``` bash
ln -s ~/Code/bash-config/.aliases ~/ ;
ln -s ~/Code/bash-config/.gitconfig ~/ ;
ln -s ~/Code/bash-config/.zshrc ~/ ;
...
```


See [this tutorial](https://www.digitalocean.com/community/tutorials/how-to-use-git-to-manage-your-user-configuration-files-on-a-linux-vps) for more info
