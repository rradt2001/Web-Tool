@echo off
color 03
echo " __          ________ ____    _______ ____   ____  _       _____  ";
echo " \ \        / /  ____|  _ \  |__   __/ __ \ / __ \| |     / ____| ";
echo "  \ \  /\  / /| |__  | |_) |    | | | |  | | |  | | |    | (___   ";
echo "   \ \/  \/ / |  __| |  _ <     | | | |  | | |  | | |     \___ \  ";
echo "    \  /\  /  | |____| |_) |    | | | |__| | |__| | |____ ____) | ";
echo "     \/  \/   |______|____/     |_|  \____/ \____/|______|_____/  ";
echo "                                                                  ";
echo "                                                                  ";
echo " __      __    __        ___        _  _                          ";
echo " \ \    / /   /_ |      / _ \      | || |                         ";
echo "  \ \  / /     | |     | | | |     | || |_                        ";
echo "   \ \/ /      | |     | | | |     |__   _|                       ";
echo "    \  /       | |  _  | |_| |  _     | |                         ";
echo "     \/        |_| (_)  \___/  (_)    |_|                         ";
echo "                                                                  ";
echo "                                                                  ";
echo.                                        
timeout /t 6 >nul
goto home

:home
title Web Launcher
color 0F
cls
echo -------------------------------
echo              Home
echo -------------------------------
echo 1.) .io games
echo.
echo 2.) Unblocked Games
echo.
echo 3.) Bookmarks
echo.
echo 4.) Set Default Browser
echo.
echo 5.) Refresh
echo.
echo 6.) Exit
echo -------------------------------
set/p hme=Number:
if %hme%==1 goto io
if %hme%==2 goto unblocked
if %hme%==3 goto bookmark
if %hme%==4 goto default
if %hme%==5 goto refresh
if %hme%==6 goto ext

:io
title IO Games
cls
echo ---------------------------
echo          .io games
echo ---------------------------
echo 1.) Brutal
echo.
echo 2.) Splix
echo.
echo 3.) Slither
echo.
echo 4.) Astrar
echo.
echo 5.) Superhex
echo.
echo Type home to return
echo ---------------------------
set /p a=Number:
if %a%==1 start www.brutal.io
if %a%==2 start www.splix.io
if %a%==3 start www.slither.io
if %a%==4 start www.astrar.io
if %a%==5 start www.superhex.io
if %a%==home goto home
goto io

:unblocked
title unblocked Games
cls
echo ---------------------------
echo      Unblocked games
echo     Under development
echo ---------------------------
echo 1.)
echo.
echo 2.)
echo.
echo 3.)
echo.
echo 4.)
echo.
echo Type home to return home
echo ---------------------------
set /p bg=Number:
if %bg%==1 echo not exist
if %bg%==2 echo not exist
if %bg%==3 echo not exist
if %bg%==4 echo not exist
if %bg%==home goto home
goto unblocked

:bookmarkstart
title Bookmarks
REM Creates directories if they don't exist.
if not exist "%~dp0\cmdbin" md %~dp0\cmdbin
if not exist "%~dp0\cmdbin\bk1" md %~dp0\cmdbin\bk1
if not exist "%~dp0\cmdbin\bk2" md %~dp0\cmdbin\bk2
if not exist "%~dp0\cmdbin\bk3" md %~dp0\cmdbin\bk3
if not exist "%~dp0\cmdbin\bk4" md %~dp0\cmdbin\bk4
if not exist "%~dp0\cmdbin\bk5" md %~dp0\cmdbin\bk5
cls
set "slt1"=="0"
set "slt2"=="0"
set "slt3"=="0"
set "slt4"=="0"
set "slt5"=="0"
timeout /t 1 >nul
if exist "%~dp0\cmdbin\bk1\bk1.bat" (goto st1)
if exist "%~dp0\cmdbin\bk2\bk2.bat" (goto st2)
if exist "%~dp0\cmdbin\bk3\bk3.bat" (goto st3)
if exist "%~dp0\cmdbin\bk4\bk4.bat" (goto st4)
if exist "%~dp0\cmdbin\bk5\bk5.bat" (goto st5)

