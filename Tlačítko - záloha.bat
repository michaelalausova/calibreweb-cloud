@echo off
:: Nastaveni cesty ke knihovne
set knihovna="C:\Users\Michaela Laušová\Documents\Knihomišíweb\Knihovna"
:: Nastaveni cesty k zaloham
set zaloha="C:\Users\Michaela Laušová\Documents\Knihomišíweb\Zaloha"

:: Ziskani aktualniho datumu a xasu pro nazev souboru
for /f "tokens=1-4 delims=/ " %%a in ('date /t') do (
    set den=%%a
    set mesic=%%b
    set rok=%%c
)
for /f "tokens=1-2 delims=: " %%a in ('time /t') do (
    set hod=%%a
    set min=%%b
)

:: Odebrani diakritiky a mezer z nazvu souboru
set datum=%rok%-%mesic%-%den%_%hod%-%min%
set datum=%datum: =0%

:: Vytvoreni slozky Zaloha, pokud neexistuje
if not exist %zaloha% (
    mkdir %zaloha%
)

:: Kopirovani souboru s casovým razitkem
copy %knihovna%\metadata.db %zaloha%\metadata_%datum%.db

echo Hotovo! metadata.db byla zalohovana do slozky Zaloha.
pause
