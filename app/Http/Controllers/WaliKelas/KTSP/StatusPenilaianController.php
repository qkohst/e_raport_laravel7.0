<?php

namespace App\Http\Controllers\WaliKelas\KTSP;

use App\Http\Controllers\Controller;
use App\Models\Guru;
use App\Models\Kelas;
use App\Models\KtspBobotPenilaian;
use App\Models\KtspDeskripsiNilaiSiswa;
use App\Models\KtspNilaiAkhirRaport;
use App\Models\KtspNilaiTugas;
use App\Models\KtspNilaiUh;
use App\Models\KtspNilaiUtsUas;
use App\Models\Pembelajaran;
use App\Models\Tapel;
use Illuminate\Support\Facades\Auth;

class StatusPenilaianController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $title = 'Status Penilaian Oleh Guru';
        $tapel = Tapel::findorfail(session()->get('tapel_id'));
        $guru = Guru::where('user_id', Auth::user()->id)->first();
        $id_kelas_diampu = Kelas::where('tapel_id', $tapel->id)->where('guru_id', $guru->id)->get('id');
        $data_pembelajaran_kelas = Pembelajaran::whereIn('kelas_id', $id_kelas_diampu)->where('status', 1)->get();
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
        return view('walikelas.ktsp.statuspenilaian.index', compact('title', 'data_pembelajaran_kelas'));
    }
}
