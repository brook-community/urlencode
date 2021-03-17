#!/bin/bash

if [ $# -ne 1 ]; then
    echo "./build.sh version"
    exit
fi

mkdir _

deno compile -A -r --unstable --target x86_64-unknown-linux-gnu -o _/urlencode_linux_amd64 https://raw.githubusercontent.com/brook-community/urlencode/master/main.js
deno compile -A -r --unstable --target x86_64-apple-darwin -o _/urlencode_darwin_amd64 https://raw.githubusercontent.com/brook-community/urlencode/master/main.js
deno compile -A -r --unstable --target x86_64-pc-windows-msvc -o _/urlencode_windows_amd64 https://raw.githubusercontent.com/brook-community/urlencode/master/main.js

nami release github.com/brook-community/urlencode $1 _

rm -rf _
