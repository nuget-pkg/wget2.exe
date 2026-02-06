#! /usr/bin/env bash
set -uvx
set -e
cd "$(dirname "$0")"
cwd=`pwd`
ts=`date "+%Y.%m%d.%H%M.%S"`
dotnet run --project wget2.exe.Demo/wget2.exe.Demo.csproj --framework net462 "$@"
