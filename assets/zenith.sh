#!/bin/sh

PREFIX=/usr/local

if test -r /dev/nvidiactl && "$PREFIX/lib/zenith/zenith-libnvidia-detect"; then
  exec "$PREFIX/lib/zenith/nvidia/zenith" "$@"
else
  exec "$PREFIX/lib/zenith/base/zenith" "$@"
fi
