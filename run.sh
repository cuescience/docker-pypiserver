#!/bin/bash

echo "$USERNAME:$PASSWORD" > .htaccess
pypi-server -p 8080 -P .htaccess /data
