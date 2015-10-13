#!/bin/bash
#
# requires:
#  bash
#
set -e
set -o pipefail
set -x

mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.saved

releasever=$(< /etc/yum/vars/releasever)
major=7

baseurl=http://mirror.centos.org/centos

cat <<-REPO > /etc/yum.repos.d/CentOS-Base.repo
	[base]
	name=CentOS-\$releasever - Base
	#mirrorlist=http://mirrorlist.centos.org/?release=$releasever&arch=$basearch&repo=os&infra=$infra
	baseurl=${baseurl}/\$releasever/os/\$basearch/
	gpgcheck=1
	gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-${major}

	[updates]
	name=CentOS-\$releasever - Updates
	#mirrorlist=http://mirrorlist.centos.org/?release=$releasever&arch=$basearch&repo=updates&infra=$infra
	baseurl=${baseurl}/\$releasever/updates/\$basearch/
	gpgcheck=1
	gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-${major}
	REPO
