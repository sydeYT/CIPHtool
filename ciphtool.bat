@echo off
:home
chcp 65001>nul
mode 150,30
title Cipher's Multitool
:banner
echo.
echo.
echo [38;2;255;0;0m        ██████╗██╗██████╗ ██╗  ██╗████████╗ ██████╗  ██████╗ ██╗     
echo [38;2;255;51;0m       ██╔════╝██║██╔══██╗██║  ██║╚══██╔══╝██╔═══██╗██╔═══██╗██║     
echo [38;2;255;102;0m       ██║     ██║██████╔╝███████║   ██║   ██║   ██║██║   ██║██║     
echo [38;2;255;153;0m       ██║     ██║██╔═══╝ ██╔══██║   ██║   ██║   ██║██║   ██║██║     
echo [38;2;255;204;0m       ╚██████╗██║██║     ██║  ██║   ██║   ╚██████╔╝╚██████╔╝███████╗
echo [38;2;255;255;0m        ╚═════╝╚═╝╚═╝     ╚═╝  ╚═╝   ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝
echo a multitool developed by cipherswag
echo.
:menu
echo Welcome, [7m%username%[0m!
echo [38;2;255;255;0m write the number of the option you wanna use
for /f %%A in ('"prompt $H &echo on &for %%B in (1) do rem"') do set BS=%%A
echo ===========================================================================================================
echo.
echo        ╔═(1) Write a note in this Batch file's Folder
echo        ╠══(2) Run An Application 
echo        ╠═══(3) Run A Command (basically cmd) 
echo        ╠═══(4) Shutdown The Computer
echo        ╠═══(5) Help
echo        ╠═══(6) System Information
echo        ╠═══(7) Network Information
echo        ╠═══(8) Ping a Host
echo        ╠═══(9) Roll The Dice
echo        ╚╦══(10) File Management
echo         ║ 
set /p command=.%BS% [38;2;255;255;0m       ╚══════^>[0m 


if %command%==1 goto note
if %command%==2 goto apprun
if %command%==3 goto cmdrun
if %command%==4 goto shutdown
if %command%==5 goto help
if %command%==6 goto system
if %command%==7 goto network
if %command%==8 goto ping
if %command%==9 goto dice
if %command%==10 goto filemanagement
if %command%==secretmenu goto secret
:filemanagement
cls
echo (1) List Files in Directory
echo (2) Delete a File
set /p choice=Choose an option:
if %choice%==1 goto listfiles
if %choice%==2 goto deletefile
goto home

:listfiles
dir
pause
goto filemanagement

:deletefile
set /p filename=Enter filename to delete:
del "%filename%"
echo File deleted.
pause
goto filemanagement

:note
cls
color D
set /p note=Note:
set /p filenaem=File name:
if "%note%"=="" (
    echo You must enter a note.
    timeout /t 1 /nobreak >nul
    goto note
)

@echo %note% > %filenaem%.txt
echo note saved
timeout /t 1 /nobreak>nul
cls
goto home
:apprun
cls
color 4
set /p appname=Application Name:
start %appname%.exe
cls
goto home
:cmdrun
cls
color 2
set /p commandprompt=cmd:
%commandprompt%
pause>nul
cls
goto home
:shutdown
cls
color 6
echo press any key to shutdown 
set /p confirm="Are you sure you want to shut down? (Y/N): "
if /I "%confirm%"=="Y" (
    shutdown -s
) else (
    goto home
)
:help
cls
color 2
echo (1):- Allows you to write notes in the batch file's folder. Example:
echo if you place the batch script in the Desktop Folder, It would make a note IN that file.
timeout 3 /nobreak>nul
echo (2):- Lets you run an application by name.
echo example: "notepad" opens up Notepad.exe.
timeout 3 /nobreak>nul
echo (3):- Runs a command based on what you write.
echo example: echo Hello, World!
timeout 3 /nobreak>nul
echo (4):- turns off your computer.
pause>nul
goto home
:system
@echo off
cls
systeminfo
pause>nul
goto home
:network
@echo off
cls
ipconfig
pause>nul
goto home
:ping
@echo off
cls
set /p pinged=Host:
ping %pinged%
if "%pinged%"=="" (
    echo You must enter a host to ping.
    timeout /t 1 /nobreak >nul
    goto ping
)

pause>nul
goto home
:dice
cls
echo you rolled [38;2;255;255;0m%random%!
pause
cls
goto home
:secretcmds

echo [38;2;0;0;255m░██████╗███████╗░█████╗░██████╗░███████╗████████╗[0m
echo [38;2;10;20;240m██╔════╝██╔════╝██╔══██╗██╔══██╗██╔════╝╚══██╔══╝[0m
echo [38;2;20;40;225m╚█████╗░█████╗░░██║░░╚═╝██████╔╝█████╗░░░░░██║░░░[0m
echo [38;2;30;60;210m░╚═══██╗██╔══╝░░██║░░██╗██╔══██╗██╔══╝░░░░░██║░░░[0m
echo [38;2;40;80;195m██████╔╝███████╗╚█████╔╝██║░░██║███████╗░░░██║░░░[0m
echo [38;2;50;100;180m╚═════╝░╚══════╝░╚════╝░╚═╝░░╚═╝╚══════╝░░░╚═╝░░░[0m
echo.
echo [38;2;20;40;225m its cool that you know about this.
echo hola, señor/a
echo ===========================================================================================================
echo        ╔═(1) Random Color
echo        ║
echo        ╠══(2) Matrix 
echo        ║
echo        ╠═══(3) Uptime
echo        ║
echo        ╚╦═══(4) Time Travel
echo         ║
set /p secretcommand=.%BS%        ╚══════^>
if %secretcommand%==1 goto randcol
if %secretcommand%==2 goto matrix
if %secretcommand%==3 goto uptime
if %secretcommand%==4 goto timetravel
if %secretcommand%==thecakeisalie goto cake
if %secretcommand%==cipherswag goto credits
:randcol
@echo off
cls
set /a randomColor=%random% %% 15 + 1
color %randomColor%
echo Nice!
echo Press any button to color again!
pause>nul
cls
goto randcol

:uptime
cls
echo Uptime:
systeminfo | find "System Boot Time"
pause
goto secretcmds


:cake
@echo off
cls
echo the cake is not a lie.
timeout 1 /nobreak>nul
cls
goto secretcmds

:timetravel
cls
set /p newtime=Enter the new time (HH:MM): 
time %newtime%
pause
goto secretcmds


:matrix
@echo off
color 2
echo %random%%random%%random%%random%%random%
goto matrix
:credits
echo [made by cipherswag]
timeout 2 /nobreak>nul
echo thanks for using.
timeout 2 /nobreak>nul
goto secretcmds
:secret
cls
:secretmenu
cls
set /p password=Enter the secret password: 
if "%password%"=="thesecretpassword"  cls && goto secretcmds
echo Access Denied.
timeout /t 2 /nobreak >nul
goto home
