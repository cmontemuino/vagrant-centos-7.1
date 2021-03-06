#!/bin/bash
#
# requires:
#  bash
#
set -e
set -o pipefail
set -x

function yum() {
  $(type -P dnf 2>&1 || type -P yum diablerepo=updates) "${@}"
}

# Add installation packages ...
addpkgs="
 kernel-headers kernel-devel
 make gcc
 dkms
 ntp ntpdate
 man
 sudo rsync git make
 vim screen
 nmap lsof strace tcpdump traceroute telnet ltrace bind-utils sysstat nc
 curl wget zip deltarpm
"

if [[ -n "$(echo ${addpkgs})" ]]; then
  yum install -y ${addpkgs}
fi

rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
