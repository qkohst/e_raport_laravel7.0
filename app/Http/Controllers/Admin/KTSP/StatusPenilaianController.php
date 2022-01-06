<?php

namespace App\Http\Controllers\Admin\KTSP;

use App\Http\Controllers\Controller;
use App\Kelas;
use App\KtspBobotPenilaian;
use App\KtspDeskripsiNilaiSiswa;
use App\KtspNilaiAkhirRaport;
use App\KtspNilaiTugas;
use App\KtspNilaiUh;
use App\KtspNilaiUtsUas;
use App\Pembelajaran;
use App\Tapel;
use Illuminate\Http\Request;

class StatusPenilaianController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $title = 'Status Penilaian';
        $data_kelas = Kelas::where('tapel_id', session()->get('tapel_id'))->get();
        return view('admin.ktsp.statuspenilaian.pilihkelas', compact('title', 'data_kelas'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $title = 'Hasil Pengelolaan Nilai';
        $tapel = Tapel::findorfail(session()->get('tapel_id'));
        $data_kelas = Kelas::where('tapel_id', $tapel->id)->get();

        $kelas = Kelas::findorfail($request->kelas_id);

        $data_pembelajaran_kelas = Pembelajaran::where('kelas_id', $kelas->id)->where('status', 1)->get();
        foreach ($data_pembelajaran_kelas as $pembelajaran) {
            $bobot = KtspBobotPenilaian::where('pembelajaran_id', $pembelajaran->id)->first();
            if (is_null($bobot)) {
                $pembelajaran->bobot = 0;
            } else {
                $pembelajaran->bobot = 1;
            }

            $nilai_tugas = KtspNilaiTugas::where('pembelajaran_id', $pembelajaran->id)->first();
            if (is_null($nilai_tugas)) {
                $pembelajaran->nilai_tugas = 0;
            } else {
                $pembelajaran->nilai_tugas = 1;
            }

            $nilai_uh = KtspNilaiUh::where('pembelajaran_id', $pembelajaran->id)->first();
            if (is_null($nilai_uh)) {
                $pembelajaran->nilai_uh = 0;
            } else {
                $pembelajaran->nilai_uh = 1;
            }

            $uts_uas = KtspNilaiUtsUas::where('pembelajaran_id', $pembelajaran->id)->first();
            if (is_null($uts_uas)) {
                $pembelajaran->uts_uas = 0;
            } else {
                $pembelajaran->uts_uas = 1;
            }

            $nilai_akhir = KtspNilaiAkhirRaport::where('pembelajaran_id', $pembelajaran->id)->first();
            if (is_null($nilai_akhir)) {
                $pembelajaran->nilai_akhir = 0;
            } else {
                $pembelajaran->nilai_akhir = 1;
            }

            $deskripsi = KtspDeskripsiNilaiSiswa::where('pembelajaran_id', $pembelajaran->id)->first();
            if (is_null($deskripsi)) {
                $pembelajaran->deskripsi = 0;
            } else {
                $pembelajaran->deskripsi = 1;
            }
        }
        return view('admin.ktsp.statuspenilaian.index', compact('title', 'kelas', 'data_kelas', 'data_pembelajaran_kelas'));
    }
}
