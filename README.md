# Laporan Praktikum 5: Membangun Navigasi di Flutter

## Identitas Mahasiswa
- **Nama**: Ahmad Bachtiar Raflyanysyah
- **NIM**: 362458302141
- **Mata Kuliah**: [MObile Development]
- **Judul Praktikum**: Membangun Navigasi dan Route di Flutter (Aplikasi Daftar Barang Belanja - Action Figures)

## Apa yang Dipelajari
- Mekanisme navigation dan route di Flutter.
- Membuat navigasi antar halaman dengan `Navigator.pushNamed` dan arguments.
- Model data dengan class `Item` (nama, harga, gambar, stok, rating, deskripsi).
- Widget `GridView.builder` untuk tampilan daftar produk.
- Animasi `Hero` untuk transisi gambar mulus.
- Penggunaan assets lokal untuk gambar (dari folder `assets/images/`).

## Deskripsi Aplikasi
Aplikasi ini adalah aplikasi belanja sederhana dengan tema action figures dari anime dan superhero. 
- **HomePage**: Menampilkan 6 produk dalam `GridView` (2 kolom, rasio 0.75). Setiap item adalah `Card` dengan gambar, nama, harga, stok, dan rating. Saat diklik, navigasi ke `ItemPage` dengan animasi `Hero`.
- **ItemPage**: Menampilkan detail produk (gambar dengan `AspectRatio 0.75`, nama, harga, stok, rating, dan deskripsi). Menggunakan `SingleChildScrollView` untuk menghindari overflow.
- **Produk**:
  1. Action Figure - Chitoge (Rp 5000, Stok 12, Rating 4.5): Deskripsi lengkap...
  2. Action Figure - Albedo (Rp 2000, Stok 20, Rating 4.2): ...
  3. Action Figure - Ram (Rp 4500, Stok 15, Rating 4.7): ...
  4. Action Figure - Asuna (Rp 6000, Stok 18, Rating 4.6): ...
  5. Action Figure - Goku (Rp 7000, Stok 10, Rating 4.8): ...
  6. Action Figure - Erza (Rp 3500, Stok 25, Rating 4.3): ...
- **Route**: `/` untuk HomePage, `/item` untuk ItemPage dengan arguments `Item`.

## Langkah-Langkah Pembuatan
Persiapan Proyek:

Buat proyek baru dengan perintah flutter create belanja di terminal.
Strukturkan folder proyek sebagai berikut:

lib/models/item.dart: File untuk mendefinisikan class Item sebagai model data.
lib/pages/home_page.dart: File untuk halaman utama yang menampilkan daftar produk dalam GridView.
lib/pages/item_page.dart: File untuk halaman detail produk yang diakses melalui navigasi.
assets/images/: Folder untuk menyimpan file gambar action figure (misalnya, chitoge.jpg, akbedo.jpg, dll.).
Pastikan Flutter dan Dart sudah terinstal, serta emulator atau perangkat fisik siap digunakan.

Membuat Model Data:

Buat class Item di lib/models/item.dart untuk merepresentasikan data produk, dengan properti: name (String), price (int), image (String), stock (int), rating (double), dan description (String).
Implementasikan constructor dengan parameter required untuk memastikan semua properti diisi saat instansiasi.
Contoh kode:
<img width="806" height="1006" alt="image" src="https://github.com/user-attachments/assets/7f78ffa4-3bff-4c17-b95c-4d7892cb9342" />


## Screenshot
### HomePage (Daftar Produk)
<img width="485" height="660" alt="image" src="https://github.com/user-attachments/assets/259bcc0b-e664-4687-a926-8997699f707f" />

2
<img width="485" height="660" alt="image" src="https://github.com/user-attachments/assets/7d393547-305f-42fc-a193-0fe82062dfc6" />


### ItemPage (Detail Akun)
<img width="485" height="660" alt="image" src="https://github.com/user-attachments/assets/4ddcfe37-2e3c-4de4-b97d-e3bc860d7742" />


## Kode Utama
### pages/home_pages.dart
<img width="960" height="7896" alt="image" src="https://github.com/user-attachments/assets/8a0aef2c-d664-4de3-a518-3b46ac1d63a5" />

### pages/item_pages.dart
<img width="960" height="4208" alt="image" src="https://github.com/user-attachments/assets/8f005d03-c9ec-4d8d-b919-ab346d7140f3" />

