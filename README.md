# dotfiles
my dotfiles

### Requirements

- Install Ubuntu 16.04 LTS
- [Configure ssh keys and adding it to the ssh-agent](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/)

### Update the KERNEL

```bash
$ wget kernel.ubuntu.com/~kernel-ppa/mainline/v4.8.6/linux-headers-4.8.6-040806_4.8.6-040806.201610310831_all.deb
$ wget kernel.ubuntu.com/~kernel-ppa/mainline/v4.8.6/linux-headers-4.8.6-040806-generic_4.8.6-040806.201610310831_amd64.deb
$ wget kernel.ubuntu.com/~kernel-ppa/mainline/v4.8.6/linux-image-4.8.6-040806-generic_4.8.6-040806.201610310831_amd64.deb
$ sudo dpkg -i linux-headers-4.8*.deb linux-image-4.8*.deb
$ sudo update-grub
$ sudo reboot
```

### Install and configure(local) ansible

```bash
$ sudo apt-get install ansible
```

Configure `localhost ansible_connection=local` in `/etc/ansible/hosts`

### Run ansible-playbook

```bash
$ wget https://raw.githubusercontent.com/guilhermemaba/dotfiles/master/ubuntu.yaml
$ sudo ansible-playbook ubuntu.yaml
```

### Configure vim/zsh/tmux

```bash
$ cd ~/projects/dotfiles/ 
$ sudo ansible-playbook terminal.yaml
```

### Install and config docker

Unable to start Docker service in Ubuntu 16.04 [Problem Solved] (http://stackoverflow.com/questions/37227349/unable-to-start-docker-service-in-ubuntu-16-04/37640824#37640824)

```bash
$ cd ~/projects/dotfiles/ 
$ sudo ansible-playbook docker.yaml
```

### TODO install and config virtualenvwrapper

### Tribute

- [Amim](https://github.com/knabben)
- [Hack](https://github.com/hackaugusto)
- [Dudu](https://github.com/orige)
- [Alexandre](https://github.com/Kaniabi)
- [Ruhland](https://github.com/feliperuhland)
