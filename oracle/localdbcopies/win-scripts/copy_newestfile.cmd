DEL D:\backup\2thefiler\*.backup
FOR /F "delims=|" %%I IN ('DIR "D:\backup\Proligent3_0_2*.backup" /B /O:D') DO SET NewestFile=%%I
:: copy D:\backup\%NewestFile% D:\backup\2thefiler\
mklink D:\backup\2thefiler\%NewestFile% D:\backup\%NewestFile%