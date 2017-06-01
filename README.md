# Utilities for B2G RIL Connection

This repo contains a utility to forward the rild socket connection out to non radio
account owned processes. It creates a socket on the device under `/dev/socket/rilproxy`.
This socket can also be forwarded via `adb`, e.g.:

    adb forward localfilesystem:/tmp/rilproxy localfilesystem:/dev/socket/rilproxy

The `Makefile` gives a few hints on the usage. In order to build and run it
you need a full Android Open Source Project (AOSP) checkout and the Native
Development Kit (NDK) installed. Then set the environment variables `AOSP_ROOT`
and `NDK_ROOT` accordingly. You can e.g. build and run the rilproxy via:

    AOSP_ROOT=/home/username/src/android/aosp NDK_ROOT=/home/username/src/android/android-ndk-r14b make

If it doesn't start up some other process (probably `com.android.phone` might
access the `/dev/socket/rild`. To prevent that you can make it point somewhere
else. Edit from AOSP the
`frameworks/opt/telephony/src/java/com/android/internal/telephony/RIL.java` and
change the value(s) of the `SOCKET_NAME_RIL` constant to something else.

The `doc` directory contains some information that is outdated, but it still
contains some valuable bits, hence it wasn't removed.
