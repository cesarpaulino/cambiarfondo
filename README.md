# Cambiarfondo
Cambiar fondo de pantalla desde un .bat

## Explicación del código:
- Define la ruta de la imagen que se usará como fondo de pantalla.
- set "rutaImagen=...": 
- Establece la ruta de la imagen en el registro.
- reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper: 
- reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v WallpaperStyle: 
- Define el estilo del fondo de pantalla:
0: Centrado.
1: Mosaico.
2: Expandido.
6: Ajustado.
10: Rellenado.
- Actualiza la configuración para aplicar los cambios.
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters: 
