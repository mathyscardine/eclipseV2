@echo off
echo ==========================================
echo  🌑 COMPILATION ECLIPSE MOD
echo ==========================================
echo.
echo Verification de Java...
java -version 2>nul
if errorlevel 1 (
    echo ❌ Java n'est pas installe ou pas dans le PATH
    echo Telecharge Java 21 ici : https://adoptium.net/
    pause
    exit /b 1
)
echo ✅ Java trouve !
echo.
echo Compilation en cours...
echo (Premiere compilation = 3-5 min, sois patient)
echo.
gradlew.bat build
if errorlevel 1 (
    echo.
    echo ❌ ERREUR DE COMPILATION
    echo Verifie que tu as une connexion internet
    pause
    exit /b 1
)
echo.
echo ==========================================
echo  ✅ COMPILATION REUSSIE !
echo ==========================================
echo.
echo Ton mod est ici :
echo build\libs\eclipse-mod-1.0.0.jar
echo.
echo Copie ce fichier dans ton dossier mods :
echo %%appdata%%\.minecraft\modsecho.
pause
