## APLIKASI E RAPORT 

Aplikasi ini dibangun dengan framework laravel 7.0 dan DBMS MySQL dengan menggunakan template dari admin LTE.
Cocok digunakan pada lembaga Jenjang SLTP Sederajat atau PKBM yang memiliki mata pelajaran muatan lokal yang banyak sehingga tidak dapat menggunakan aplikasi E raport dari Dinas Pendidikan.

### Adapun fitur dari Aplikasi E Raport ini secara global antara lain :

1. Multi user (Admin, Guru, Wali Kelas, Siswa).
2. Tampilan Responsive.
3. Mendukung 2 Jenis Kurikulum yaitu KTSP 2006 & kurikulum K13.
4. Didukung dengan Import Excel untuk menu input data dan nilai.
5. Data Master & Leger Nilai Siswa dapat didownload ke dalam format Excel.
6. File Raport dan identitas peserta didik dapat didownload kedalam format PDF.

## CONTOH DOKUMEN

Contoh dokumen hasil download dari aplikasi dapat anda lihat pada link berikut : 
#### A. Kurikulum K13
1. Leger nilai siswa                : https://docs.google.com/spreadsheets/d/1wL6BHdca7pwkIcCTCpE-uZf6Qca_qK8B/edit?usp=sharing&ouid=117234314675225289717&rtpof=true&sd=true
3. Identitas Peserta Didik          : https://drive.google.com/file/d/18tQcCNxmaVNkYzwbu3BJOeuynypIHVVG/view?usp=sharing
4. Raport Penilaian Tengah Semester : https://drive.google.com/file/d/1r1o1U28Qn5TMpvKC6jHT_DPn4WFa1gOu/view?usp=sharing
5. Raport Penilaian Akhir Semester  : https://drive.google.com/file/d/1hErwzXFXRKK81NaUJ0gFVl8GrL00obmn/view?usp=sharing

#### B. Kurikulum KTSP 2006
1. Leger nilai siswa                : https://docs.google.com/spreadsheets/d/1eWrWhAg0HdLRZrel5UW33lEqSt6fA-D-/edit?usp=sharing&ouid=117234314675225289717&rtpof=true&sd=true
2. Identitas Peserta Didik          : https://drive.google.com/file/d/18tQcCNxmaVNkYzwbu3BJOeuynypIHVVG/view?usp=sharing
3. Raport Ujian Tengah Semester     : https://drive.google.com/file/d/1WxEziJqeUtAgj1JjD7Ad4wVmhg0p4Qhy/view?usp=sharing
4. Raport Ujia Akhir Semester       : https://drive.google.com/file/d/1sBS6FgO971HUff4nI5Pax2B-ihCLEYwJ/view?usp=sharing


## HAK AKSES USER 

#### A. Admin
1. Mengelola data user
2. Mengelola data pengumuman
3. Mengelola data Master : 
   - Profil Sekolah
   - Data Guru
   - Data Tahun Pelajaran
   - Data Mata Pelajaran
   - Data Kelas & Wali 
   - Data Siswa
   - Data Pembelajaran
   - Data Ekstrakulikuler
5. mengelola Mapping Mata Pelajaran
6. Mengelola KKM Mata Pelajaran
7. Menglola Butir Sikap
8. Mengelola Data Kompetensi Dasar
9. Input Tanggal Raport
10. Validasi Data
11. Akses Hasil Penilaian 
12. Akses Leger Nilai Siswa
13. Cetak Raport Siswa

#### B. Guru Mapel
1. Mengelola Data Kompetensi Dasar
2. Melakukan Rencana Penilaian :
   - Nilai Pengetahuan
   - Nilai Keterampilan 
   - Nilai Spiritual
   - Nilai Sosial
   - Setting Bobot Penilaian
4. Input Data Penilaian :
   - Nilai Pengetahuan
   - Nilai Keterampilan 
   - Nilai Spiritual
   - Nilai Sosial
   - Nilai PTS & UAS
