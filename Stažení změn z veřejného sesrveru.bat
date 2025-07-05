@echo off
echo Stahuji aktualni databazi z verejneho serveru...

REM Cesta ke knihovne na serveru
set REMOTE_PATH=/opt/calibre-web/Knihovna/metadata.db

REM Cesta k mistni slozce knihovny
set LOCAL_PATH="C:\Users\Michaela Laušová\Documents\Knihomišíweb\Knihovna\metadata.db"

REM SSH spojeni – zadej heslo při vyzvání
scp root@89.221.218.129:%REMOTE_PATH% %LOCAL_PATH%

echo Hotovo. Aktualni databaze stazena do lokalni knihovny.
pause
