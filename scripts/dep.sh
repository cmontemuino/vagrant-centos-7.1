#!/usr/bin/env bash
# Install some handy packages not included in the minimal CentOS distribution

yum install -y update

yum install -y install kernel-headers kernel-devel curl vim make

rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm

