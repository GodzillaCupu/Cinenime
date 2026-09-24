# Cinenime

Cinenime adalah aplikasi iOS berbasis SwiftUI untuk menjelajahi film, series, dan anime — menampilkan konten trending dan top-rated dengan antarmuka bergaya streaming app.

Project ini dibuat sebagai portofolio pribadi, dengan referensi/inspirasi dari tutorial berikut:
👉 https://www.youtube.com/watch?v=-VC3hIEL7eQ

## Status & Fitur

Aplikasi menggunakan `TabView` dengan 4 tab utama:

- **Home** — sudah berjalan. Menampilkan hero banner (dengan tombol Play & Download) dan beberapa carousel horizontal: Trending Anime, Top Rated Anime, Top Rated Movies, Trending Series, Top Rated Series.
- **Up Coming**, **Search**, **Download** — masih placeholder, belum diimplementasikan (work in progress).

> Catatan: saat ini poster pada carousel masih menggunakan URL gambar placeholder yang didefinisikan di `Constants.swift`. Pemanggilan data secara live ke TMDB API belum diimplementasikan di layer UI.

## Tech Stack

- **Swift 5** + **SwiftUI**
- **TMDB (The Movie Database) API** sebagai sumber data film/series
- Tidak ada dependency eksternal (Swift Package Manager) — hanya menggunakan framework bawaan Apple (`Foundation`, `SwiftUI`)

## Struktur Project

```
Cinenime/
├── CinenimeApp.swift        # Entry point aplikasi (@main)
├── ContentView.swift        # Root view berisi TabView (Home / Up Coming / Search / Download)
├── HomeView.swift           # Halaman utama: hero banner + carousel kategori
├── HorizontalListView.swift # Komponen reusable untuk carousel poster horizontal
├── Title.swift              # Model data (Title, APIObject) sesuai bentuk response TMDB
├── APIConfig.swift          # Loader konfigurasi API (base URL & API key) dari APIConfig.json
├── APIConfig.json           # Konfigurasi base URL & API key TMDB
├── Constants.swift          # String, nama ikon, URL placeholder, dan style modifier yang disentralisasi
├── Errors.swift             # Enum error (APIConfigError, NetworkError) untuk penanganan error
└── Assets.xcassets/         # App icon, warna aksen, dan aset lainnya
```

## Konfigurasi API

Kredensial API TMDB disimpan di `Cinenime/APIConfig.json`:

```json
{
    "tmdbBaseUrl": "https://api.themoviedb.org",
    "tmdbAPIKey": "..."
}
```

File ini dimuat oleh `APIConfig.swift` melalui singleton `APIConfig.shared`, yang membaca file JSON dari app bundle lalu men-decode-nya menjadi struct `APIConfig`. Jika file tidak ditemukan atau gagal di-decode, error akan dilempar melalui `APIConfigError`.

> ⚠️ **Catatan keamanan**: API key saat ini disimpan sebagai plain text dan ikut ter-commit ke repository. Untuk project publik/production, sebaiknya API key dipindahkan ke file yang di-`.gitignore`-kan atau disimpan lebih aman (misalnya melalui build configuration/xcconfig atau secret manager), bukan dokumentasi ini yang mengubahnya.

## Error Handling

`Errors.swift` mendefinisikan dua enum error yang conform ke `LocalizedError`:

- **`APIConfigError`** — error terkait pemuatan konfigurasi (file tidak ditemukan, gagal load data, gagal decode).
- **`NetworkError`** — disiapkan untuk error pada layer networking (mis. response URL tidak valid, konfigurasi hilang), untuk digunakan saat layer networking TMDB diimplementasikan sepenuhnya.

## Requirements

- Xcode versi terbaru yang mendukung SwiftUI
- iOS Simulator atau device fisik

## Cara Menjalankan

1. Clone repository ini.
2. Buka `Cinenime.xcodeproj` di Xcode.
3. Pilih simulator/device target.
4. Build & Run (`Cmd + R`).

## Roadmap

- [ ] Implementasi networking layer nyata ke TMDB API (mengganti data placeholder di `Constants.swift`)
- [ ] Implementasi tab **Up Coming**
- [ ] Implementasi tab **Search**
- [ ] Implementasi tab **Download**

## Referensi

- Tutorial acuan: https://www.youtube.com/watch?v=-VC3hIEL7eQ
- [TMDB API Documentation](https://developer.themoviedb.org/docs)
