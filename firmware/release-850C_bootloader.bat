@echo off

echo.
echo This script will release a new version of the 850C, 860C and SW102 firmwares
echo.

set /p VERSION="Please enter the new version number, e.g. 0.5.1: "

set RELEASE_FOLDER="%cd%\releases\%VERSION%"

if exist %RELEASE_FOLDER% (
	echo Removing existing release folder: %RELEASE_FOLDER%
	echo.
	rmdir /S /Q %RELEASE_FOLDER%
)

mkdir %RELEASE_FOLDER%

cd 860C_850C\src\
rem version 860C bootloader
make -f Makefile clean
rmdir /S /Q ..\common\src
make -f Makefile VERSION=%VERSION% DISPLAY_VERSION="850C_BOOTLOADER"
copy main.bin %RELEASE_FOLDER%\860C_v%VERSION%-bootloader.bin
cd ..\..

echo.
echo Done! If the build went correctly, find the files on: %RELEASE_FOLDER%

pause