<?php

namespace App\Http\Controllers\WaliKelas\KTSP;

use App\AnggotaKelas;
use App\Guru;
use App\Http\Controllers\Controller;
use App\Kelas;
use App\KtspMappingMapel;
use App\KtspNilaiAkhirRaport;
use App\Mapel;
use App\Pembelajaran;
use App\Sekolah;
use App\Tapel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class HasilPenilaianController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $title = 'Hasil Pengelolaan Nilai Siswa';
        $sekolah = Sekolah::first();
        $tapel = Tapel::findorfail(session()->get('tapel_id'));
        $guru = Guru::where('user_id', Auth::user()->id)->first();
        $id_kelas_diampu = Kelas::where('tapel_id', $tapel->id)->where('guru_id', $guru->id)->get('id');

        $data_id_mapel_semester_ini = Mapel::where('tapel_id', $tapel->id)->get('id');
        $data_id_mapel_wajib = KtspMappingMapel::whereIn('mapel_id', $data_id_mapel_semester_ini)->where('kelompok', 1)->get('mapel_id');
        $data_id_mapel_pilihan = KtspMappingMapel::whereIn('mapel_id', $data_id_mapel_semester_ini)->where('kelompok', 2)->get('mapel_id');
        $data_id_mapel_muatan_lokal = KtspMappingMapel::whereIn('mapel_id', $data_id_mapel_semester_ini)->where('kelompok', 3)->get('mapel_id');

        $data_anggota_kelas = AnggotaKelas::whereIn('kelas_id', $id_kelas_diampu)->get();
        foreach ($data_anggota_kelas as $anggota_kelas) {
            $data_id_pembelajaran_wajib = Pembelajaran::where('kelas_id', $anggota_kelas->kelas_id)->whereIn('mapel_id', $data_id_mapel_wajib)->get('id');
            $data_id_pembelajaran_pilihan = Pembelajaran::where('kelas_id', $anggota_kelas->kelas_id)->whereIn('mapel_id', $data_id_mapel_pilihan)->get('id');
            $data_id_pembelajaran_muatan_lokal = Pembelajaran::where('kelas_id', $anggota_kelas->kelas_id)->whereIn('mapel_id', $data_id_mapel_muatan_lokal)->get('id');

            $data_nilai_mapel_wajib = KtspNilaiAkhirRaport::whereIn('pembelajaran_id', $data_id_pembelajaran_wajib)->where('anggota_kelas_id', $anggota_kelas->id)->get();
            $data_nilai_mapel_pilihan = KtspNilaiAkhirRaport::whereIn('pembelajaran_id', $data_id_pembelajaran_pilihan)->where('anggota_kelas_id', $anggota_kelas->id)->get();
            $data_nilai_mapel_muatan_lokal = KtspNilaiAkhirRaport::whereIn('pembelajaran_id', $data_id_pembelajaran_muatan_lokal)->where('anggota_kelas_id', $anggota_kelas->id)->get();

            $anggota_kelas->data_nilai_mapel_wajib = $data_nilai_mapel_wajib;
            $anggota_kelas->data_nilai_mapel_pilihan = $data_nilai_mapel_pilihan;
            $anggota_kelas->data_nilai_mapel_muatan_lokal = $data_nilai_mapel_muatan_lokal;
        }
        return view('walikelas.ktsp.hasilpenilaian.index', compact('title', 'sekolah', 'data_anggota_kelas'));
    }

}
