@echo off

cd\
cd C:\Users\EZ\Downloads\quake-leveldesign-starterkit-master\working


echo Copying Files...
copy C:\Users\EZ\Downloads\quake-leveldesign-starterkit-master\id1\maps\desertkeepfinallevel.map C:\Users\EZ\Downloads\quake-leveldesign-starterkit-master\working


echo Converting map...


echo --------------QBSP--------------
C:\Users\EZ\Downloads\quake-leveldesign-starterkit-master\tools\ericw-tools\bin\qbsp.exe desertkeepfinallevel

echo --------------VIS---------------
C:\Users\EZ\Downloads\quake-leveldesign-starterkit-master\tools\ericw-tools\bin\vis.exe desertkeepfinallevel

echo -------------LIGHT--------------
C:\Users\EZ\Downloads\quake-leveldesign-starterkit-master\tools\ericw-tools\bin\light.exe desertkeepfinallevel

copy desertkeepfinallevel.bsp C:\Users\EZ\Downloads\quake-leveldesign-starterkit-master
copy desertkeepfinallevel.pts C:\Users\EZ\Downloads\quake-leveldesign-starterkit-master
copy desertkeepfinallevel.lit C:\Users\EZ\Downloads\quake-leveldesign-starterkit-master
pause
cd\
cd C:\Users\EZ\Downloads\quake-leveldesign-starterkit-master
quakespasm  +map desertkeepfinallevel
