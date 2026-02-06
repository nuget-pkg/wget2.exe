#! /usr/bin/env bash
set -uvx
set -e
cd "$(dirname "$0")"
cwd=`pwd`
ts=`date "+%Y.%m%d.%H%M.%S"`

#scoop install deno yt-dlp ffmpeg wget2 aria2
#scoop update deno yt-dlp ffmpeg wget2 aria2
scoop install wget2 aria2
scoop update  wget2 aria2

cd $cwd
rm -rf tmp *.resource
mkdir tmp
cd $cwd/tmp

#mkdir -p aria2
#cp -rp /c/Users/user/scoop/apps/aria2/current/* aria2/
cp -rp /c/Users/user/scoop/apps/aria2/current/*.exe .

#mkdir -p wget2
#cp -rp /c/Users/user/scoop/apps/wget2/current/* wget2/
cp -rp /c/Users/user/scoop/apps/wget2/current/*.exe .

#mkdir -p yt-dlp
#cp -rp /c/Users/user/scoop/apps/yt-dlp/current/* yt-dlp/
#cp -rp /c/Users/user/scoop/apps/yt-dlp/current/*.exe .

#mkdir -p deno
#cp -rp /c/Users/user/scoop/apps/deno/current/* deno/
#cp -rp /c/Users/user/scoop/apps/deno/current/*.exe .

#mkdir -p ffmpeg
#cp -rp /c/Users/user/scoop/apps/ffmpeg/current/bin/ffmpeg.exe ffmpeg/
#cp -rp /c/Users/user/scoop/apps/ffmpeg/current/bin/ffmpeg.exe .

find .

7z a -tzip -r ../Programs.resource *
