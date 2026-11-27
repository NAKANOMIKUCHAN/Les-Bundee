# Edukids Privat - Web App

Aplikasi web manajemen les privat **Edukids Privat (Owner)** yang dibuat persis dan identik dengan desain antarmuka pada screenshot yang diberikan.

## 🚀 Fitur yang Tersedia Persis Sesuai Screenshot

1. **Sidebar Drawer / Menu Navigasi (Persis Screenshot 1)**:
   - Logo Edukids (ikon buku/figur belajar berwarna biru toska & kuning keemasan).
   - Profil: `Edukids Privat · Owner`.
   - Item menu aktif `Dashboard` dengan pill kuning keemasan khas Edukids (`#fbb028`).
   - Kategori & Menu lengkap:
     - **SISWA & TUTOR**: Pendaftaran (badge 2), Data Siswa, Data Tutor, Paket & Penugasan (badge 6).
     - **KEGIATAN BELAJAR**: Jadwal & Kalender, Laporan Harian (badge 8), Laporan Siswa (PDF).
     - **KEUANGAN**: Paket & Harga, Invoice & Pembayaran (badge 1), Honor Tutor, Pemasukan Bulanan, Pengeluaran.
   - Badge notifikasi merah pada item terkait.

2. **Dashboard (Persis Screenshot 2)**:
   - Kartu Sambutan: *"Halo, Owner 👋 - Senin, 23 November 2026 · 0 sesi les hari ini."*
   - 6 Kartu Statistik Pastel:
     - Siswa aktif: `7` (4 pendaftar dalam proses)
     - Tutor aktif: `3` (yang sedang memegang siswa)
     - Sesi hari ini: `0` (0 sudah dilaporkan)
     - Laporan perlu diperiksa: `8` (2 belum diisi tutor)
     - Perlu perpanjangan: `6` (paket hampir habis)
     - Tagihan belum lunas: `Rp1.570.000` (3 invoice · 2 lewat tempo)
   - Tabel **Pengingat Perpanjangan Paket (6)**:
     - Indikator bar merah di sebelah kiri
     - Kolom: Siswa (Alya Putri, Kenzo, Fathan, Bima) dengan badge "Privat"
     - Program: Les Privat Matematika · SD 8 sesi
     - Sesi: Progress bar merah & teks *"sisa 0 dari 8"*
     - Masa Aktif: *"s/d 23 Nov 2026 (0 hari lagi)"*

3. **Data Siswa (Persis Screenshot 3)**:
   - Tabs Filter: `Pendaftar (4)`, `Aktif (7)` (Pill Navy aktif), `Jeda (0)`, `Selesai (0)`, `Semua (11)`.
   - Tombol Aksi: `↓ CSV` (Export CSV langsung berfungsi) & `+ Tambah Siswa` (Modal popup interaktif).
   - Form Filter Lengkap:
     - Kolom Pencarian: *"Cari nama / kode / seko..."* (pencarian langsung bekerja)
     - Dropdown: Privat & Semi, Semua jenjang, Semua program, Semua area, Semua tutor, Urutkan.
   - Tabel Siswa Lengkap: `EP-0101` (Alya Putri), `EP-0104` (Bima Satria), `EP-0106` (Fathan Alfarizi), `EP-0111` (Kenzo Prasetya), dll.

4. **Jadwal & Kalender (Persis Screenshot 4)**:
   - Toggle view: `Kalender` (Aktif) vs `14 hari ke depan`.
   - Navigasi bulan: `< November 2026 >`, tombol `Hari ini`.
   - Filter tutor & siswa + tombol `+ Buat jadwal`.
   - Kalender Bulan November 2026:
     - Tanggal 23 Nov ditandai dengan kotak kuning keemasan aktif.
     - Titik warna sesi: Hijau (dilaporkan), Biru (terjadwal), Merah (belum dilaporkan / izin).
     - Legenda status sesi.
   - Kartu detail tanggal: *"Senin, 23 Nov 2026 · 0 sesi"* dengan tombol `+ Sesi di tanggal ini` dan indikator *"MODE DEMO"*.

5. **Invoice & Pembayaran (Persis Screenshot 5)**:
   - Sub-tab: `Invoice` (Aktif) & `Pembayaran (1)`.
   - 4 Kartu Metrik Keuangan: Belum lunas (3), Lewat jatuh tempo (2), Menunggu verifikasi (1), Lunas bulan ini (2).
   - Filter status invoice: Semua, Belum lunas, Draft, Lunas, Dibatalkan.
   - Pencarian invoice & tombol `+ Buat invoice`.
   - Tabel invoice: `INV-EP-2026-007` (Nadia Zahra), `INV-EP-2026-009` (Kenzo Prasetya), `INV-EP-2026-008` (Naura Azzahra), `INV-EP-2026-006` (Alya Putri).

6. **Fitur Tambahan**:
   - Preview Switcher di bagian atas: Bebas pilih **Mode HP (Persis Screenshot)** atau **Layar Penuh (Desktop)**.
   - Modal popup interaktif untuk Tambah Siswa, Buat Jadwal, dan Buat Invoice.
   - Download CSV otomatis.
   - Efek animasi dan interaksi halus.

---

## 💻 Cara Menjalankan

### Cara 1 (Paling Mudah - Langsung Klik):
Cukup buka file `index.html` dengan mengklik dua kali (double click) atau klik kanan > **Open with** > **Google Chrome** / **Microsoft Edge**.

### Cara 2 (Menggunakan Local Server PowerShell):
1. Buka PowerShell di folder ini.
2. Jalankan perintah:
   ```powershell
   powershell -ExecutionPolicy Bypass -File .\server.ps1
   ```
3. Buka browser di `http://localhost:3000/`.
