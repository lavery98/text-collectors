#!/bin/bash

# Expose the names of LVM volumes
# To use create a cronjob with
# */5 * * * * /path/to/collector/lvm-name-collector | sponge /var/lib/prometheus/node-exporter/lvm-name.prom

set -eu

if [ "$(id -u)" != "0" ]; then
  1>&2 echo "This script must be run with super-user privileges."
  exit 1
fi

disk_names=$(dmsetup ls)
echo "# HELP node_lvm_name Mapping from LVM device to LVM name"
echo "# TYPE node_lvm_name gauge"
echo "$disk_names" | while IFS= read -r line ; do
  read -a strarr <<< "$line"
  name="${strarr[0]}"
  device=$(echo "${strarr[1]}" | grep -P -o "[0-9]+" | tail -1)
  echo "node_lvm_name{device=\"dm-$device\",name=\"$name\"} 1"
done