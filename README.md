 ZYX-Rent developement + Vagrant  + Chef
=========================================

Requirement
-----------
* [VirtualBox](https://www.virtualbox.org)
* [Vagrant 1.2.x](http://vagrantup.com)
* Bundler Gem
* git


Use
===

* Clone this repo
```    
    $ git submodule init
    $ git submodule update
```
* Install librarian-chef
```sh
    gem install bundler
    gem install librarian-chef
```
Before install all of dependencies spacify into Cheffile

```sh
	$ librarian-chef install
```


* Do you need installed a nfs-server in your machine
```
  $ sudo aptitude install nfs-kernel-server nfs-common portmap
```

## Run new machine 
```
  $ vagrant up
```

## Access the machine
```
  $ vagrant ssh
```

Happy Hacking :)
