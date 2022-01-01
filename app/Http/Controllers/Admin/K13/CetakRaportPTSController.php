<?php

namespace App\Http\Controllers\Admin\K13;

use App\AnggotaKelas;
use App\Http\Controllers\Controller;
use App\K13KkmMapel;
use App\K13MappingMapel;
use App\K13NilaiKeterampilan;
use App\K13NilaiPengetahuan;
use App\K13NilaiPtsPas;
use App\K13RencanaNilaiKeterampilan;
use App\K13RencanaNilaiPengetahuan;
use App\Kelas;
use App\Mapel;
use App\Pembelajaran;
use App\Sekolah;
use Illuminate\Http\Request;
use PDF;

class CetakRaportPTSController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $title = 'Raport Tengah Semester';
        $data_kelas = Kelas::where('tapel_id', session()->get('tapel_id'))->get();
        return view('admin.k13.raportpts.setpaper', compact('title', 'data_kelas'));
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
        $kelas = Kelas::findorfail($request->kelas_id);
        $data_kelas = Kelas::where('tapel_id', session()->get('tapel_id'))->get();
        $data_anggota_kelas = AnggotaKelas::where('kelas_id', $kelas->id)->get();

        $paper_size = $request->paper_size;
        $orientation = $request->orientation;

        return view('admin.k13.raportpts.index', compact('title', 'kelas', 'data_kelas', 'data_anggota_kelas', 'paper_size', 'orientation'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Request $request, $id)
    {
        $title = 'Raport PTS';
        $sekolah = Sekolah::first();
        $anggota_kelas = AnggotaKelas::findorfail($id);

        $data_id_mapel_semester_ini = Mapel::where('tapel_id', session()->get('tapel_id'))->get('id');
        $data_id_mapel_kelompok_a = K13MappingMapel::whereIn('mapel_id', $data_id_mapel_semester_ini)->where('kelompok', 'A')->get('mapel_id');
        $data_id_mapel_kelompok_b = K13MappingMapel::whereIn('mapel_id', $data_id_mapel_semester_ini)->where('kelompok', 'B')->get('mapel_id');


        // Data Nilai Kelompok A
        $data_pembelajaran_a = Pembelajaran::where('kelas_id', $anggota_kelas->kelas->id)->whereIn('mapel_id', $data_id_mapel_kelompok_a)->get();
        foreach ($data_pembelajaran_a as $pembelajaran_a) {
            $kkm = K13KkmMapel::where('mapel_id', $pembelajaran_a->mapel_id)->where('kelas_id', $anggota_kelas->kelas->id)->first();
            if (is_null($kkm)) {
                return back()->with('toast_warning', 'KKM mata pelajaran belum ditentukan');
            }

            // Interval KKM
            $range = (100 - $kkm->kkm) / 3;
            $pembelajaran_a->kkm = round($kkm->kkm, 0);
            $pembelajaran_a->predikat_c = round($kkm->kkm, 0);
            $pembelajaran_a->predikat_b = round($kkm->kkm + $range, 0);
            $pembelajaran_a->predikat_a = round($kkm->kkm + ($range * 2), 0);

            $data_id_rencana_pengetahuan = K13RencanaNilaiPengetahuan::where('pembelajaran_id', $pembelajaran_a->id)->get('id');
            $rt_nilai_pengetahuan = K13NilaiPengetahuan::where('anggota_kelas_id', $anggota_kelas->id)->whereIn('k13_rencana_nilai_pengetahuan_id', $data_id_rencana_pengetahuan)->avg('nilai');

            $pembelajaran_a->rt_nilai_pengetahuan = round($rt_nilai_pengetahuan, 0);

            $data_id_rencana_keterampilan = K13RencanaNilaiKeterampilan::where('pembelajaran_id', $pembelajaran_a->id)->get('id');
            $rt_nilai_keterampilan = K13NilaiKeterampilan::where('anggota_kelas_id', $anggota_kelas->id)->whereIn('k13_rencana_nilai_keterampilan_id', $data_id_rencana_keterampilan)->avg('nilai');

            $pembelajaran_a->rt_nilai_keterampilan = round($rt_nilai_keterampilan, 0);

            $nilai_pts = K13NilaiPtsPas::where('pembelajaran_id', $pembelajaran_a->id)->where('anggota_kelas_id', $anggota_kelas->id)->first();
            if (is_null($nilai_pts)) {
                $pembelajaran_a->nilai_pts = 0;
            } else {
                $pembelajaran_a->nilai_pts = $nilai_pts->nilai_pts;
            }
        }

        // Data Nilai Kelompok B
        $data_pembelajaran_b = Pembelajaran::where('kelas_id', $anggota_kelas->kelas->id)->whereIn('mapel_id', $data_id_mapel_kelompok_b)->get();
        foreach ($data_pembelajaran_b as $pembelajaran_b) {
            $kkm = K13KkmMapel::where('mapel_id', $pembelajaran_b->mapel_id)->where('kelas_id', $anggota_kelas->kelas->id)->first();
            if (is_null($kkm)) {
                return back()->with('toast_warning', 'KKM mata pelajaran belum ditentukan');
            }

            // Interval KKM
            $range = (100 - $kkm->kkm) / 3;
            $pembelajaran_b->kkm = round($kkm->kkm, 0);
            $pembelajaran_b->predikat_c = round($kkm->kkm, 0);
            $pembelajaran_b->predikat_b = round($kkm->kkm + $range, 0);
            $pembelajaran_b->predikat_a = round($kkm->kkm + ($range * 2), 0);

            $data_id_rencana_pengetahuan = K13RencanaNilaiPengetahuan::where('pembelajaran_id', $pembelajaran_b->id)->get('id');
            $rt_nilai_pengetahuan = K13NilaiPengetahuan::where('anggota_kelas_id', $anggota_kelas->id)->whereIn('k13_rencana_nilai_pengetahuan_id', $data_id_rencana_pengetahuan)->avg('nilai');

            $pembelajaran_b->rt_nilai_pengetahuan = round($rt_nilai_pengetahuan, 0);

            $data_id_rencana_keterampilan = K13RencanaNilaiKeterampilan::where('pembelajaran_id', $pembelajaran_b->id)->get('id');
            $rt_nilai_keterampilan = K13NilaiKeterampilan::where('anggota_kelas_id', $anggota_kelas->id)->whereIn('k13_rencana_nilai_keterampilan_id', $data_id_rencana_keterampilan)->avg('nilai');

            $pembelajaran_b->rt_nilai_keterampilan = round($rt_nilai_keterampilan, 0);

            $nilai_pts = K13NilaiPtsPas::where('pembelajaran_id', $pembelajaran_b->id)->where('anggota_kelas_id', $anggota_kelas->id)->first();
            if (is_null($nilai_pts)) {
                $pembelajaran_b->nilai_pts = 0;
            } else {
                $pembelajaran_b->nilai_pts = $nilai_pts->nilai_pts;
            }
        }

        $raport = PDF::loadview('walikelas.k13.raportpts.raport', compact('title', 'sekolah', 'anggota_kelas', 'data_pembelajaran_a', 'data_pembelajaran_b'))->setPaper($request->paper_size, $request->orientation);
        return $raport->stream('RAPORT PTS ' . $anggota_kelas->siswa->nama_lengkap . ' (' . $anggota_kelas->kelas->nama_kelas . ').pdf');
    }
}
