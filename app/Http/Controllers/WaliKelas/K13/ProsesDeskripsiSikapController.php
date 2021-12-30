<?php

namespace App\Http\Controllers\WaliKelas\K13;

use App\AnggotaKelas;
use App\Guru;
use App\Http\Controllers\Controller;
use App\K13DeskripsiSikapSiswa;
use App\K13NilaiAkhirRaport;
use App\K13NilaiSosial;
use App\K13NilaiSpiritual;
use App\K13RencanaNilaiSosial;
use App\K13RencanaNilaiSpiritual;
use App\Kelas;
use App\Pembelajaran;
use App\Tapel;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ProsesDeskripsiSikapController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $title = 'Proses Deskripsi Sikap';
        $tapel = Tapel::findorfail(session()->get('tapel_id'));
        $guru = Guru::where('user_id', Auth::user()->id)->first();
        $id_kelas_diampu = Kelas::where('tapel_id', $tapel->id)->where('guru_id', $guru->id)->get('id');

        $data_id_pembelajaran = Pembelajaran::whereIn('kelas_id', $id_kelas_diampu)->where('status', 1)->get('id');
        $data_id_rencana_spiritual = K13RencanaNilaiSpiritual::whereIn('pembelajaran_id', $data_id_pembelajaran)->get('id');
        $data_id_rencana_sosial = K13RencanaNilaiSosial::whereIn('pembelajaran_id', $data_id_pembelajaran)->get('id');

        $data_anggota_kelas = AnggotaKelas::whereIn('kelas_id', $id_kelas_diampu)->get();
        foreach ($data_anggota_kelas as $anggota_kelas) {
            $nilai_spiritual = K13NilaiAkhirRaport::where('anggota_kelas_id', $anggota_kelas->id)->avg('nilai_spiritual');
            if ($nilai_spiritual <= 4 && $nilai_spiritual > 3) {
                $anggota_kelas->nilai_spiritual = "Sangat Baik";
                $rt_spiritual = 4;
            } elseif ($nilai_spiritual <= 3 && $nilai_spiritual > 2) {
                $anggota_kelas->nilai_spiritual = "Baik";
                $rt_spiritual = 3;
            } elseif ($nilai_spiritual <= 2 && $nilai_spiritual > 1) {
                $anggota_kelas->nilai_spiritual = "Cukup";
                $rt_spiritual = 2;
            } else {
                $anggota_kelas->nilai_spiritual = "Kurang";
                $rt_spiritual = 1;
            }

            $nilai_sosial = K13NilaiAkhirRaport::where('anggota_kelas_id', $anggota_kelas->id)->avg('nilai_sosial');
            if ($nilai_sosial <= 4 && $nilai_sosial > 3) {
                $anggota_kelas->nilai_sosial = "Sangat Baik";
                $rt_sosial = 4;
            } elseif ($nilai_sosial <= 3 && $nilai_sosial > 2) {
                $anggota_kelas->nilai_sosial = "Baik";
                $rt_sosial = 3;
            } elseif ($nilai_sosial <= 2 && $nilai_sosial > 1) {
                $anggota_kelas->nilai_sosial = "Cukup";
                $rt_sosial = 2;
            } else {
                $anggota_kelas->nilai_sosial = "Kurang";
                $rt_sosial = 1;
            }

            // Deskripsi Spiritual 
            $data_id_rencana_nilai_spiritual = K13NilaiSpiritual::whereIn('k13_rencana_nilai_spiritual_id', $data_id_rencana_spiritual)
                ->where('anggota_kelas_id', $anggota_kelas->id)->where('nilai', $rt_spiritual)->get('k13_rencana_nilai_spiritual_id');
            $data_butir_spiritual = K13RencanaNilaiSpiritual::whereIn('id', $data_id_rencana_nilai_spiritual)->groupBy('k13_butir_sikap_id')->get();
            $anggota_kelas->data_butir_spiritual = $data_butir_spiritual;
            $anggota_kelas->count_spiritual = count($data_butir_spiritual);

            // Deskripsi Sosial 
            $data_id_rencana_nilai_sosial = K13NilaiSosial::whereIn('k13_rencana_nilai_sosial_id', $data_id_rencana_sosial)
                ->where('anggota_kelas_id', $anggota_kelas->id)->where('nilai', $rt_sosial)->get('k13_rencana_nilai_sosial_id');
            $data_butir_sosial = K13RencanaNilaiSosial::whereIn('id', $data_id_rencana_nilai_sosial)->groupBy('k13_butir_sikap_id')->get();
            $anggota_kelas->data_butir_sosial = $data_butir_sosial;
            $anggota_kelas->count_sosial = count($data_butir_sosial);
        }
        return view('walikelas.k13.prosesdeskripsisikap.index', compact('title', 'data_anggota_kelas'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if (is_null($request->anggota_kelas_id)) {
            return back()->with('toast_error', 'Data siswa tidak ditemukan');
        } else {
            for ($cound_siswa = 0; $cound_siswa < count($request->anggota_kelas_id); $cound_siswa++) {
                $data = array(
                    'anggota_kelas_id'  => $request->anggota_kelas_id[$cound_siswa],
                    'nilai_spiritual'  => $request->nilai_spiritual[$cound_siswa],
                    'deskripsi_spiritual'  => $request->deskripsi_spiritual[$cound_siswa],
                    'nilai_sosial'  => $request->nilai_sosial[$cound_siswa],
                    'deskripsi_sosial'  => $request->deskripsi_sosial[$cound_siswa],
                    'created_at'  => Carbon::now(),
                    'updated_at'  => Carbon::now(),
                );
                $cek_data = K13DeskripsiSikapSiswa::where('anggota_kelas_id', $request->anggota_kelas_id[$cound_siswa])->first();
                if (is_null($cek_data)) {
                    K13DeskripsiSikapSiswa::insert($data);
                } else {
                    $cek_data->update($data);
                }
            }
            return back()->with('toast_success', 'Deskripsi sikap siswa berhasil disimpan');
        }
    }
}
