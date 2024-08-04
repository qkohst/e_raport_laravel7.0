<?php

namespace App\Http\Controllers\Admin\K13;

use App\Http\Controllers\Controller;
use App\Models\AnggotaEkstrakulikuler;
use App\Models\Ekstrakulikuler;
use App\Models\Guru;
use App\Models\K13ButirSikap;
use App\Models\K13KdMapel;
use App\Models\K13KkmMapel;
use App\Models\K13MappingMapel;
use App\Models\K13TglRaport;
use App\Models\Kelas;
use App\Models\Mapel;
use App\Models\Pembelajaran;
use App\Models\Siswa;
use App\Models\Tapel;

class ValidasiController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $title = 'Validasi Data';
        $tapel = Tapel::findorfail(session()->get('tapel_id'));

        // Validasi Data Master
        $count_guru = Guru::count();
        $count_mapel = Mapel::where('tapel_id', $tapel->id)->orderBy('nama_mapel', 'ASC')->count();

        $data_kelas = Kelas::where('tapel_id', $tapel->id)->orderBy('tingkatan_kelas', 'ASC')->get();
        foreach ($data_kelas as $kelas) {
            $jumlah_anggota = Siswa::where('kelas_id', $kelas->id)->count();
            $kelas->jumlah_anggota = $jumlah_anggota;

            $jumlah_pembelajaran = Pembelajaran::where('kelas_id', $kelas->id)->whereNotNull('guru_id')->where('status', 1)->count();
            $kelas->jumlah_pembelajaran = $jumlah_pembelajaran;
        }
        $count_kelas = count($data_kelas);

        $count_siswa = Siswa::where('status', 1)->count();
        $count_siswa_invalid = Siswa::where('status', 1)->where('kelas_id', null)->count();

        $data_ekstrakulikuler = Ekstrakulikuler::where('tapel_id', $tapel->id)->orderBy('nama_ekstrakulikuler', 'ASC')->get();
        foreach ($data_ekstrakulikuler as $ekstrakulikuler) {
            $jumlah_anggota = AnggotaEkstrakulikuler::where('ekstrakulikuler_id', $ekstrakulikuler->id)->count();
            $ekstrakulikuler->jumlah_anggota = $jumlah_anggota;
        }
        $count_ekstrakulikuler = count($data_ekstrakulikuler);
        // End Validasi Data Master

        // Validasi data Setting
        $id_mapel = Mapel::where('tapel_id', $tapel->id)->get('id');
        $id_telah_mapping = K13MappingMapel::whereIn('mapel_id', $id_mapel)->get('mapel_id');
        $mapel_belum_mapping = Mapel::whereNotIn('id', $id_telah_mapping)->get();
        $count_mapel_belum_mapping = count($mapel_belum_mapping);

        $id_kelas = Kelas::where('tapel_id', $tapel->id)->orderBy('tingkatan_kelas', 'ASC')->get('id');
        $count_pembelajaran = Pembelajaran::whereIn('kelas_id', $id_kelas)->whereNotNull('guru_id')->where('status', 1)->count();
        $count_kkm = K13KkmMapel::whereIn('kelas_id', $id_kelas)->whereIn('mapel_id', $id_mapel)->count();

        $count_sikap_spiritual = K13ButirSikap::where('jenis_kompetensi', 1)->count();
        $count_sikap_sosial = K13ButirSikap::where('jenis_kompetensi', 2)->count();

        $data_kd = Mapel::where('tapel_id', $tapel->id)->orderBy('nama_mapel', 'ASC')->get();
        foreach ($data_kd as $kd) {
            $jumlah_kd_mapel = K13KdMapel::where('mapel_id', $kd->id)->count();
            $kd->jumlah_kd_mapel = $jumlah_kd_mapel;
        }
        $count_data_kd = count($data_kd);

        $count_tgl_raport = K13TglRaport::where('tapel_id', $tapel->id)->count();

        // End validasi data Setting

        return view('admin.k13.validasi.index', compact('title', 'tapel', 'count_guru', 'count_mapel', 'data_kelas', 'count_kelas', 'count_siswa', 'count_siswa_invalid', 'data_ekstrakulikuler', 'count_ekstrakulikuler', 'mapel_belum_mapping', 'count_mapel_belum_mapping', 'count_pembelajaran', 'count_kkm', 'count_sikap_spiritual', 'count_sikap_sosial', 'data_kd', 'count_data_kd', 'count_tgl_raport'));
    }

}
