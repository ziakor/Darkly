#!/bin/sh
wget -e robots=off -r  --no-parent -A "README"  http://192.168.1.11/.hidden/
find . -type f -name '*README' -exec grep '[0-9]' {} ';'