:bookmark
cls
if "slt1"=="0" goto st1
if "slt2"=="0" goto st1
if "slt3"=="0" goto st1
if "slt4"=="0" goto st1
if "slt5"=="0" goto st1
title Bookmarks
if "slt1"=="1" (set wrd1=Used) else (set wrd1=Empty)
if "slt2"=="1" (set wrd2=Used) else (set wrd2=Empty)
if "slt3"=="1" (set wrd3=Used) else (set wrd3=Empty)
if "slt4"=="1" (set wrd4=Used) else (set wrd4=Empty)
if "slt5"=="1" (set wrd5=Used) else (set wrd5=Empty)
echo   DO NOT DELETE THE CMD BIN FOLDER
echo --------------------------------------
echo               Bookmarks
echo --------------------------------------
echo.
echo 1.) %wrd1%
echo.
echo 2.) %wrd2%
echo.
echo 3.) %wrd3%
echo.
echo 4.) %wrd4%
echo.
echo 5.) %wrd5%
echo.
echo Type home to return
echo Type save then the bookmark number to
echo save a bookmark
echo (Example save1 will make a save for bookmark 1)
echo --------------------------------------
set /p bm=Number:
if %bm%==1 goto bk1
if %bm%==2 goto bk2
if %bm%==3 goto bk3
if %bm%==4 goto bk4
if %bm%==5 goto bk5
if %bm%==save1 goto sbk1
if %bm%==save2 goto sbk2
if %bm%==save3 goto sbk3
if %bm%==save4 goto sbk4
if %bm%==save5 goto sbk5
if %bm%==home goto home
goto bookmark

:bk1
start cmdbin\bk1\bk1.bat
timeout /t 1 >nul
taskkill /F /IM cmd.exe
goto bookmark

:bk2
start cmdbin\bk2\bk2.bat
timeout /t 1 >nul
taskkill /F /IM cmd.exe
goto bokmark

:bk3
start cmdbin\bk3\bk3.bat
timeout /t 1 >nul
taskkill /F /IM cmd.exe
goto bookmark

:bk4
start cmdbin\bk4\bk4.bat
timeout /t 1 >nul
taskkill /F /IM cmd.exe
goto bookmark

:bk5
start cmdbin\bk5\bk5.bat
timeout /t 1 >nul
taskkill /F /IM cmd.exe
goto bookmark

:sbk1
cls
if exist "%~dp0\cmdbin\bk1\bk1.bat" del "%~dp0\cmdbin\bk1\bk1.bat"
if exist "%~dp0\cmdbin\bk1\bk1.txt" del "%~dp0\cmdbin\bk1\bk1.txt"
echo Enter the website
set /p sva=URL:
%sva%>>cmdbin\bk1\bk1.bat
%sva%>>cmdbin\bk1\bk1.txt
@echo start %sva% exit > cmdbin\bk1\bk1.bat
goto bookmark

:sbk2
cls
if exist "%~dp0\cmdbin\bk2\bk2.bat" del "%~dp0\cmdbin\bk2\bk2.bat"
if exist "%~dp0\cmdbin\bk2\bk2.txt" del "%~dp0\cmdbin\bk2\bk2.txt"
echo Enter the website
set /p svb=URL:
%sva%>>cmdbin\bk2\bk2.bat
%sva%>>cmdbin\bk2\bk2.txt
@echo start %svb% exit > cmdbin\bk2\bk2.bat
goto bookmark

:sbk3
cls
if exist "%~dp0\cmdbin\bk3\bk3.bat" del "%~dp0\cmdbin\bk3\bk3.bat"
if exist "%~dp0\cmdbin\bk3\bk3.txt" del "%~dp0\cmdbin\bk3\bk3.txt"
echo Enter the website
set /p svc=URL:
%sva%>>cmdbin\bk3\bk3.bat
%sva%>>cmdbin\bk3\bk3.txt
@echo start %svc% exit > cmdbin\bk3\bk3.bat
goto bookmark

:sbk4
cls
if exist "%~dp0\cmdbin\bk4\bk4.bat" del "%~dp0\cmdbin\bk4\bk4.bat"
if exist "%~dp0\cmdbin\bk4\bk4.txt" del "%~dp0\cmdbin\bk4\bk4.txt"
echo Enter the website
set /p svd=URL:
%sva%>>cmdbin\bk4\bk4.bat
%sva%>>cmdbin\bk4\bk4.txt
@echo start %svd% exit > cmdbin\bk4\bk4.bat
goto bookmark

