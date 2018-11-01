#!/bin/bash --norc
exec -a "$0" external/clang_700/bin/ld64.lld "$@"
