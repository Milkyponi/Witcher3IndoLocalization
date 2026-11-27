#!/bin/bash
echo "====================================================================="
echo "   THE WITCHER 3: WILD HUNT REMASTERED — INDONESIAN MOD v1.0.1"
echo "         Divisi Game Modding & Lokalisasi - Milky Brain"
echo "====================================================================="
echo ""

read -p "Masukkan path folder instalasi The Witcher 3 Anda: " GAME_DIR

if [ ! -f "$GAME_DIR/content/content0/en.w3strings" ]; then
    echo "[ERROR] content/content0/en.w3strings tidak ditemukan di $GAME_DIR!"
    echo "Pastikan Anda memasukkan path root game The Witcher 3."
    exit 1
fi

if [ ! -f "$GAME_DIR/content/content0/en.w3strings.orig.bak" ]; then
    echo "Membuat cadangan berkas original ke: $GAME_DIR/content/content0/en.w3strings.orig.bak ..."
    cp -v "$GAME_DIR/content/content0/en.w3strings" "$GAME_DIR/content/content0/en.w3strings.orig.bak"
else
    echo "Cadangan en.w3strings.orig.bak sudah ada, dilewati."
fi

echo "Menyalin en.w3strings Bahasa Indonesia ..."
cp -v "TIMPA_KE_FOLDER_GAME/content/content0/en.w3strings" "$GAME_DIR/content/content0/en.w3strings"

if [ $? -eq 0 ]; then
    echo ""
    echo "====================================================================="
    echo "[BERHASIL] Mod Bahasa Indonesia The Witcher 3 berhasil dipasang!"
    echo "Tips Linux/Proton: Tambahkan --launcher-skip %command% di Steam Launch Options"
    echo "untuk melewati REDlauncher dan mencegah proses menggantung saat keluar game."
    echo "====================================================================="
else
    echo "[ERROR] Gagal menyalin berkas mod."
fi
