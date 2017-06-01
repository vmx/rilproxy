all: adb_forward clean build adb_push adb_run adb_logcat

build:
	/home/vmx/src/rust/android/android-ndk-r14b/ndk-build

verbose-build:
	/home/vmx/src/rust/android/android-ndk-r14b/ndk-build --recon

clean:
	/home/vmx/src/rust/android/android-ndk-r14b/ndk-build clean

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
