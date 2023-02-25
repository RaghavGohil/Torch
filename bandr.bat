@echo off
echo compiling using cl.exe -- msvc
@REM bandr is a build and run batch file
@REM note: sdl2.dll is added to the path env so please add it manually.
@REM if build is not made create build dir
mkdir build
pushd build
@REM vcvars32.bat // use this once..
cl /Fea.exe ../test.cpp /Wall /EHsc /I ../inc/sdl /link ../lib/SDL2main.lib ../lib/SDL2.lib
a.exe
popd