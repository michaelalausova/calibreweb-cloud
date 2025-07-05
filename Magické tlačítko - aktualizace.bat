@echo off
cls
echo === Prechazim do slozky s projektem ===
cd /d "C:\Users\Michaela Laušová\Documents\Knihomišíweb"

echo.
echo === Pridavam vsechny zmeny ===
git add .

echo.
echo === Commituji zmeny ===
set /p COMMSG=Zadej popis zmen : 
git commit -m "%COMMSG%"

echo.
echo === Odesilam do GitHubu ===
git push

echo.
echo === Hotovo! :) ===
pause
