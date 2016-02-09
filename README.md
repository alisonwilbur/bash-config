Git repo for Alison's bash scripts and stuff


# Setup

https://www.digitalocean.com/community/tutorials/how-to-use-git-to-manage-your-user-configuration-files-on-a-linux-vps

1. Clone this repo into ~
``` bash
$ cd ~
$ git clone https://github.com/alisonwilbur/bash-config.git 
```
2. Create symlinks from for these files in the home directory
``` bash
$ ln -s ~/bash-config/.bashrc ~/
$ ln -s ~/bash-config/.bashrc_aliases ~/
...
```

