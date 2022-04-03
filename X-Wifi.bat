@echo off
color 02
title X-Wifi [ Andrei Abd - CoderX ]
:: This Script written By CoderX - Andrei Abd 
:: █▀▀ █▀█ █▀▄ █▀▀ █▀█ ▀▄▀
:: █▄▄ █▄█ █▄▀ ██▄ █▀▄ █░█
:: mail      :  usr.g0a1@gmial.com
:: CoderX    :  https://andreiabd.github.io/CoderX/
:: Whatsapp  :  +963934820511
:: Pinterest :  https://www.pinterest.com/andreiabd93/
:: Instagram :  https://www.instagram.com/andrei_abd/
:: Linkeden  :  https://www.linkedin.com/in/andreiabd
:: Facebook  :  https://www.facebook.com/andreiaabd/
:: Github    :  https://github.com/AndreiAbd 
cls
netsh wlan show profiles | findstr "All" >> wifiName.txt
for /f "tokens=5" %%d in (wifiName.txt) do ( echo %%d ) >> result.txt
del wifiName.txt
SET LINENO=1
echo Scan Log: [ %date% %time% ] >> X-Password.txt
echo --------------------------------------------------
echo  [ Author: Andrei Abd - CoderX (c)2022 ]
echo  [!] Report: usr.g0a1@gmai.com
echo  [!] Note:   Please use this program responsibly.
echo --------------------------------------------------
echo:
echo  [*] Result Scan:
timeout 3
cls
echo:
echo  [!] Done...
echo:
for /f "delims=" %%l in (result.txt) do (
    echo --------------------------------------------- >> X-Password.txt
    echo     Name Content           : %%l >> X-Password.txt
    netsh wlan show profile %%l key=clear | findstr "Key" >> X-Password.txt
    SET /A LINENO=LINENO+1
)
echo --------------------------------------------- >> X-Password.txt
del result.txt