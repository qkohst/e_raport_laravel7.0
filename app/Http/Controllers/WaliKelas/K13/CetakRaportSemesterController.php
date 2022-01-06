<?php

namespace App\Http\Controllers\WaliKelas\K13;

use App\AnggotaEkstrakulikuler;
use App\AnggotaKelas;
use App\CatatanWaliKelas;
use App\Ekstrakulikuler;
use App\Guru;
use App\Http\Controllers\Controller;
use App\K13DeskripsiSikapSiswa;
use App\K13MappingMapel;
use App\K13NilaiAkhirRaport;
use App\K13TglRaport;
use App\KehadiranSiswa;
use App\Kelas;
use App\Mapel;
use App\NilaiEkstrakulikuler;
use App\Pembelajaran;
use App\PrestasiSiswa;
use App\Sekolah;
use App\Tapel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use PDF;

class CetakRaportSemesterController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $title = 'Cetak Raport Semester';
        return view('walikelas.k13.raportsemester.setpaper', compact('title'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $title = 'Cetak Raport Semester';
        $tapel = Tapel::findorfail(session()->get('tapel_id'));
        $guru = Guru::where('user_id', Auth::user()->id)->first();
        $id_kelas_diampu = Kelas::where('tapel_id', $tapel->id)->where('guru_id', $guru->id)->get('id');
        $data_anggota_kelas = AnggotaKelas::whereIn('kelas_id', $id_kelas_diampu)->get();

        $paper_size = $request->paper_size;
        $orientation = $request->orientation;

        return view('walikelas.k13.raportsemester.index', compact('title', 'data_anggota_kelas', 'paper_size', 'orientation'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Request $request, $id)
    {
        $sekolah = Sekolah::first();
        $anggota_kelas = AnggotaKelas::findorfail($id);

        if ($request->data_type == 1) {
            $title = 'Kelengkapan Raport';
            $kelengkapan_raport = PDF::loadview('walikelas.k13.raportsemester.kelengkapanraport', compact('title', 'sekolah', 'anggota_kelas'))->setPaper($request->paper_size, $request->orientation);
            return $kelengkapan_raport->stream('KELENGKAPAN RAPORT ' . $anggota_kelas->siswa->nama_lengkap . ' (' . $anggota_kelas->kelas->nama_kelas . ').pdf');
        } elseif ($request->data_type == 2) {
            $title = 'Cetak Raport';
            $deskripsi_sikap = K13DeskripsiSikapSiswa::where('anggota_kelas_id', $anggota_kelas->id)->first();

            $data_id_mapel_semester_ini = Mapel::where('tapel_id', session()->get('tapel_id'))->get('id');
            $data_id_mapel_kelompok_a = K13MappingMapel::whereIn('mapel_id', $data_id_mapel_semester_ini)->where('kelompok', 'A')->get('mapel_id');
            $data_id_mapel_kelompok_b = K13MappingMapel::whereIn('mapel_id', $data_id_mapel_semester_ini)->where('kelompok', 'B')->get('mapel_id');
            $data_id_pembelajaran_a = Pembelajaran::where('kelas_id', $anggota_kelas->kelas_id)->whereIn('mapel_id', $data_id_mapel_kelompok_a)->get('id');
            $data_id_pembelajaran_b = Pembelajaran::where('kelas_id', $anggota_kelas->kelas_id)->whereIn('mapel_id', $data_id_mapel_kelompok_b)->get('id');

            $data_nilai_kelompok_a = K13NilaiAkhirRaport::whereIn('pembelajaran_id', $data_id_pembelajaran_a)->where('anggota_kelas_id', $anggota_kelas->id)->get();
            $data_nilai_kelompok_b = K13NilaiAkhirRaport::whereIn('pembelajaran_id', $data_id_pembelajaran_b)->where('anggota_kelas_id', $anggota_kelas->id)->get();

            $data_id_ekstrakulikuler = Ekstrakulikuler::where('tapel_id', session()->get('tapel_id'))->get('id');

            $data_anggota_ekstrakulikuler = AnggotaEkstrakulikuler::whereIn('ekstrakulikuler_id', $data_id_ekstrakulikuler)->where('anggota_kelas_id', $anggota_kelas->id)->get();
            foreach ($data_anggota_ekstrakulikuler as $anggota_ekstrakulikuler) {
                $cek_nilai_ekstra = NilaiEkstrakulikuler::where('anggota_ekstrakulikuler_id', $anggota_ekstrakulikuler->id)->first();
                if (is_null($cek_nilai_ekstra)) {
                    $anggota_ekstrakulikuler->nilai = null;
                    $anggota_ekstrakulikuler->deskripsi = null;
                } else {
                    $anggota_ekstrakulikuler->nilai = $cek_nilai_ekstra->nilai;
                    $anggota_ekstrakulikuler->deskripsi = $cek_nilai_ekstra->deskripsi;
                }
            }

            $data_prestasi_siswa = PrestasiSiswa::where('anggota_kelas_id', $anggota_kelas->id)->get();
            $kehadiran_siswa = KehadiranSiswa::where('anggota_kelas_id', $anggota_kelas->id)->first();
            $catatan_wali_kelas = CatatanWaliKelas::where('anggota_kelas_id', $anggota_kelas->id)->first();

            $cek_tanggal_raport = K13TglRaport::where('tapel_id', session()->get('tapel_id'))->first();
            if (is_null($cek_tanggal_raport)) {
                return back()->with('toast_warning', 'Tanggal raport belum disetting oleh admin');
            } else {
                $raport = PDF::loadview('walikelas.k13.raportsemester.raport', compact('title', 'sekolah', 'anggota_kelas', 'deskripsi_sikap', 'data_nilai_kelompok_a', 'data_nilai_kelompok_b', 'data_anggota_ekstrakulikuler', 'data_prestasi_siswa', 'kehadiran_siswa', 'catatan_wali_kelas'))->setPaper($request->paper_size, $request->orientation);
                return $raport->stream('RAPORT ' . $anggota_kelas->siswa->nama_lengkap . ' (' . $anggota_kelas->kelas->nama_kelas . ').pdf');
            }
        }
    }
}
