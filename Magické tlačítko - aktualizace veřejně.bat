@echo off
echo === Pripojuji se k serveru a stahuji zmeny z GitHubu ===
"%~dp0plink.exe" root@89.221.218.129 -pw Kirousek89 "/root/aktualizuj-knihomisiweb.sh"
pause
