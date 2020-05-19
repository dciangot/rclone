@echo off
echo Setting environment variables for mingw+WinFsp compile
set GOPATH=C:\go
rem set PATH=C:\Program Files\mingw-w64\i686-7.1.0-win32-dwarf-rt_v5-rev0\mingw32\bin;%PATH%
set PATH=C:\Program Files\mingw-w64\x86_64-8.1.0-win32-seh-rt_v6-rev0\mingw64\bin;%PATH%
set CPATH=C:\Program Files\WinFsp\inc\fuse;C:\Program Files (x86)\WinFsp\inc\fuse

set GO111MODULE=off
set GOPATH=C:\Users\diego\go\

go.exe build -v --ldflags "-s -X github.com/rclone/rclone/fs.Version=-beta -I 'C:\Program Files (x86)\WinFsp\inc\fuse\'" --tags cmount -o C:\Users\diego\Downloads\rclone.exe github.com/dciangot/rclone