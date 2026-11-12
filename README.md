# The Witcher 3: Wild Hunt Remastered — Indonesian Localization Mod

Mod lokalisasi teks dan subtitle Bahasa Indonesia untuk **The Witcher 3: Wild Hunt — Remastered (Next-Gen v4.04+)** mencakup Base Game, ekspansi **Hearts of Stone**, dan ekspansi **Blood and Wine** untuk PC (Steam / GOG / Epic / Steam Deck).

- **Target Kontainer**: `content/content0/en.w3strings` (REDengine 3 format v164 UTF-8)
- **Metode Pemasangan**: Direct Base Container Injection (Zero-Dependency, tanpa mod manager eksternal)
- **Status Build v1.0.0**: 82.871 dari 96.915 string berubah di kontainer (decode terverifikasi terhadap sumber); 14.044 string dipertahankan English sesuai kebijakan (UI, nama monster, nama peralatan/diagram, judul quest, nama diri/lokasi, dan kredit).

---

## 1. Kebijakan Bahasa & Terminologi

1. **Dialog Naratif & Lore (Bahasa Indonesia)**:
   - Seluruh percakapan cerita utama, misi sampingan, kontrak witcher, celetukan warga/musuh, buku, surat, catatan jurnal, bestiary, deskripsi lokasi (Fast Travel POI), dan kutipan kartu Gwent diterjemahkan ke Bahasa Indonesia dengan membedakan register bicara tiap tokoh (Geralt/Yennefer/Ciri/Triss/Dandelion/Vesemir memakai `Aku/Kau`, bangsawan dan kaisar memakai `Saya/Anda`, tanpa slang `gue/lo`).
2. **Sinkronisasi Fonetik Kata Terbata-bata**:
   - Suku kata gagap diselaraskan secara fonetik dengan kata terjemahan Bahasa Indonesia (misal: *"b-but"* $\rightarrow$ *"t-tapi"*, *"w-wait"* $\rightarrow$ *"t-tunggu"*).
3. **UI, Nama Monster, Peralatan, & Judul Quest (Original English)**:
   - Antarmuka utama (UI/HUD, menu pengaturan grafis/audio/kontrol) dipertahankan dalam Bahasa Inggris original.
   - Seluruh nama monster (*Griffin*, *Ghoul*, *Alghoul*, *Wraith*, *Noonwraith*, *Drowner*, *Leshen*, *Fiend*, *Bruxa*, *Katakan*, *Higher Vampire*, dll.) dipertahankan dalam Bahasa Inggris original untuk keselarasan dengan panduan bestiary internasional.
   - Nama pedang, armor, potion, decoction, bomb, oil, runestone, glyph, label `Diagram: ...` / `Formula: ...`, serta judul quest/kontrak (`Contract: ...`, `Quest: ...`) tetap dalam Bahasa Inggris original; seluruh deskripsi efek mekanik, stat bonus, dan objektif jurnal di bawahnya diterjemahkan ke Bahasa Indonesia.

---

## 2. Rincian Cakupan Kontainer (`en.w3strings` — 96.915 Entri)

| Batch | Cakupan Konten | Total Entri | Diterjemahkan (ID) | Tetap English (Whitelist/Policy) | Estimasi Kata Total |
| :--- | :--- | :---: | :---: | :---: | :---: |
| **Batch 0 & 1A** | Prolog & White Orchard (`100k–399k`) | 4.197 | 4.129 | 68 | ~36.167 |
| **Batch 1B** | Velen & Bloody Baron (`400k–499k`) | 11.381 | 11.161 | 220 | ~103.961 |
| **Batch 1C** | Free City of Novigrad (`500k–599k`) | 18.593 | 18.180 | 413 | ~149.890 |
| **Batch 1D** | Skellige, Kaer Morhen & Main Climax (`1.0M–1.099M`) | 22.041 | 21.454 | 587 | ~298.131 |
| **Batch 1E** | Expansion 1: *Hearts of Stone* (`1.10M–1.139M`) | 6.764 | 6.709 | 55 | ~79.600 |
| **Batch 1F** | Expansion 2: *Blood and Wine* (`1.14M–1.299M`) | 16.961 | 16.682 | 279 | ~206.717 |
| **Batch 2** | Books, Letters, Lore & Bestiary | 1.605 | 1.598 | 7 | ~162.793 |
| **Batch 3** | Items, Equipment & Potion Mechanics (Hybrid) | 2.024 | 354 | 1.670 | ~10.806 |
| **Batch 4** | Quest Journal, Objectives & Notifications (Hybrid) | 221 | 97 | 124 | ~1.479 |
| **Batch 5** | Other Keyed Strings, Gwent, POI & Notices (Selektif) | 11.308 | 3.035 | 8.273 | ~51.930 |
| **UI Exempt** | UI, HUD, Menus & Settings | 1.914 | 0 | 1.914 | ~4.865 |
| **TOTAL UNIK** | **Kontainer Terpadu `content/content0/en.w3strings`** | **96.915** | **82.871** | **14.044** | **~1.106.372** |

