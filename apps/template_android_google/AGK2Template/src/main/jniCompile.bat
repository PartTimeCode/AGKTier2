@echo off

rem define the %NDK_PATH% environment variable on your system

set NDKBUILDCMD="%NDK_PATH%\ndk-build"
call %NDKBUILDCMD% NDK_OUT=../../build/jniObjs NDK_LIBS_OUT=./jniLibs 2> log.txt

copy /y "..\..\..\..\..\platform\android\ARCore\libs\arm64-v8a\libarcore_sdk.so" "jniLibs\arm64-v8a\libarcore_sdk.so"
copy /y "..\..\..\..\..\platform\android\ARCore\libs\armeabi-v7a\libarcore_sdk.so" "jniLibs\armeabi-v7a\libarcore_sdk.so"

pause
