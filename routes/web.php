<?php

use App\Http\Controllers;
use Illuminate\Support\Facades\Route;

Route::get('/unauthorized', function () {
    $title = 'Unauthorized';
    return view('errorpage.401', compact('title'));
});


Route::get('/', [Controllers\AuthController::class, 'index'])->name('login');
Route::post('/', [Controllers\AuthController::class, 'store'])->name('login');
Route::post('/settingtapel', [Controllers\AuthController::class, 'setting_tapel'])->name('setting.tapel');

Route::middleware(['auth'])->group(function () {
    Route::get('/logout', [Controllers\AuthController::class, 'logout'])->name('logout');
    Route::get('/password', [Controllers\AuthController::class, 'ganti_password'])->name('gantipassword');
    Route::post('/password', [Controllers\AuthController::class, 'ganti_password'])->name('gantipassword');

    Route::get('/profile', [Controllers\ProfileUserController::class, 'index'])->name('profile');

    Route::get('/dashboard', [Controllers\DashboardController::class, 'index'])->name('dashboard');

    // Route User Admin
    Route::middleware('checkRole:1')->group(function () {
        Route::prefix('admin')->group(function () {
            Route::resource('profileadmin', Controllers\Admin\ProfileController::class)->only('update');
            Route::resource('pengumuman', Controllers\Admin\PengumumanController::class)->only(['index', 'store', 'update', 'destroy']);

            Route::get('user/export', [Controllers\Admin\UserController::class, 'export'])->name('user.export');
            Route::resource('user', Controllers\Admin\UserController::class)->only(['index', 'store', 'update']);
            Route::resource('sekolah', Controllers\Admin\SekolahController::class)->only(['index', 'update']);
            Route::get('guru/export', [Controllers\Admin\GuruController::class, 'export'])->name('guru.export');
            Route::get('guru/import', [Controllers\Admin\GuruController::class, 'format_import'])->name('guru.format_import');
            Route::post('guru/import', [Controllers\Admin\GuruController::class, 'import'])->name('guru.import');
            Route::resource('guru', Controllers\Admin\GuruController::class)->only(['index', 'store', 'update', 'destroy']);
            Route::resource('tapel', Controllers\Admin\TapelController::class)->only(['index', 'store']);
            Route::post('kelas/anggota', [Controllers\Admin\KelasController::class, 'store_anggota'])->name('kelas.anggota');
            Route::delete('kelas/anggota/{anggota}', [Controllers\Admin\KelasController::class, 'delete_anggota'])->name('kelas.anggota.delete');
            Route::resource('kelas', Controllers\Admin\KelasController::class)->only(['index', 'store', 'show', 'destroy']);
            Route::get('siswa/export', [Controllers\Admin\SiswaController::class, 'export'])->name('siswa.export');
            Route::get('siswa/import', [Controllers\Admin\SiswaController::class, 'format_import'])->name('siswa.format_import');
            Route::post('siswa/import', [Controllers\Admin\SiswaController::class, 'import'])->name('siswa.import');
            Route::post('siswa/registrasi', [Controllers\Admin\SiswaController::class, 'registrasi'])->name('siswa.registrasi');
            Route::resource('siswa', Controllers\Admin\SiswaController::class)->only(['index', 'store', 'update', 'destroy']);
            Route::get('mapel/import', [Controllers\Admin\MapelController::class, 'format_import'])->name('mapel.format_import');
            Route::post('mapel/import', [Controllers\Admin\MapelController::class, 'import'])->name('mapel.import');
            Route::resource('mapel', Controllers\Admin\MapelController::class)->only(['index', 'store', 'update', 'destroy']);
            Route::get('pembelajaran/export', [Controllers\Admin\PembelajaranController::class, 'export'])->name('pembelajaran.export');
            Route::post('pembelajaran/settings', [Controllers\Admin\PembelajaranController::class, 'settings'])->name('pembelajaran.settings');
            Route::resource('pembelajaran', Controllers\Admin\PembelajaranController::class)->only(['index', 'store']);
            Route::post('ekstrakulikuler/anggota', [Controllers\Admin\EkstrakulikulerController::class, 'store_anggota'])->name('ekstrakulikuler.anggota');
            Route::delete('ekstrakulikuler/anggota/{anggota}', [Controllers\Admin\EkstrakulikulerController::class, 'delete_anggota'])->name('ekstrakulikuler.anggota.delete');
            Route::resource('ekstrakulikuler', Controllers\Admin\EkstrakulikulerController::class)->only(['index', 'store', 'show', 'destroy']);

            Route::resource('rekapkehadiran', Controllers\Admin\RekapKehadiranSiswaController::class)->only(['index', 'store']);

            Route::get('getKelas/ajax/{id}', [Controllers\AjaxController::class, 'ajax_kelas']);

            // Raport K13 Admin
            Route::middleware('checkKurikulum:2013')->group(function () {

                // Setting Raport K13
                Route::resource('k13mapping', Controllers\Admin\K13\MapingMapelController::class)->only(['index', 'store']);
                Route::get('k13kkm/import', [Controllers\Admin\K13\KkmMapelController::class, 'format_import'])->name('k13kkm.format_import');
                Route::post('k13kkm/import', [Controllers\Admin\K13\KkmMapelController::class, 'import'])->name('k13kkm.import');
                Route::resource('k13kkm', Controllers\Admin\K13\KkmMapelController::class)->only(['index', 'store', 'update', 'destroy']);
                Route::resource('k13interval', Controllers\Admin\K13\IntervalPredikatController::class)->only(['index']);
                Route::get('k13sikap/import', [Controllers\Admin\K13\ButirSikapController::class, 'format_import'])->name('k13sikap.format_import');
                Route::post('k13sikap/import', [Controllers\Admin\K13\ButirSikapController::class, 'import'])->name('k13sikap.import');
                Route::resource('k13sikap', Controllers\Admin\K13\ButirSikapController::class)->only(['index', 'store', 'update',]);
                Route::resource('k13kd', Controllers\Admin\K13\KdMapelController::class)->only(['index', 'create', 'store', 'update', 'destroy']);
                Route::resource('k13tglraport', Controllers\Admin\K13\TglRaportController::class)->only(['index', 'store', 'update', 'destroy']);
                Route::resource('k13validasi', Controllers\Admin\K13\ValidasiController::class)->only(['index']);

                // Hasil Raport K13
                Route::resource('k13statuspenilaian', Controllers\Admin\K13\StatusPenilaianController::class)->only(['index', 'store']);
                Route::resource('k13pengelolaannilai', Controllers\Admin\K13\PengelolaanNilaiController::class)->only(['index', 'store']);
                Route::resource('k13nilairaport', Controllers\Admin\K13\NilaiRaportSemesterController::class)->only(['index', 'store']);
                Route::resource('k13leger', Controllers\Admin\K13\LegerNilaiSiswaController::class)->only(['index', 'store', 'show']);
                Route::resource('k13raportpts', Controllers\Admin\K13\CetakRaportPTSController::class)->only(['index', 'store', 'show']);
                Route::resource('k13raportsemester', Controllers\Admin\K13\CetakRaportSemesterController::class)->only(['index', 'store', 'show']);
            });
            // End  Raport K13 Admin

            // Raport KTSP Admin
            Route::middleware('checkKurikulum:2006')->group(function () {

                // Setting Raport KTSP
                Route::resource('mapping', Controllers\Admin\KTSP\MapingMapelController::class)->only(['index', 'store']);
                Route::get('kkm/import', [Controllers\Admin\KTSP\KkmMapelController::class, 'format_import'])->name('kkm.format_import');
                Route::post('kkm/import', [Controllers\Admin\KTSP\KkmMapelController::class, 'import'])->name('kkm.import');
                Route::resource('kkm', Controllers\Admin\KTSP\KkmMapelController::class)->only(['index', 'store', 'update', 'destroy']);
                Route::resource('interval', Controllers\Admin\KTSP\IntervalPredikatController::class)->only(['index']);
                Route::resource('tglraport', Controllers\Admin\KTSP\TglRaportController::class)->only(['index', 'store', 'update', 'destroy']);
                Route::resource('validasi', Controllers\Admin\KTSP\ValidasiController::class)->only(['index']);

                // Hasil Raport K13
                Route::resource('ktspstatuspenilaian', Controllers\Admin\KTSP\StatusPenilaianController::class)->only(['index', 'store']);
                Route::resource('ktsppengelolaannilai', Controllers\Admin\KTSP\PengelolaanNilaiController::class)->only(['index', 'store']);
                Route::resource('ktspnilairaport', Controllers\Admin\KTSP\NilaiRaportSemesterController::class)->only(['index', 'store']);
                Route::resource('ktspleger', Controllers\Admin\KTSP\LegerNilaiSiswaController::class)->only(['index', 'store', 'show']);
                Route::resource('ktspraportuts', Controllers\Admin\KTSP\CetakRaportUTSController::class)->only(['index', 'store', 'show']);
                Route::resource('ktspraportsemester', Controllers\Admin\KTSP\CetakRaportSemesterController::class)->only(['index', 'store', 'show']);
            });
            // End  Raport KTSP Admin

        });
    });
    // End Route User Admin

    // Route User Guru
    Route::middleware('checkRole:2')->group(function () {
        Route::prefix('guru')->group(function () {

            Route::resource('profileguru', Controllers\Guru\ProfileController::class)->only(['update']);

            Route::get('akses', [Controllers\AuthController::class, 'ganti_akses'])->name('akses');

            // Route Guru Mapel
            Route::middleware('checkAksesGuru:Guru Mapel')->group(function () {
                Route::get('getKelas/ekstra/{id}', [Controllers\AjaxController::class, 'ajax_kelas_ekstra']);

                Route::resource('nilaiekstra', Controllers\Guru\NilaiEkstrakulikulerController::class)->only(['index', 'create', 'store']);

                // Raport K13 Guru
                Route::middleware('checkKurikulum:2013')->group(function () {

                    Route::resource('kdk13', Controllers\Guru\K13\KdMapelController::class)->only(['index', 'create', 'store', 'update', 'destroy']);

                    Route::resource('rencanapengetahuan', Controllers\Guru\K13\RencanaNilaiPengetahuanController::class)->only(['index', 'create', 'store', 'show', 'edit', 'update']);
                    Route::resource('rencanaketerampilan', Controllers\Guru\K13\RencanaNilaiKeterampilanController::class)->only(['index', 'create', 'store', 'show', 'edit', 'update']);
                    Route::resource('rencanaspiritual', Controllers\Guru\K13\RencanaNilaiSpiritualController::class)->only(['index', 'create', 'store', 'show', 'edit', 'update']);
                    Route::resource('rencanasosial', Controllers\Guru\K13\RencanaNilaiSosialController::class)->only(['index', 'create', 'store', 'show', 'edit', 'update']);
                    Route::resource('bobotnilai', Controllers\Guru\K13\RencanaBobotPenilaianController::class)->only(['index', 'store', 'update']);

                    // Import Nilai
                    Route::get('nilaipengetahuan/import', [Controllers\Guru\K13\NilaiPengetahuanController::class, 'format_import'])->name('nilaipengetahuan.format_import');
                    Route::post('nilaipengetahuan/import', [Controllers\Guru\K13\NilaiPengetahuanController::class, 'import'])->name('nilaipengetahuan.import');

                    Route::get('nilaiketerampilan/import', [Controllers\Guru\K13\NilaiKeterampilanController::class, 'format_import'])->name('nilaiketerampilan.format_import');
                    Route::post('nilaiketerampilan/import', [Controllers\Guru\K13\NilaiKeterampilanController::class, 'import'])->name('nilaiketerampilan.import');

                    Route::get('nilaispiritual/import', [Controllers\Guru\K13\NilaiSpiritualController::class, 'format_import'])->name('nilaispiritual.format_import');
                    Route::post('nilaispiritual/import', [Controllers\Guru\K13\NilaiSpiritualController::class, 'import'])->name('nilaispiritual.import');

                    Route::get('nilaisosial/import', [Controllers\Guru\K13\NilaiSosialController::class, 'format_import'])->name('nilaisosial.format_import');
                    Route::post('nilaisosial/import', [Controllers\Guru\K13\NilaiSosialController::class, 'import'])->name('nilaisosial.import');

                    Route::get('nilaiptspas/import', [Controllers\Guru\K13\NilaiPtsPasController::class, 'format_import'])->name('nilaiptspas.format_import');
                    Route::post('nilaiptspas/import', [Controllers\Guru\K13\NilaiPtsPasController::class, 'import'])->name('nilaiptspas.import');

                    // End Import Nilai
                    Route::resource('nilaipengetahuan', Controllers\Guru\K13\NilaiPengetahuanController::class)->only(['index', 'create', 'store', 'update']);
                    Route::resource('nilaiketerampilan', Controllers\Guru\K13\NilaiKeterampilanController::class)->only(['index', 'create', 'store', 'update']);
                    Route::resource('nilaispiritual', Controllers\Guru\K13\NilaiSpiritualController::class)->only(['index', 'create', 'store', 'update']);
                    Route::resource('nilaisosial', Controllers\Guru\K13\NilaiSosialController::class)->only(['index', 'create', 'store', 'update']);
                    Route::resource('nilaiptspas', Controllers\Guru\K13\NilaiPtsPasController::class)->only(['index', 'create', 'store', 'update']);

                    Route::resource('kirimnilaiakhir', Controllers\Guru\K13\KirimNilaiAkhirController::class)->only(['index', 'create', 'store']);
                    Route::resource('nilaiterkirim', Controllers\Guru\K13\LihatNilaiTerkirimController::class)->only(['index', 'create']);
                    Route::resource('prosesdeskripsi', Controllers\Guru\K13\ProsesDeskripsiSiswaController::class)->only(['index', 'create', 'store']);
                });
                // End  Raport K13 Guru

                // Raport KTSP Guru
                Route::middleware('checkKurikulum:2006')->group(function () {

                    Route::resource('bobot', Controllers\Guru\KTSP\BobotPenilaianController::class)->only(['index', 'store', 'update']);

                    // Import Nilai
                    Route::get('nilaitugas/import', [Controllers\Guru\KTSP\NilaiTugasController::class, 'format_import'])->name('nilaitugas.format_import');
                    Route::post('nilaitugas/import', [Controllers\Guru\KTSP\NilaiTugasController::class, 'import'])->name('nilaitugas.import');

                    Route::get('nilaiuh/import', [Controllers\Guru\KTSP\NilaiUhController::class, 'format_import'])->name('nilaiuh.format_import');
                    Route::post('nilaiuh/import', [Controllers\Guru\KTSP\NilaiUhController::class, 'import'])->name('nilaiuh.import');

                    Route::get('nilaiutsuas/import', [Controllers\Guru\KTSP\NilaiUtsUasController::class, 'format_import'])->name('nilaiutsuas.format_import');
                    Route::post('nilaiutsuas/import', [Controllers\Guru\KTSP\NilaiUtsUasController::class, 'import'])->name('nilaiutsuas.import');
                    // End Import Nilai

                    Route::resource('nilaitugas', Controllers\Guru\KTSP\NilaiTugasController::class)->only(['index', 'create', 'store', 'update']);
                    Route::resource('nilaiuh', Controllers\Guru\KTSP\NilaiUhController::class)->only(['index', 'create', 'store', 'update']);
                    Route::resource('nilaiutsuas', Controllers\Guru\KTSP\NilaiUtsUasController::class)->only(['index', 'create', 'store', 'update']);

                    Route::resource('kirimnilai', Controllers\Guru\KTSP\KirimNilaiController::class)->only(['index', 'create', 'store']);
                    Route::resource('lihatnilai', Controllers\Guru\KTSP\LihatNilaiController::class)->only(['index', 'create']);

                    Route::resource('inputdeskripsi', Controllers\Guru\KTSP\InputDeskripsiSiswaController::class)->only(['index', 'create', 'store']);
                });
                // End  Raport KTSP Guru
            });
            // End Route Guru Mapel

            //Route Wali Kelas
            Route::middleware('checkAksesGuru:Wali Kelas')->group(function () {

                Route::resource('pesertadidik', Controllers\Walikelas\PesertaDidikController::class)->only(['index']);
                Route::resource('kehadiran', Controllers\Walikelas\KehadiranSiswaController::class)->only(['index', 'store']);
                Route::resource('prestasi', Controllers\Walikelas\PrestasiSiswaController::class)->only(['index', 'store', 'destroy']);
                Route::resource('catatan', Controllers\Walikelas\CatatanWaliKelasController::class)->only(['index', 'store']);
                Route::resource('kenaikan', Controllers\Walikelas\KenaikanKelasController::class)->only(['index', 'store']);

                // Raport K13 Wali Kelas
                Route::middleware('checkKurikulum:2013')->group(function () {
                    Route::resource('prosesdeskripsisikap', Controllers\Walikelas\K13\ProsesDeskripsiSikapController::class)->only(['index', 'store']);
                    Route::resource('statusnilaiguru', Controllers\Walikelas\K13\StatusPenilaianGuruController::class)->only(['index']);
                    Route::resource('hasilnilai', Controllers\Walikelas\K13\HasilPengelolaanNilaiController::class)->only(['index']);
                    Route::get('leger/export', [Controllers\Walikelas\K13\LihatLegerNilaiController::class, 'export'])->name('leger.export');
                    Route::resource('leger', Controllers\Walikelas\K13\LihatLegerNilaiController::class)->only(['index']);

                    Route::resource('raportpts', Controllers\Walikelas\K13\CetakRaportPTSController::class)->only(['index', 'store', 'show']);
                    Route::resource('raportsemester', Controllers\Walikelas\K13\CetakRaportSemesterController::class)->only(['index', 'store', 'show']);
                });
                // End  Raport K13 Wali Kelas

                // Raport KTSP Wali Kelas
                Route::middleware('checkKurikulum:2006')->group(function () {
                    Route::resource('statuspenilaian', Controllers\Walikelas\KTSP\StatusPenilaianController::class)->only(['index']);
                    Route::resource('hasilpenilaian', Controllers\Walikelas\KTSP\HasilPenilaianController::class)->only(['index']);
                    Route::get('legernilai/export', [Controllers\Walikelas\KTSP\LegerNilaiController::class, 'export'])->name('legernilai.export');
                    Route::resource('legernilai', Controllers\Walikelas\KTSP\LegerNilaiController::class)->only(['index']);
                    Route::resource('raportuts', Controllers\Walikelas\KTSP\CetakRaportUTSController::class)->only(['index', 'store', 'show']);
                    Route::resource('raportuas', Controllers\Walikelas\KTSP\CetakRaportUASController::class)->only(['index', 'store', 'show']);
                });
                // End  Raport KTSP Wali Kelas
            });
            // End Route Wali Kelas
        });
    });
    // End Route User Guru

    // Route User Siswa
    Route::middleware('checkRole:3')->group(function () {
        Route::resource('profilesiswa', Controllers\Siswa\ProfileController::class)->only(['update']);
        Route::resource('ekstra', Controllers\Siswa\EkstrakulikulerController::class)->only(['index']);
        Route::resource('presensi', Controllers\Siswa\RekapKehadiranController::class)->only(['index']);

        // Raport K13 Siswa
        Route::middleware('checkKurikulum:2013')->group(function () {
            Route::resource('nilaiakhir', Controllers\Siswa\K13\NilaiAkhirSemesterController::class)->only(['index']);
            // End  Raport K13 Siswa
        });

        // Raport KTSP Siswa
        Route::middleware('checkKurikulum:2006')->group(function () {
            Route::resource('nilaisemester', Controllers\Siswa\KTSP\NilaiAkhirSemesterController::class)->only(['index']);
            // End  Raport KTSP Siswa
        });
    });
    // End Route User Siswa

});

// LANJUT KE GURU KTSP