*(Catatan: terdapat 243 ID irisan antara sampel prolog Batch 0 dan sub-batch wilayah/keyed; perhitungan di atas mengacu pada hasil decode kontainer akhir sebesar 82.871 string berubah dari 96.915 string dasar).*

---

## 3. Panduan Pemasangan

Unduh arsip rilis dari halaman [Releases](https://github.com/Milkyponi/Witcher3IndoLocalization/releases):
- **Nama Berkas**: `The_Witcher_3_Indonesian_Translation_v1.0.0.zip`

### Cara 1: Pemasangan Manual (Timpa Langsung)
1. Ekstrak berkas `The_Witcher_3_Indonesian_Translation_v1.0.0.zip`.
2. Buka direktori instalasi **The Witcher 3** Anda, lalu masuk ke `content/content0/`:
   - **Steam (Windows)**: `C:\Program Files (x86)\Steam\steamapps\common\The Witcher 3\content\content0\`
   - **GOG (Windows)**: `C:\GOG Games\The Witcher 3 Wild Hunt GOTY\content\content0\`
   - **Linux / Steam Deck**: `~/.local/share/Steam/steamapps/common/The Witcher 3/content/content0/`
3. **Cadangkan Berkas Asli**: Salin berkas `en.w3strings` original menjadi `en.w3strings.orig.bak`.
4. Salin folder `content` yang ada di dalam `TIMPA_KE_FOLDER_GAME/` ke folder root instalasi **The Witcher 3** Anda dan pilih **Replace/Timpa**.
5. Pastikan bahasa teks di pengaturan in-game adalah **English**.

### Cara 2: Skrip Installer Otomatis (Otomatis Backup + Copy)
- **Windows**: Klik ganda `INSTALL.bat`, lalu masukkan path folder instalasi The Witcher 3 Anda.
- **Linux / Steam Deck**: Buka terminal di folder ekstraksi, lalu jalankan:
  ```bash
  chmod +x INSTALL.sh && ./INSTALL.sh
  ```

### Tips Pengguna Linux / Proton / Steam Deck
Tambahkan argumen berikut pada **Steam Launch Options** The Witcher 3:
```text
--launcher-skip %command%
```
Opsi ini melewati aplikasi perantara `REDlauncher.exe` sehingga game langsung meluncur dalam ~1 detik dan mencegah proses menggantung (status Steam macet di *"Playing"*) setelah keluar dari game.

---

## 4. Cara Menghapus Mod (Rollback)

1. Buka folder `<Folder Game>/content/content0/`.
2. Hapus berkas `en.w3strings` (versi mod), kemudian ubah kembali nama berkas cadangan `en.w3strings.orig.bak` menjadi `en.w3strings`.

---

## 5. Kredit Teknis

- **Pengarah Proyek**: Milky Poni
- **Rekayasa Biner & Lokalisasi**: Ochi (Milky Brain — Game Modding & Localization Division)
- **Binary Codec**: `w3strings_codec.py` (REDengine 3 `.w3strings` v164 UTF-8 Bit6 VLQ + Dynamic 16-bit XOR Cipher)
- **Hak Cipta Game Asli**: © CD PROJEKT S.A.
