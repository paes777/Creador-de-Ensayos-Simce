@echo off
echo =======================================================
echo SUBIENDO LA APLICACIÓN A GITHUB...
echo =======================================================
echo.
echo Por favor, escribe exactamente tu nombre de usuario de Github (ej: JuanPerez)
set /p github_user="Usuario: "

echo.
echo Preparando los archivos (Esto iniciara el repositorio y guardara todo)...
cd "simce-plataforma"
git init
git add .
git commit -m "Creador de Ensayos Simce - Version Premium"
git branch -M main

echo.
echo Conectando con tu repositorio "Creador-de-Ensayos-Simce"...
git remote remove origin 2>nul
git remote add origin https://github.com/%github_user%/Creador-de-Ensayos-Simce.git

echo.
echo Subiendo el codigo... (Si pide inicio de sesion, autorizalo en la ventana que se abra)
git push -u origin main

echo.
echo =======================================================
echo ¡Listo! Los archivos estan subidos a Github.
echo =======================================================
pause
