# SIPARUS

## 📌 Deskripsi Proyek
SIPARUS (Sistem Informasi Pembayaran dan Manajemen Invoice Rumah Susun) merupakan platform terintegrasi berbasis web yang dikembangkan untuk membantu pengelolaan pembayaran sewa serta invoice penghuni Rumah Susun Kota Semarang secara efisien dan transparan. Aplikasi ini terdiri dari aplikasi admin menggunakan Laravel 11 dengan Filament, aplikasi calon penghuni menggunakan Next.js 14, dan keduanya berkomunikasi melalui RESTful API berbasis Laravel 11.

📂 **[Repository GitHub Proyek](https://github.com/labibaadinda/Sistem-Informasi-Pembayaran-dan-Pengelolaan-Rusun-Kota-Semarang)**

## 🚀 Fitur Utama

### 🔹 Website Admin
- **Teknologi:** Laravel 11, Filament PHP, MySQL
- **Fitur:**
  - CRUD data rusun
  - Manajemen transaksi (verifikasi, hapus, update)
  - Dashboard interaktif untuk pemantauan transaksi dan pengelolaan data penghuni

### 🔹 Website Penghuni
- **Teknologi:** Next.js 14 (frontend), Laravel 11 (backend API), MySQL
- **Fitur:**
  - Pendaftaran dan login user
  - Melihat daftar dan detail rusun
  - Pemesanan kamar secara online
  - Upload bukti pembayaran via WhatsApp
  - Melihat status transaksi dan booking

### 🔹 Integrasi WhatsApp untuk Konfirmasi Pembayaran
- Setelah calon penghuni melakukan pembayaran, mereka dapat mengunggah bukti pembayaran melalui WhatsApp ke admin.
- Admin dapat memverifikasi pembayaran dan memperbarui status transaksi di dashboard.

## 📂 Struktur Repository
```
siparus-project/
├── SIPARUS-backend/   # Backend API Laravel 11
├── SIPARUS-prototype-main/   # Frontend Next.js 14
├── LaporanPKL_LabibaAdindaZaahwana.pdf   # File laporan PKL
└── README.md   # Dokumentasi
```
```
siparus-project/
├── admin-dashboard/   # Dashboard admin (Laravel 11 + Filament)
├── user-portal/       # Portal user calon penghuni (Next.js 14)
├── api-backend/       # Backend RESTful API Laravel 11
├── database/          # Struktur database dan migrasi
└── README.md          # Dokumentasi
```

## 🌐 URL Aplikasi
Saat aplikasi dijalankan dilokal URL nya, yaitu : 
- **Website Admin**: [http://localhost:8000/admin](http://localhost:8000/admin)
- **Website Penghuni**: [http://localhost:3000](http://localhost:3000)

## 🌐 REST API
API dikembangkan menggunakan Laravel 11 sebagai RESTful API dengan autentikasi token untuk integrasi frontend Next.js. API ini mengelola data transaksi, informasi rusun, dan pengguna.

### 🛠 Menjalankan Backend API Laravel

Ikuti langkah-langkah berikut:

```bash
# Clone repository
git clone https://github.com/labibaadinda/Sistem-Informasi-Pembayaran-dan-Pengelolaan-Rusun-Kota-Semarang.git

cd SIPARUS-backend

# Instal dependensi
composer install

# Salin konfigurasi
cp .env.example .env

# Generate key Laravel
php artisan key:generate

# Konfigurasi Database
# - Edit file .env, sesuaikan DB_DATABASE, DB_USERNAME, DB_PASSWORD

# Migrasi database
php artisan migrate

# Jalankan Server
php artisan serve

# API berjalan pada http://localhost:8000
```

### 🔎 Pengujian API dengan Postman

- **Unduh dan instal [Postman](https://www.postman.com/)**
- Import koleksi API dari file `api_collection.json` yang disediakan dalam folder dokumentasi API (opsional jika ada)
- Gunakan URL endpoint `http://localhost:8000/api/...` untuk mengakses resource.

Contoh endpoint API:
- Login: `POST /api/login`
- Daftar rusun: `GET /api/rusun`
- Detail rusun: `GET /api/rusun/{id}`

## 🔎 Cara Menghubungkan Frontend dengan Backend API

Agar frontend Next.js bisa berkomunikasi dengan backend Laravel melalui API, gunakan metode fetch API atau Axios.



## 🔗 Tautan Repository
- [GitHub Repository](https://github.com/labibaadinda/Sistem-Informasi-Pembayaran-dan-Pengelolaan-Rusun-Kota-Semarang)

## 🔗 Teknologi dan Tools
| Komponen             | Teknologi                              |
|----------------------|----------------------------------------|
| **Frontend User**    | Next.js 14                             |
| **Backend & Admin**  | Laravel 11, Filament PHP               |
| **Database**         | MySQL                                  |
| **Deployment Tools** | Git, GitHub, Composer, NPM             |
| **Pengujian**        | Black Box Testing                      |

## 📖 Dokumentasi API
Dokumentasi lengkap RESTful API tersedia pada Postman collection.

## 👥 Kontributor
- **Labiba Adinda Zahwana** - Universitas Diponegoro

## 📌 Lisensi
© 2025 Labiba Adinda Zahwana - Universitas Diponegoro.
