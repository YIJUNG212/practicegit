@echo off
if exist pclogo.exe pclogo
if "%0"=="inst" goto newstart
if "%0"=="inst" goto newstart
cls
Echo ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
echo ³           Sango III    Install Program       ³
echo ³      Program need  5M Hard Disk space.       ³
echo ³         Press Ctrl+break to cancel           ³
Echo ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
mdir C:\San3     /m /f5000000
if errorlevel 8 goto driveH
if errorlevel 7 goto driveG
if errorlevel 6 goto driveF
if errorlevel 5 goto driveE
if errorlevel 4 goto driveD
if errorlevel 3 goto driveC
if errorlevel 2 goto driveB
if errorlevel 1 goto driveA
goto help

:driveA
copy a:install.bat inst.bat
inst A: INS

:driveB
copy b:install.bat inst.bat
inst B: INS

:driveC
copy c:install.bat inst.bat
inst C: INS

:driveD
copy d:install.bat inst.bat
inst D: INS

:driveE
copy e:install.bat inst.bat
inst E: INS

:driveF
copy f:install.bat inst.bat
inst F: INS

:driveG
copy g:install.bat inst.bat
inst G: INS

:driveH
copy h:install.bat inst.bat
inst H: INS

:stay at target path
:NewStart
cls
echo Loading....

%1San3

cls
Echo Install Complete !!!
echo Type Play to start
goto end

:help
echo 
echo     Target path error, or not enough disk space !!!
echo ÿ
:end
if exist inst.bat del inst.bat
