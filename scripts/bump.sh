#!/bin/sh
# VERSION ファイルのパッチ番号を 1 つ上げる（例: 1.0.0 -> 1.0.1）
set -eu
current=$(cat VERSION)
next=$(echo "$current" | awk -F. '{print $1"."$2"."$3+1}')
sed -i "s/$current/$next/" VERSION
echo "$current -> $next"
