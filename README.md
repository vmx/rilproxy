# Utilities for B2G RIL Connection

This repo contains a utility to forward the rild socket connection out to non radio
account owned processes. It creates a socket on the device under `/dev/socket/rilproxy`.
This socket can also be forwarded via `adb`, e.g.:

    adb forward localfilesystem:/tmp/rilproxy localfilesystem:/dev/socket/rilproxy
