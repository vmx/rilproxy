ifndef AOSP_ROOT
  $(error `AOSP_ROOT` is not set. Point it to your AOSP checkout)
endif

ifndef NDK_ROOT
  $(error `NDK_ROOT` is not set. Point it to your NDK installation)
endif

all: adb_forward clean build adb_push adb_run adb_logcat

build:
	$(NDK_ROOT)/ndk-build

verbose-build:
	$(NDK_ROOT)/ndk-build --recon

clean:
	$(NDK_ROOT)/ndk-build clean

adb_push:
	adb push obj/local/armeabi/rilproxy /data

adb_run:
	adb shell chmod 0666 /dev/socket/rild
	adb shell /data/rilproxy

adb_forward:
	adb forward localfilesystem:/tmp/rilproxy localfilesystem:/dev/socket/rilproxy

linked_libs:
	readelf --dynamic obj/local/armeabi/rilproxy|grep NEEDED

adb_logcat:
	adb logcat -b radio
