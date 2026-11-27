@echo off
title Installer Mod Bahasa Indonesia - The Witcher 3: Wild Hunt Remastered v1.0.1
color 0B
echo =====================================================================
echo    THE WITCHER 3: WILD HUNT REMASTERED — INDONESIAN MOD v1.0.1
echo          Divisi Game Modding ^& Lokalisasi - Milky Brain
echo =====================================================================
echo.
echo Pastikan file INSTALL.bat ini berada di dalam folder ekstraksi mod.
echo Script ini akan mem-backup en.w3strings asli lalu memasang file mod.
echo.

set /p GAME_DIR="Masukkan path folder instalasi The Witcher 3 Anda: "

if not exist "%GAME_DIR%\content\content0\en.w3strings" (
    echo [ERROR] content\content0\en.w3strings tidak ditemukan di folder tersebut!
    echo Pastikan Anda memasukkan path root game (contoh: C:\Program Files (x86)\Steam\steamapps\common\The Witcher 3).
    pause
    exit /b 1
)

if not exist "%GAME_DIR%\content\content0\en.w3strings.orig.bak" (
    echo Membuat cadangan file original ke: %GAME_DIR%\content\content0\en.w3strings.orig.bak ...
    copy /Y "%GAME_DIR%\content\content0\en.w3strings" "%GAME_DIR%\content\content0\en.w3strings.orig.bak"
) else (
    echo Cadangan en.w3strings.orig.bak sudah ada, dilewati.
)

echo.
echo Menyalin en.w3strings Bahasa Indonesia ke %GAME_DIR%\content\content0\en.w3strings ...
copy /Y "TIMPA_KE_FOLDER_GAME\content\content0\en.w3strings" "%GAME_DIR%\content\content0\en.w3strings"

if %ERRORLEVEL% EQU 0 (
    echo.
    echo =====================================================================
    echo [BERHASIL] Mod Bahasa Indonesia The Witcher 3 berhasil dipasang!
    echo Pastikan bahasa teks di dalam game disetel ke English.
    echo Untuk menghapus mod, kembalikan file en.w3strings.orig.bak menjadi en.w3strings.
    echo =====================================================================
) else (
    echo.
    echo [ERROR] Gagal menyalin file mod. Pastikan game sedang tidak berjalan.
)

pause
