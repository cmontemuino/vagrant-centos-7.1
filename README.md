Packer for CentOS 7.1
=====================

This repository contains a CentOS 7.1 template to create a Vagrant box using Packer.

How to use it
-------------

Box created from this repository is https://atlas.hashicorp.com/cmontemuino/boxes/centos7.1.x64-base

In order to use it with Vagrant, just issue the following:
```
$ vagrant init cmontemuino/centos7.1.x64-base
```

Installed Packages
------------------

Minimal + Guest Additions + Debugging/Development tools + EPEL repo

+ openssh
+ openssh-clients
+ openssh-server
+ rpm
+ yum
+ curl
+ dhclient
+ passwd
+ vim-minimal
+ sudo
+ kernel-headers
+ kernel-devel
+ gcc
+ dkms
+ perl
+ bzip2
+ ntp
+ ntpdate
+ man
+ rsync
+ git
+ make
+ vim
+ screen
+ nmap
+ lsof
+ strace
+ tcpdump
+ traceroute
+ telnet
+ ltrace
+ bind-utils
+ sysstat
+ nc
+ wget
+ zip
+ deltarpm
+ nfs-utils
+ acpid

Requirements
------------

* Packer (>= 0.8.6)(http://www.packer.io/downloads.html)
* Platforms
  * Virtualbox (>= 5.0.6)(https://www.virtualbox.org/wiki/Downloads)

Aknowledgments
--------------

This work is partially based on https://github.com/hansode/packer-vagrant-templates

License
-------

[Licensed under MIT License](LICENSE)
