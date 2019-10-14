#!/bin/bash

#add volumes ec2

x =`lsblk | sed -n 4p | awk '{print $1}'`

  if ["$x" = "xvdb"]
  then
    mkfs.ext3 /dev/xvdb
    echo "/dev/xvdb /r2d2 ext3 noatime 0 0" >> /etc/fstab
    mkdir /r2d2
    mount /r2d2

  else
    echo "volume com problema"
  fi    
