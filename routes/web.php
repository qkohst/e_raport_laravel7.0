<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/unauthorized', function () {
  $title = 'Unauthorized';
  return view('errorpage.401', compact('title'));
});


Route::get('/', 'AuthController@index')->name('login');
Route::post('/', 'AuthController@store')->name('login');
Route::post('/settingtapel', 'AuthController@setting_tapel')->name('setting.tapel');

Route::group(['middleware' => ['auth']], function () {

  Route::get('/logout', 'AuthController@logout')->name('logout');
  Route::get('/password', 'AuthController@view_ganti_password')->name('gantipassword');
  Route::post('/password', 'AuthController@ganti_password')->name('gantipassword');

  Route::get('/profile', 'ProfileUserController@index')->name('profile');

  Route::get('/dashboard', 'DashboardController@index')->name('dashboard');

  // Route User Admin 
  Route::group(['middleware' => 'checkRole:1'], function () {
    Route::group(['prefix' => 'admin'], function () {
      Route::resource('profileadmin', 'Admin\ProfileController',  [
        'uses' => ['update']
      ]);
      Route::resource('pengumuman', 'Admin\PengumumanController',  [
        'uses' => ['index', 'store', 'update']
      ]);

      Route::get('user/export', 'Admin\UserController@export')->name('user.export');
      Route::resource('user', 'Admin\UserController',  [
        'uses' => ['index', 'store', 'update']
      ]);
      Route::resource('sekolah', 'Admin\SekolahController',  [
        'uses' => ['index', 'update']
      ]);
      Route::get('guru/export', 'Admin\GuruController@export')->name('guru.export');
      Route::get('guru/import', 'Admin\GuruController@format_import')->name('guru.format_import');
      Route::post('guru/import', 'Admin\GuruController@import')->name('guru.import');
      Route::resource('guru', 'Admin\GuruController',  [
        'uses' => ['index', 'store', 'update', 'destroy']
      ]);
      Route::resource('tapel', 'Admin\TapelController',  [
        'uses' => ['index', 'store']
      ]);
      Route::post('kelas/anggota', 'Admin\KelasController@store_anggota')->name('kelas.anggota');
      Route::delete('kelas/anggota/{anggota}', 'Admin\KelasController@delete_anggota')->name('kelas.anggota.delete');
      Route::resource('kelas', 'Admin\KelasController',  [
        'uses' => ['index', 'store', 'show', 'destroy']
      ]);
      Route::get('siswa/export', 'Admin\SiswaController@export')->name('siswa.export');
      Route::get('siswa/import', 'Admin\SiswaController@format_import')->name('siswa.format_import');
      Route::post('siswa/import', 'Admin\SiswaController@import')->name('siswa.import');
      Route::post('siswa/registrasi', 'Admin\SiswaController@registrasi')->name('siswa.registrasi');
      Route::resource('siswa', 'Admin\SiswaController',  [
        'uses' => ['index', 'store', 'update', 'destroy']
      ]);
      Route::get('mapel/import', 'Admin\MapelController@format_import')->name('mapel.format_import');
      Route::post('mapel/import', 'Admin\MapelController@import')->name('mapel.import');
      Route::resource('mapel', 'Admin\MapelController',  [
        'uses' => ['index', 'store', 'update', 'destroy']
      ]);
      Route::resource('mapel', 'Admin\MapelController',  [
        'uses' => ['index', 'store', 'update', 'destroy']
      ]);
      Route::get('pembelajaran/export', 'Admin\PembelajaranController@export')->name('pembelajaran.export');
      Route::post('pembelajaran/settings', 'Admin\PembelajaranController@settings')->name('pembelajaran.settings');
      Route::resource('pembelajaran', 'Admin\PembelajaranController',  [
        'uses' => ['index', 'store']
      ]);
      Route::post('ekstrakulikuler/anggota', 'Admin\EkstrakulikulerController@store_anggota')->name('ekstrakulikuler.anggota');
      Route::delete('ekstrakulikuler/anggota/{anggota}', 'Admin\EkstrakulikulerController@delete_anggota')->name('ekstrakulikuler.anggota.delete');
      Route::resource('ekstrakulikuler', 'Admin\EkstrakulikulerController',  [
        'uses' => ['index', 'store', 'show', 'destroy']
      ]);

      Route::resource('rekapkehadiran', 'Admin\RekapKehadiranSiswaController',  [
        'uses' => ['index', 'store']
      ]);

      Route::get('getKelas/ajax/{id}', 'AjaxController@ajax_kelas');

      // Raport K13 Admin
      Route::group(['middleware' => 'checkKurikulum:2013'], function () {

        // Setting Raport K13
        Route::resource('k13mapping', 'Admin\K13\MapingMapelController',  [
          'uses' => ['index', 'store']
        ]);
        Route::get('k13kkm/import', 'Admin\K13\KkmMapelController@format_import')->name('k13kkm.format_import');
        Route::post('k13kkm/import', 'Admin\K13\KkmMapelController@import')->name('k13kkm.import');
        Route::resource('k13kkm', 'Admin\K13\KkmMapelController',  [
          'uses' => ['index', 'store', 'update', 'destroy']
        ]);
        Route::resource('k13interval', 'Admin\K13\IntervalPredikatController',  [
          'uses' => ['index']
        ]);
        Route::get('k13sikap/import', 'Admin\K13\ButirSikapController@format_import')->name('k13sikap.format_import');
        Route::post('k13sikap/import', 'Admin\K13\ButirSikapController@import')->name('k13sikap.import');
        Route::resource('k13sikap', 'Admin\K13\ButirSikapController',  [
          'uses' => ['index', 'store', 'update',]
        ]);
        Route::resource('k13kd', 'Admin\K13\KdMapelController',  [
          'uses' => ['index', 'create', 'store', 'update', 'destroy']
        ]);
        Route::resource('k13tglraport', 'Admin\K13\TglRaportController',  [
          'uses' => ['index', 'store', 'update', 'destroy']
        ]);
        Route::resource('k13validasi', 'Admin\K13\ValidasiController',  [
          'uses' => ['index']
        ]);

        // Hasil Raport K13 
        Route::resource('k13statuspenilaian', 'Admin\K13\StatusPenilaianController',  [
          'uses' => ['index', 'store']
        ]);
        Route::resource('k13pengelolaannilai', 'Admin\K13\PengelolaanNilaiController',  [
          'uses' => ['index', 'store']
        ]);
        Route::resource('k13nilairaport', 'Admin\K13\NilaiRaportSemesterController',  [
          'uses' => ['index', 'store']
        ]);
        Route::resource('k13leger', 'Admin\K13\LegerNilaiSiswaController',  [
          'uses' => ['index', 'store', 'show']
        ]);
        Route::resource('k13raportpts', 'Admin\K13\CetakRaportPTSController',  [
          'uses' => ['index', 'store', 'show']
        ]);
        Route::resource('k13raportsemester', 'Admin\K13\CetakRaportSemesterController',  [
          'uses' => ['index', 'store', 'show']
        ]);
      });
      // End  Raport K13 Admin

      // Raport KTSP Admin
      Route::group(['middleware' => 'checkKurikulum:2006'], function () {

        // Setting Raport KTSP
        Route::resource('mapping', 'Admin\KTSP\MapingMapelController',  [
          'uses' => ['index', 'store']
        ]);
        Route::get('kkm/import', 'Admin\KTSP\KkmMapelController@format_import')->name('kkm.format_import');
        Route::post('kkm/import', 'Admin\KTSP\KkmMapelController@import')->name('kkm.import');
        Route::resource('kkm', 'Admin\KTSP\KkmMapelController',  [
          'uses' => ['index', 'store', 'update', 'destroy']
        ]);
        Route::resource('interval', 'Admin\KTSP\IntervalPredikatController',  [
          'uses' => ['index']
        ]);
        Route::resource('tglraport', 'Admin\KTSP\TglRaportController',  [
          'uses' => ['index', 'store', 'update', 'destroy']
        ]);
        Route::resource('validasi', 'Admin\KTSP\ValidasiController',  [
          'uses' => ['index']
        ]);

        // Hasil Raport K13 
        Route::resource('ktspstatuspenilaian', 'Admin\KTSP\StatusPenilaianController',  [
          'uses' => ['index', 'store']
        ]);
        Route::resource('ktsppengelolaannilai', 'Admin\KTSP\PengelolaanNilaiController',  [
          'uses' => ['index', 'store']
        ]);
        Route::resource('ktspnilairaport', 'Admin\KTSP\NilaiRaportSemesterController',  [
          'uses' => ['index', 'store']
        ]);
        Route::resource('ktspleger', 'Admin\KTSP\LegerNilaiSiswaController',  [
          'uses' => ['index', 'store', 'show']
        ]);
        Route::resource('ktspraportuts', 'Admin\KTSP\CetakRaportUTSController',  [
          'uses' => ['index', 'store', 'show']
        ]);
        Route::resource('ktspraportsemester', 'Admin\KTSP\CetakRaportSemesterController',  [
          'uses' => ['index', 'store', 'show']
        ]);
      });
      // End  Raport KTSP Admin

    });
  });
  // End Route User Admin 

  // Route User Guru 
  Route::group(['middleware' => 'checkRole:2'], function () {
    Route::group(['prefix' => 'guru'], function () {

      Route::resource('profileguru', 'Guru\ProfileController',  [
        'uses' => ['update']
      ]);

      Route::get('akses', 'AuthController@ganti_akses')->name('akses');

      // Route Guru Mapel
      Route::group(['middleware' => 'checkAksesGuru:Guru Mapel'], function () {
        Route::get('getKelas/ekstra/{id}', 'AjaxController@ajax_kelas_ekstra');

        Route::resource('nilaiekstra', 'Guru\NilaiEkstrakulikulerController',  [
          'uses' => ['index', 'create', 'store']
        ]);

        // Raport K13 Guru
        Route::group(['middleware' => 'checkKurikulum:2013'], function () {

          Route::resource('kdk13', 'Guru\K13\KdMapelController',  [
            'uses' => ['index', 'create', 'store', 'update', 'destroy']
          ]);

          Route::resource('rencanapengetahuan', 'Guru\K13\RencanaNilaiPengetahuanController',  [
            'uses' => ['index', 'create', 'store', 'show', 'edit', 'update']
          ]);
          Route::resource('rencanaketerampilan', 'Guru\K13\RencanaNilaiKeterampilanController',  [
            'uses' => ['index', 'create', 'store', 'show', 'edit', 'update']
          ]);
          Route::resource('rencanaspiritual', 'Guru\K13\RencanaNilaiSpiritualController',  [
            'uses' => ['index', 'create', 'store', 'show', 'edit', 'update']
          ]);
          Route::resource('rencanasosial', 'Guru\K13\RencanaNilaiSosialController',  [
            'uses' => ['index', 'create', 'store', 'show', 'edit', 'update']
          ]);
          Route::resource('bobotnilai', 'Guru\K13\RencanaBobotPenilaianController',  [
            'uses' => ['index', 'store', 'update']
          ]);

          // Import Nilai
          Route::get('nilaipengetahuan/import', 'Guru\K13\NilaiPengetahuanController@format_import')->name('nilaipengetahuan.format_import');
          Route::post('nilaipengetahuan/import', 'Guru\K13\NilaiPengetahuanController@import')->name('nilaipengetahuan.import');

          Route::get('nilaiketerampilan/import', 'Guru\K13\NilaiKeterampilanController@format_import')->name('nilaiketerampilan.format_import');
          Route::post('nilaiketerampilan/import', 'Guru\K13\NilaiKeterampilanController@import')->name('nilaiketerampilan.import');

          Route::get('nilaispiritual/import', 'Guru\K13\NilaiSpiritualController@format_import')->name('nilaispiritual.format_import');
          Route::post('nilaispiritual/import', 'Guru\K13\NilaiSpiritualController@import')->name('nilaispiritual.import');

          Route::get('nilaisosial/import', 'Guru\K13\NilaiSosialController@format_import')->name('nilaisosial.format_import');
          Route::post('nilaisosial/import', 'Guru\K13\NilaiSosialController@import')->name('nilaisosial.import');

          Route::get('nilaiptspas/import', 'Guru\K13\NilaiPtsPasController@format_import')->name('nilaiptspas.format_import');
          Route::post('nilaiptspas/import', 'Guru\K13\NilaiPtsPasController@import')->name('nilaiptspas.import');

          // End Import Nilai 
          Route::resource('nilaipengetahuan', 'Guru\K13\NilaiPengetahuanController',  [
            'uses' => ['index', 'create', 'store', 'update']
          ]);
          Route::resource('nilaiketerampilan', 'Guru\K13\NilaiKeterampilanController',  [
            'uses' => ['index', 'create', 'store', 'update']
          ]);
          Route::resource('nilaispiritual', 'Guru\K13\NilaiSpiritualController',  [
            'uses' => ['index', 'create', 'store', 'update']
          ]);
          Route::resource('nilaisosial', 'Guru\K13\NilaiSosialController',  [
            'uses' => ['index', 'create', 'store', 'update']
          ]);
          Route::resource('nilaiptspas', 'Guru\K13\NilaiPtsPasController',  [
            'uses' => ['index', 'create', 'store', 'update']
          ]);

          Route::resource('kirimnilaiakhir', 'Guru\K13\KirimNilaiAkhirController',  [
            'uses' => ['index', 'create', 'store']
          ]);
          Route::resource('nilaiterkirim', 'Guru\K13\LihatNilaiTerkirimController',  [
            'uses' => ['index', 'create']
          ]);
          Route::resource('prosesdeskripsi', 'Guru\K13\ProsesDeskripsiSiswaController',  [
            'uses' => ['index', 'create', 'store']
          ]);
        });
        // End  Raport K13 Guru

        // Raport KTSP Guru
        Route::group(['middleware' => 'checkKurikulum:2006'], function () {

          Route::resource('bobot', 'Guru\KTSP\BobotPenilaianController',  [
            'uses' => ['index', 'store', 'update']
          ]);

          // Import Nilai
          Route::get('nilaitugas/import', 'Guru\KTSP\NilaiTugasController@format_import')->name('nilaitugas.format_import');
          Route::post('nilaitugas/import', 'Guru\KTSP\NilaiTugasController@import')->name('nilaitugas.import');

          Route::get('nilaiuh/import', 'Guru\KTSP\NilaiUhController@format_import')->name('nilaiuh.format_import');
          Route::post('nilaiuh/import', 'Guru\KTSP\NilaiUhController@import')->name('nilaiuh.import');

          Route::get('nilaiutsuas/import', 'Guru\KTSP\NilaiUtsUasController@format_import')->name('nilaiutsuas.format_import');
          Route::post('nilaiutsuas/import', 'Guru\KTSP\NilaiUtsUasController@import')->name('nilaiutsuas.import');
          // End Import Nilai

          Route::resource('nilaitugas', 'Guru\KTSP\NilaiTugasController',  [
            'uses' => ['index', 'create', 'store', 'update']
          ]);
          Route::resource('nilaiuh', 'Guru\KTSP\NilaiUhController',  [
            'uses' => ['index', 'create', 'store', 'update']
          ]);
          Route::resource('nilaiutsuas', 'Guru\KTSP\NilaiUtsUasController',  [
            'uses' => ['index', 'create', 'store', 'update']
          ]);

          Route::resource('kirimnilai', 'Guru\KTSP\KirimNilaiController',  [
            'uses' => ['index', 'create', 'store']
          ]);
          Route::resource('lihatnilai', 'Guru\KTSP\LihatNilaiController',  [
            'uses' => ['index', 'create']
          ]);

          Route::resource('inputdeskripsi', 'Guru\KTSP\InputDeskripsiSiswaController',  [
            'uses' => ['index', 'create', 'store']
          ]);
        });
        // End  Raport KTSP Guru
      });
      // End Route Guru Mapel

      //Route Wali Kelas
      Route::group(['middleware' => 'checkAksesGuru:Wali Kelas'], function () {

        Route::resource('pesertadidik', 'Walikelas\PesertaDidikController',  [
          'uses' => ['index']
        ]);
        Route::resource('kehadiran', 'Walikelas\KehadiranSiswaController',  [
          'uses' => ['index', 'store']
        ]);
        Route::resource('prestasi', 'Walikelas\PrestasiSiswaController',  [
          'uses' => ['index', 'store', 'destroy']
        ]);
        Route::resource('catatan', 'Walikelas\CatatanWaliKelasController',  [
          'uses' => ['index', 'store']
        ]);
        Route::resource('kenaikan', 'Walikelas\KenaikanKelasController',  [
          'uses' => ['index', 'store']
        ]);

        // Raport K13 Wali Kelas
        Route::group(['middleware' => 'checkKurikulum:2013'], function () {
          Route::resource('prosesdeskripsisikap', 'Walikelas\K13\ProsesDeskripsiSikapController',  [
            'uses' => ['index', 'store']
          ]);
          Route::resource('statusnilaiguru', 'Walikelas\K13\StatusPenilaianGuruController',  [
            'uses' => ['index']
          ]);
          Route::resource('hasilnilai', 'Walikelas\K13\HasilPengelolaanNilaiController',  [
            'uses' => ['index']
          ]);
          Route::get('leger/export', 'Walikelas\K13\LihatLegerNilaiController@export')->name('leger.export');
          Route::resource('leger', 'Walikelas\K13\LihatLegerNilaiController',  [
            'uses' => ['index']
          ]);

          Route::resource('raportpts', 'Walikelas\K13\CetakRaportPTSController',  [
            'uses' => ['index', 'store', 'show']
          ]);
          Route::resource('raportsemester', 'Walikelas\K13\CetakRaportSemesterController',  [
            'uses' => ['index', 'store', 'show']
          ]);
        });
        // End  Raport K13 Wali Kelas

        // Raport KTSP Wali Kelas
        Route::group(['middleware' => 'checkKurikulum:2006'], function () {
          Route::resource('statuspenilaian', 'Walikelas\KTSP\StatusPenilaianController',  [
            'uses' => ['index']
          ]);
          Route::resource('hasilpenilaian', 'Walikelas\KTSP\HasilPenilaianController',  [
            'uses' => ['index']
          ]);
          Route::get('legernilai/export', 'Walikelas\KTSP\LegerNilaiController@export')->name('legernilai.export');

          Route::resource('legernilai', 'Walikelas\KTSP\LegerNilaiController',  [
            'uses' => ['index']
          ]);

          Route::resource('raportuts', 'Walikelas\KTSP\CetakRaportUTSController',  [
            'uses' => ['index', 'store', 'show']
          ]);
          Route::resource('raportuas', 'Walikelas\KTSP\CetakRaportUASController',  [
            'uses' => ['index', 'store', 'show']
          ]);
        });
        // End  Raport KTSP Wali Kelas
      });
      // End Route Wali Kelas
    });
  });
  // End Route User Guru 

  // Route User Siswa 
  Route::group(['middleware' => 'checkRole:3'], function () {

    Route::resource('profilesiswa', 'Siswa\ProfileController',  [
      'uses' => ['update']
    ]);
    Route::resource('ekstra', 'Siswa\EkstrakulikulerController',  [
      'uses' => ['index']
    ]);
    Route::resource('presensi', 'Siswa\RekapKehadiranController',  [
      'uses' => ['index']
    ]);

    // Raport K13 Siswa
    Route::group(['middleware' => 'checkKurikulum:2013'], function () {
      Route::resource('nilaiakhir', 'Siswa\K13\NilaiAkhirSemesterController',  [
        'uses' => ['index']
      ]);
    });
    // End  Raport K13 Siswa

    // Raport KTSP Siswa
    Route::group(['middleware' => 'checkKurikulum:2006'], function () {
      Route::resource('nilaisemester', 'Siswa\KTSP\NilaiAkhirSemesterController',  [
        'uses' => ['index']
      ]);
    });
    // End  Raport KTSP Siswa
  });
  // End Route User Siswa 

});

// LANJUT KE GURU KTSP
