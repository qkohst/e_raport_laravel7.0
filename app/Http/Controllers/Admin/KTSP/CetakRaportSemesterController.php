<?php

namespace App\Http\Controllers\Admin\KTSP;

use App\AnggotaEkstrakulikuler;
use App\AnggotaKelas;
use App\CatatanWaliKelas;
use App\Ekstrakulikuler;
use App\Http\Controllers\Controller;
use App\KehadiranSiswa;
use App\Kelas;
use App\KtspMappingMapel;
use App\KtspNilaiAkhirRaport;
use App\KtspTglRaport;
use App\Mapel;
use App\NilaiEkstrakulikuler;
use App\Pembelajaran;
use App\PrestasiSiswa;
use App\Sekolah;
use Illuminate\Http\Request;
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
        $data_kelas = Kelas::where('tapel_id', session()->get('tapel_id'))->get();
        return view('admin.ktsp.raportsemester.setpaper', compact('title', 'data_kelas'));
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
        $kelas = Kelas::findorfail($request->kelas_id);
        $data_kelas = Kelas::where('tapel_id', session()->get('tapel_id'))->get();
        $data_anggota_kelas = AnggotaKelas::where('kelas_id', $kelas->id)->get();

        $paper_size = $request->paper_size;
        $orientation = $request->orientation;

        return view('admin.ktsp.raportsemester.index', compact('title', 'kelas', 'data_kelas', 'data_anggota_kelas', 'paper_size', 'orientation'));
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

            $data_id_mapel_semester_ini = Mapel::where('tapel_id', session()->get('tapel_id'))->get('id');
            $data_id_mapel_wajib = KtspMappingMapel::whereIn('mapel_id', $data_id_mapel_semester_ini)->where('kelompok', 1)->get('mapel_id');
            $data_id_mapel_pilihan = KtspMappingMapel::whereIn('mapel_id', $data_id_mapel_semester_ini)->where('kelompok', 2)->get('mapel_id');
            $data_id_mapel_muatan_lokal = KtspMappingMapel::whereIn('mapel_id', $data_id_mapel_semester_ini)->where('kelompok', 3)->get('mapel_id');

            $data_id_pembelajaran_wajib = Pembelajaran::where('kelas_id', $anggota_kelas->kelas_id)->whereIn('mapel_id', $data_id_mapel_wajib)->get('id');
            $data_id_pembelajaran_pilihan = Pembelajaran::where('kelas_id', $anggota_kelas->kelas_id)->whereIn('mapel_id', $data_id_mapel_pilihan)->get('id');
            $data_id_pembelajaran_muatan_lokal = Pembelajaran::where('kelas_id', $anggota_kelas->kelas_id)->whereIn('mapel_id', $data_id_mapel_muatan_lokal)->get('id');

            $data_nilai_mapel_wajib = KtspNilaiAkhirRaport::whereIn('pembelajaran_id', $data_id_pembelajaran_wajib)->where('anggota_kelas_id', $anggota_kelas->id)->get();
            $data_nilai_mapel_pilihan = KtspNilaiAkhirRaport::whereIn('pembelajaran_id', $data_id_pembelajaran_pilihan)->where('anggota_kelas_id', $anggota_kelas->id)->get();
            $data_nilai_mapel_muatan_lokal = KtspNilaiAkhirRaport::whereIn('pembelajaran_id', $data_id_pembelajaran_muatan_lokal)->where('anggota_kelas_id', $anggota_kelas->id)->get();

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

            $cek_tanggal_raport = KtspTglRaport::where('tapel_id', session()->get('tapel_id'))->first();
            if (is_null($cek_tanggal_raport)) {
                return back()->with('toast_warning', 'Tanggal raport belum disetting oleh admin');
            } else {
                $raport = PDF::loadview('walikelas.ktsp.raportuas.raport', compact('title', 'sekolah', 'anggota_kelas', 'data_nilai_mapel_wajib', 'data_nilai_mapel_pilihan', 'data_nilai_mapel_muatan_lokal', 'data_anggota_ekstrakulikuler', 'data_prestasi_siswa', 'kehadiran_siswa', 'catatan_wali_kelas'))->setPaper($request->paper_size, $request->orientation);
                return $raport->stream('RAPORT ' . $anggota_kelas->siswa->nama_lengkap . ' (' . $anggota_kelas->kelas->nama_kelas . ').pdf');
            }
        }
    }
}