6. Input Nilai Ekstrakulikuler
7. Kirim Nilai Akhir
8. Proses Deskripsi Siswa

#### C. Wali Kelas
1. Akses Data Siswa Anggota Kelas
2. Input Data & Nilai :
   - Input Kehadiran Siswa
   - Input kehadiran Siswa
   - Input Catatan Wali Kelas
   - Input Kenaikan Kelas / Kelulusan
4. Akses Hasil Penilaian
5. Proses Deskripsi Sikap
6. Akses Leger Nilai Siswa
7. Cetak Raport Siswa

#### D. Siswa
1. Akses Nilai Ekstrakulikuler
2. Akses Rekap Kehadiaran 
3. Akses Nilai Akhir Semester

## PREVIEW APLIKASI

### Interface User Admin 

### Interface User Guru Mapel

### Interface User Wali Kelas

### Interface User Siswa 

## INFORMASI TAMBAHAN 
Account default Admin 
- Username    : admin
- Password    : admin123456

Password default untuk semua user yang baru ditambahkan adalah 123456

<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400"></a></p>

<p align="center">
<a href="https://travis-ci.org/laravel/framework"><img src="https://travis-ci.org/laravel/framework.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/d/total.svg" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/v/stable.svg" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/license.svg" alt="License"></a>
</p>

## About Laravel

Laravel is a web application framework with expressive, elegant syntax. We believe development must be an enjoyable and creative experience to be truly fulfilling. Laravel takes the pain out of development by easing common tasks used in many web projects, such as:

- [Simple, fast routing engine](https://laravel.com/docs/routing).
- [Powerful dependency injection container](https://laravel.com/docs/container).
- Multiple back-ends for [session](https://laravel.com/docs/session) and [cache](https://laravel.com/docs/cache) storage.
- Expressive, intuitive [database ORM](https://laravel.com/docs/eloquent).
- Database agnostic [schema migrations](https://laravel.com/docs/migrations).
- [Robust background job processing](https://laravel.com/docs/queues).
- [Real-time event broadcasting](https://laravel.com/docs/broadcasting).

Laravel is accessible, powerful, and provides tools required for large, robust applications.

## Learning Laravel

Laravel has the most extensive and thorough [documentation](https://laravel.com/docs) and video tutorial library of all modern web application frameworks, making it a breeze to get started with the framework.

If you don't feel like reading, [Laracasts](https://laracasts.com) can help. Laracasts contains over 1500 video tutorials on a range of topics including Laravel, modern PHP, unit testing, and JavaScript. Boost your skills by digging into our comprehensive video library.

## Laravel Sponsors

We would like to extend our thanks to the following sponsors for funding Laravel development. If you are interested in becoming a sponsor, please visit the Laravel [Patreon page](https://patreon.com/taylorotwell).

### Premium Partners

- **[Vehikl](https://vehikl.com/)**
- **[Tighten Co.](https://tighten.co)**
- **[Kirschbaum Development Group](https://kirschbaumdevelopment.com)**
- **[64 Robots](https://64robots.com)**
- **[Cubet Techno Labs](https://cubettech.com)**
- **[Cyber-Duck](https://cyber-duck.co.uk)**
- **[Many](https://www.many.co.uk)**
- **[Webdock, Fast VPS Hosting](https://www.webdock.io/en)**
- **[DevSquad](https://devsquad.com)**
- **[OP.GG](https://op.gg)**

## Contributing

Thank you for considering contributing to the Laravel framework! The contribution guide can be found in the [Laravel documentation](https://laravel.com/docs/contributions).

## Code of Conduct

In order to ensure that the Laravel community is welcoming to all, please review and abide by the [Code of Conduct](https://laravel.com/docs/contributions#code-of-conduct).

## Security Vulnerabilities

If you discover a security vulnerability within Laravel, please send an e-mail to Taylor Otwell via [taylor@laravel.com](mailto:taylor@laravel.com). All security vulnerabilities will be promptly addressed.

## License

The Laravel framework is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).
