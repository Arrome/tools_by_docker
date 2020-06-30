#!/bin/bash

#grep -e ipvs -e nf_conntrack_ipv4 /lib/modules/$(uname -r)/modules.builtin
#modprobe -- ip_vs
#ipvsadm

ipvs_mod=`lsmod | grep ip_vs`
if [[ $? != 0 && $ipvs_mod == "" ]];then
  echo "ipvs mod not exist!!!"
else
  echo "ipvs mod already exist!!!"
fi
