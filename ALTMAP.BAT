echo off
cls
echo 浜様様様様様様様様様様様様様様様様様様様様様様様様融
echo �             Alternate Map Batch File             �
echo ����         for Civil War Strategy v1.3           �
echo 藩様様様様様様様様様様様様様様様様様様様様様様様様夕
echo �
echo  There is an alternate game map and setup stored as ALTMAP files.
echo  This file will switch the ALTMAP files and will save the original
echo  map/setup as ALTMAP files.
echo
echo  To restore the original map, just run this file a second time.
echo ��
pause Hit Ctrl-C if you do NOT wish to continue
if not exist altmap.ini goto howto
echo �
echo Copying game files to temporary files...
rename cities.grd cities.$$$
rename cws.ini cws.$$$
rename cwslead.dat cwslead.$$$
echo �
echo Copying ALTMAP files to game files...
rename altmap.grd cities.grd
rename altmap.ini cws.ini
rename altlead.dat cwslead.dat
echo �
echo Renaming temporary files as ALTMAP files...
rename cities.$$$ altmap.grd
rename cws.$$$ altmap.ini
rename cwslead.$$$ altlead.dat
echo �
echo DONE ! Hope you enjoy this alternate set-up.
echo Remember, you can switch files back to originals by running
echo this file again...
goto done4

:howto
echo NO ALTMAP files were not found on this drive,
echo so the files cannot be switched. Be sure you are logged
echo onto the drive/directory with the ALTMAP files.
:done4

