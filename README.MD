# Text collector scripts

## Scripts Used
These are the scripts that I use with the Node Exporter Textfile Collector on my servers.

- [lvm-name-collector](lvm-name-collector)
- [lvm-prom-collector](lvm-prom-collector)
- [ipmitool](https://github.com/prometheus-community/node-exporter-textfile-collector-scripts/blob/master/ipmitool)
- [smartmon](https://github.com/prometheus-community/node-exporter-textfile-collector-scripts/blob/master/smartmon.py)

## This repository

This repository contains scripts that I have created/modified.

Each script has a header which explains what it does and how to use it.

It is recommended to use `sponge` to atomically write the output. This utility comes from the [moreutils](https://joeyh.name/code/moreutils/) package

More scripts can be found in the prometheus community text collector repository here: https://github.com/prometheus-community/node-exporter-textfile-collector-scripts