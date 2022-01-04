<?php

namespace App\Http\Controllers\WaliKelas\KTSP;

use App\AnggotaKelas;
use App\Guru;
use App\Http\Controllers\Controller;
use App\Kelas;
use App\KtspKkmMapel;
use App\KtspMappingMapel;
use App\KtspNilaiTugas;
use App\KtspNilaiUh;
use App\KtspNilaiUtsUas;
use App\Mapel;
use App\Pembelajaran;
use App\Sekolah;
use App\Tapel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use PDF;

class CetakRaportUTSController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $title = 'Raport Tengah Semester';
        return view('walikelas.ktsp.raportuts.setpaper', compact('title'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $title = 'Raport Tengah Semester';
        $tapel = Tapel::findorfail(session()->get('tapel_id'));
        $guru = Guru::where('user_id', Auth::user()->id)->first();
        $id_kelas_diampu = Kelas::where('tapel_id', $tapel->id)->where('guru_id', $guru->id)->get('id');
        $data_anggota_kelas = AnggotaKelas::whereIn('kelas_id', $id_kelas_diampu)->get();

        $paper_size = $request->paper_size;
        $orientation = $request->orientation;

        return view('walikelas.ktsp.raportuts.index', compact('title', 'data_anggota_kelas', 'paper_size', 'orientation'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Request $request, $id)
    {
        $title = 'Raport UTS';
        $sekolah = Sekolah::first();
        $anggota_kelas = AnggotaKelas::findorfail($id);

        $data_id_mapel_semester_ini = Mapel::where('tapel_id', session()->get('tapel_id'))->get('id');
        $data_id_mapel_wajib = KtspMappingMapel::whereIn('mapel_id', $data_id_mapel_semester_ini)->where('kelompok', 1)->get('mapel_id');
        $data_id_mapel_pilihan = KtspMappingMapel::whereIn('mapel_id', $data_id_mapel_semester_ini)->where('kelompok', 2)->get('mapel_id');
        $data_id_mapel_muatan_lokal = KtspMappingMapel::whereIn('mapel_id', $data_id_mapel_semester_ini)->where('kelompok', 3)->get('mapel_id');

        // Data Nilai Mapel Wajib
        $data_pembelajaran_wajib = Pembelajaran::where('kelas_id', $anggota_kelas->kelas->id)->whereIn('mapel_id', $data_id_mapel_wajib)->get();
        foreach ($data_pembelajaran_wajib as $pembelajaran_wajib) {
            $kkm = KtspKkmMapel::where('mapel_id', $pembelajaran_wajib->mapel_id)->where('kelas_id', $anggota_kelas->kelas->id)->first();
            if (is_null($kkm)) {
                return back()->with('toast_warning', 'KKM mata pelajaran belum ditentukan');
            }
            $pembelajaran_wajib->kkm = round($kkm->kkm, 0);

            $nilai_tugas = KtspNilaiTugas::where('pembelajaran_id', $pembelajaran_wajib->id)->where('anggota_kelas_id', $anggota_kelas->id)->first();
            if (is_null($nilai_tugas)) {
                $pembelajaran_wajib->nilai_tugas = 0;
            } else {
                $pembelajaran_wajib->nilai_tugas = $nilai_tugas->nilai;
            }

            $nilai_uh = KtspNilaiUh::where('pembelajaran_id', $pembelajaran_wajib->id)->where('anggota_kelas_id', $anggota_kelas->id)->first();
            if (is_null($nilai_uh)) {
                $pembelajaran_wajib->nilai_uh = 0;
            } else {
                $pembelajaran_wajib->nilai_uh = $nilai_uh->nilai;
            }

            $nilai_uts = KtspNilaiUtsUas::where('pembelajaran_id', $pembelajaran_wajib->id)->where('anggota_kelas_id', $anggota_kelas->id)->first();
            if (is_null($nilai_uts)) {
                $pembelajaran_wajib->nilai_uts = 0;
            } else {
                $pembelajaran_wajib->nilai_uts = $nilai_uts->nilai_uts;
            }
        }

        // Data Nilai Mapel Pilihan
        $data_pembelajaran_pilihan = Pembelajaran::where('kelas_id', $anggota_kelas->kelas->id)->whereIn('mapel_id', $data_id_mapel_pilihan)->get();
        foreach ($data_pembelajaran_pilihan as $pembelajaran_pilihan) {
            $kkm = KtspKkmMapel::where('mapel_id', $pembelajaran_pilihan->mapel_id)->where('kelas_id', $anggota_kelas->kelas->id)->first();
            if (is_null($kkm)) {
                return back()->with('toast_warning', 'KKM mata pelajaran belum ditentukan');
            }
            $pembelajaran_pilihan->kkm = round($kkm->kkm, 0);

            $nilai_tugas = KtspNilaiTugas::where('pembelajaran_id', $pembelajaran_pilihan->id)->where('anggota_kelas_id', $anggota_kelas->id)->first();
            if (is_null($nilai_tugas)) {
                $pembelajaran_pilihan->nilai_tugas = 0;
            } else {
                $pembelajaran_pilihan->nilai_tugas = $nilai_tugas->nilai;
            }

            $nilai_uh = KtspNilaiUh::where('pembelajaran_id', $pembelajaran_pilihan->id)->where('anggota_kelas_id', $anggota_kelas->id)->first();
            if (is_null($nilai_uh)) {
                $pembelajaran_pilihan->nilai_uh = 0;
            } else {
                $pembelajaran_pilihan->nilai_uh = $nilai_uh->nilai;
            }

            $nilai_uts = KtspNilaiUtsUas::where('pembelajaran_id', $pembelajaran_pilihan->id)->where('anggota_kelas_id', $anggota_kelas->id)->first();
            if (is_null($nilai_uts)) {
                $pembelajaran_pilihan->nilai_uts = 0;
            } else {
                $pembelajaran_pilihan->nilai_uts = $nilai_uts->nilai_uts;
            }
        }

        // Data Nilai Mapel Pilihan
        $data_pembelajaran_muatan_lokal = Pembelajaran::where('kelas_id', $anggota_kelas->kelas->id)->whereIn('mapel_id', $data_id_mapel_muatan_lokal)->get();
        foreach ($data_pembelajaran_muatan_lokal as $pembelajaran_muatan_lokal) {
            $kkm = KtspKkmMapel::where('mapel_id', $pembelajaran_muatan_lokal->mapel_id)->where('kelas_id', $anggota_kelas->kelas->id)->first();
            if (is_null($kkm)) {
                return back()->with('toast_warning', 'KKM mata pelajaran belum ditentukan');
            }
            $pembelajaran_muatan_lokal->kkm = round($kkm->kkm, 0);

            $nilai_tugas = KtspNilaiTugas::where('pembelajaran_id', $pembelajaran_muatan_lokal->id)->where('anggota_kelas_id', $anggota_kelas->id)->first();
            if (is_null($nilai_tugas)) {
                $pembelajaran_muatan_lokal->nilai_tugas = 0;
            } else {
                $pembelajaran_muatan_lokal->nilai_tugas = $nilai_tugas->nilai;
            }

            $nilai_uh = KtspNilaiUh::where('pembelajaran_id', $pembelajaran_muatan_lokal->id)->where('anggota_kelas_id', $anggota_kelas->id)->first();
            if (is_null($nilai_uh)) {
                $pembelajaran_muatan_lokal->nilai_uh = 0;
            } else {
                $pembelajaran_muatan_lokal->nilai_uh = $nilai_uh->nilai;
            }

            $nilai_uts = KtspNilaiUtsUas::where('pembelajaran_id', $pembelajaran_muatan_lokal->id)->where('anggota_kelas_id', $anggota_kelas->id)->first();
            if (is_null($nilai_uts)) {
                $pembelajaran_muatan_lokal->nilai_uts = 0;
            } else {
                $pembelajaran_muatan_lokal->nilai_uts = $nilai_uts->nilai_uts;
            }
        }
        $raport = PDF::loadview('walikelas.ktsp.raportuts.raport', compact('title', 'sekolah', 'anggota_kelas', 'data_pembelajaran_wajib', 'data_pembelajaran_pilihan', 'data_pembelajaran_muatan_lokal'))->setPaper($request->paper_size, $request->orientation);
        return $raport->stream('RAPORT UTS ' . $anggota_kelas->siswa->nama_lengkap . ' (' . $anggota_kelas->kelas->nama_kelas . ').pdf');
    }
}
