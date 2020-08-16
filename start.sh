#!/bin/bash

nginx -c /etc/nginx.conf
sudo -u alaneuler /usr/bin/aria2c --conf-path=/etc/aria2.conf
