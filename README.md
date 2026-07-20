# KoJaksan Android App

Aplikasi Android KoJaksan berbasis WebView dengan fitur lengkap.

## Fitur
- **Full WebView** dengan semua permissions dan advanced settings
- **Widget Android** untuk akses cepat ke aplikasi
- **GitHub Actions** untuk build APK otomatis

## Permissions yang Didukung
- Internet & Network State
- Read/Write Storage (External & Media)
- Camera & Microphone
- Precise & Approximate Location
- Notification & Exact Alarm
- Activity Recognition, Vibration, Phone State
- SMS, Contacts, Email

## Advanced WebView Settings
- JavaScript Enabled
- DOM Storage Enabled
- File Access & Content Access
- Universal File Access from File URLs
- Built-in Zoom Controls
- Wide Viewport & Overview Mode
- Geolocation Enabled

---

## Panduan Build APK via GitHub (Menggunakan HP)

### Langkah 1: Buat Repository GitHub
1. Buka browser HP Anda (Chrome/Samsung Internet)
2. Kunjungi [github.com](https://github.com)
3. Login ke akun GitHub Anda (daftar jika belum punya)
4. Klik tombol **+** (plus) di pojok kanan atas
5. Pilih **New repository**
6. Isi nama repository: `KoJaksan`
7. Pilih **Public**
8. Klik **Create repository**

### Langkah 2: Upload File ke GitHub
**Cara A: Via Browser HP (Direkomendasikan)**
1. Di halaman repository baru, klik **Add file** > **Upload files**
2. Klik **Choose your files**
3. Pilih file TAR yang telah diunduh (`kojaksan-android.tar`)
4. Tunggu upload selesai
5. Klik **Commit changes**

**Cara B: Via GitHub Mobile App**
1. Install aplikasi GitHub dari Play Store
2. Login dengan akun Anda
3. Buka repository `KoJaksan`
4. Klik **Add file** > **Upload file**
5. Pilih file TAR dari penyimpanan HP

### Langkah 3: Extract TAR File
Karena file diupload dalam format TAR, Anda perlu mengekstraknya:

**Menggunakan GitHub Actions (Otomatis):**
1. Buka tab **Actions** di repository
2. Workflow sudah tersedia di `.github/workflows/build.yml`
3. Jika belum berjalan otomatis, klik **Run workflow**

**Atau extract manual via HP:**
1. Install aplikasi **ZArchiver** atau **RAR** dari Play Store
2. Extract `kojaksan-android.tar`
3. Upload hasil extract ke GitHub

### Langkah 4: Build APK Otomatis
1. Pastikan file sudah di-push ke branch `main`
2. Buka tab **Actions** di repository GitHub
3. Pilih workflow **Build KoJaksan APK**
4. Klik **Run workflow** > **Run workflow**
5. Tunggu 5-10 menit hingga build selesai

### Langkah 5: Download APK
1. Setelah build selesai, klik workflow run yang berhasil
2. Scroll ke bawah ke bagian **Artifacts**
3. Download:
   - `kojaksan-debug-apk` (untuk testing)
   - `kojaksan-release-apk` (versi rilis)
4. Install APK di HP Anda

---

## Struktur Proyek
```
kojaksan-android/
├── .github/workflows/build.yml    # GitHub Actions CI/CD
├── app/
│   ├── src/main/
│   │   ├── AndroidManifest.xml    # Permissions
│   │   ├── java/com/kojaksan/
│   │   │   ├── MainActivity.java  # WebView utama
│   │   │   └── widget/
│   │   │       └── KoJaksanWidget.java
│   │   ├── res/                   # Layout & resources
│   │   └── assets/www/index.html  # File HTML aplikasi
│   └── build.gradle
├── build.gradle
├── settings.gradle
└── gradlew
```

## Widget
Setelah instalasi, tambahkan widget KoJaksan ke home screen:
1. Long press di home screen
2. Pilih **Widgets**
3. Cari **KoJaksan**
4. Drag widget ke home screen

## Catatan Keamanan
- File APK debug tidak di-sign, cocok untuk testing
- Untuk rilis Play Store, perlu signing key
- Semua permissions telah dideklarasikan di AndroidManifest.xml

---

**Dibuat dengan ❤️ untuk KoJaksan**
