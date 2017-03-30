#!/usr/bin/env bash

set -e

wget https://storage.googleapis.com/dart-archive/channels/stable/release/latest/sdk/dartsdk-linux-x64-release.zip
unzip -o dartsdk-linux-x64-release.zip -d ~
export DART_SDK=~/dartsdk-linux-x64-release
export PATH=~/dartsdk-linux-x64-release/bin:$PATH
pub get