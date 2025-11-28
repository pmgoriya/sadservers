#!/usr/bin/bash
res=$(sha1sum /home/admin/highestip.txt |awk '{print $1}')
res=$(echo $res|tr -d '\r')

if [[ "$res" = "6ef426c40652babc0d081d438b9f353709008e93" ]]
then
  echo -n "OK"
else
  echo -n "NO"
fi