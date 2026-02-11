@ECHO OFF

C:\Qt\6.10.1\msvc2022_64\bin\qtenv2.bat
d:
"C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvarsall.bat" x64
qmake
nmake clean
nmake