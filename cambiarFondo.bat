@echo off
Title Comando RoboCopy
@echo off
@echo ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
@echo ::::::::                                                ::::::::
@echo ::::::::    Comando para cambiar fondo de pantalla      ::::::::
@echo ::::::::                                                ::::::::
@echo ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
@echo ::                                                            ::
@echo ::                   Apasionado de las TICs                   ::
@echo ::       comando basico para cambiar fondo de pantalla        ::
@echo ::                                                            ::
@echo ::             $author Ing._Cesar_Paulino.dll                 ::
@echo ::                                                            ::
@echo ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
@echo off
@pause

set "rutaImagen=C:\Imagenes\fondo.jpg"

if not exist "%rutaImagen%" (
    echo La imagen no existe en la ruta especificada.
    pause
    exit /b 1
)

echo Cambiando el fondo de pantalla...
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "%rutaImagen%" /f
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v WallpaperStyle /t REG_SZ /d "10" /f
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters

echo Fondo de pantalla cambiado correctamente.
pause
