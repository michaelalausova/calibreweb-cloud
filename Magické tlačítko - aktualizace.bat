@echo off
cls
echo === Přecházím do složky s projektem ===
cd /d "C:\Users\Michaela Laušová\Documents\Knihomišíweb"

echo.
echo === Přidávám všechny změny ===
git add .

echo.
echo === Commituji změny ===
set /p COMMSG=Zadej popis změn (např. Nové knihy + úprava stylu): 
git commit -m "%COMMSG%"

echo.
echo === Odesílám na GitHub ===
git push

echo.
echo === Hotovo! 🎉 Změny by měly být online ===
pause
