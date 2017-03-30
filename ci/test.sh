#!/usr/bin/env bash

set -e

pub get

pub run test -j 1 -r expanded

pub global activate -sgit https://github.com/stablekernel/codecov_dart.git
pub global run dart_codecov_generator --report-on=lib/ --verbose --no-html

curl -s https://codecov.io/bash > .codecov
chmod +x .codecov
./.codecov -f lcov.info -X xcode -t @.codecov-token