:sbk5
cls
if exist "%~dp0\cmdbin\bk5\bk5.bat" del "%~dp0\cmdbin\bk5\bk5.bat"
if exist "%~dp0\cmdbin\bk5\bk5.txt" del "%~dp0\cmdbin\bk5\bk5.txt"
echo Enter the website
set /p sve=URL:
%sva%>>cmdbin\bk5\bk5.bat
%sva%>>cmdbin\bk5\bk5.txt
@echo start %sve% exit > cmdbin\bk5\bk5.bat
goto bookmark

:default
cls
echo --------------------------------------
echo          Set Default Browser
echo --------------------------------------
echo 1.) Google Chrome
echo.
echo 2.) Internet Explorer
echo.
echo 3.) Home
echo --------------------------------------
set/p dflt=Number:
if %dflt%==1 goto gcdflt
if %dflt%==2 goto intex
if %dflt%==3 goto home

:gcdflt
cls
echo MAKING CHROME DEFAULT BROWSER
timeout /t 1 >nul
"C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" --make-default-browser
taskkill /F /IM chrome.exe
cls
echo Chrome set as default browser!
timeout /t 2 >nul
goto default

:intex
cls
echo MAKING INTERNET EXPLORER DEFAULT BROWSER
timeout /t 1 >nul
shmgrate.exe OCInstallReinstallIE
cls
echo Internet Explorer set as default browser!
timeout /t 2 >nul
goto default

:st1
cls
echo SLOT1 LOADING
timeout /t 1 >nul
set "slt1"=="1"
if "slt1"=="0" goto st1
goto bookmark

:st2
cls
echo SLOT2 LOADING
timeout /t 1 >nul
set slt2==1
if slt2==0 goto st2
goto bookmark

:st3
cls
echo SLOT3 LOADING
timeout /t 1 >nul
set slt3==1
if slt2==0 goto st3
goto bookmark

:st4
cls
echo SLOT4 LOADING
timeout /t 1 >nul
set slt4==1
if slt2==0 goto st4
goto bookmark

:st5
cls
echo SLOT5 LOADING
timeout /t 1 >nul
set slt5==1
if slt5==0 goto st5
goto bookmark

:ERROR
cls
echo THERE WAS AN ERROR LODING A FILE!
timeout /t 5 >nul
exit

:refresh
cls
echo REFRESHING PROGRAM
timeout /t 1 >nul
start "%~dp0\" WebTool.bat
exit

:ext
cls
echo "  _______   _                       _            _ ";
echo " |__   __| | |                     | |          | |";
echo "    | |    | |__     __ _   _ __   | | __  ___  | |";
echo "    | |    | '_ \   / _\`| | '_ \  | |/ / / __| | |";
echo "    | |    | | | | | (_| | | | | | |   <  \__ \ |_|";
echo "    |_|    |_| |_|  \__,_| |_| |_| |_|\_\ |___/ (_)";
echo "                                                   ";
echo "                                                   ";
echo THANKS FOR USING WEB TOOL v1.0.4
timeout /t 3 >nul
cls
REM Thas ascii art was made using an online generator.
echo Created by:
echo "   _____                    _         _____                        ";
echo "  / ____|                  (_)       |  __ \                       ";
echo " | |  __   __ _  _ __ ___   _  _ __  | |__) | __ _  ____ ___  _ __ ";
echo " | | |_ | / _\` ||'_ \` _ \| || '_ \ |  _  / / _\`||_  // _ \| '__|";
echo " | |__| || (_| || | | | | || || | | || | \ \| (_| | / /|  __/| |   ";
echo "  \_____| \__,_||_| |_| |_||_||_| |_||_|  \_\\__,_|/___|\___||_|   ";
echo "                                                                   ";
echo "                                                                   ";
echo Additional development:
echo "                        _  _    ___    ___    ___  __ ";
echo "                       | || |  |__ \  / _ \  / _ \/_ |";
echo "  _ __  _ __  __ _   __| || |_    ) || | | || | | || |";
echo " | '__|| '__|/ _\`| / _\` | |__|  / /| | | || | | || |";
echo " | |   | |  | (_| || (_| || |_  / /_ | |_| || |_| || |";
echo " |_|   |_|   \__,_| \__,_| \__||____| \___/  \___/ |_|";
echo "                                                      ";
echo "                                                      ";
REM Add you're name here if you added anything to this program!
timeout /t 6 >nul
exit