<?php

namespace App\Http\Controllers\WaliKelas;

use App\AnggotaKelas;
use App\Guru;
use App\Http\Controllers\Controller;
use App\Kelas;
use App\KenaikanKelas;
use App\Tapel;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class KenaikanKelasController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $title = 'Kenaikan Kelas';
        $tapel = Tapel::findorfail(session()->get('tapel_id'));

        if ($tapel->semester == 2) {
            $guru = Guru::where('user_id', Auth::user()->id)->first();
            $id_kelas_diampu = Kelas::where('tapel_id', $tapel->id)->where('guru_id', $guru->id)->get('id');
            $data_anggota_kelas = AnggotaKelas::whereIn('kelas_id', $id_kelas_diampu)->get();
            foreach ($data_anggota_kelas as $anggota) {
                $kenaikan_kelas = KenaikanKelas::where('anggota_kelas_id', $anggota->id)->first();
                if (is_null($kenaikan_kelas)) {
                    $anggota->keputusan = null;
                    $anggota->kelas_tujuan = null;
                } else {
                    $anggota->keputusan = $kenaikan_kelas->keputusan;
                    $anggota->kelas_tujuan = $kenaikan_kelas->kelas_tujuan;
                }
            }

            $tingkatan_akhir = Kelas::where('tapel_id', $tapel->id)->max('tingkatan_kelas');

            return view('walikelas.kenaikan.index', compact('title', 'data_anggota_kelas', 'tingkatan_akhir'));
        } else {
            return back()->with('toast_warning', 'Menu kenaikan kelas hanya aktif pada semester genap');
        }
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
                if (is_null($request->kelas_tujuan)) {
                    $data_kenaikan = array(
                        'anggota_kelas_id'  => $request->anggota_kelas_id[$cound_siswa],
                        'keputusan'  => $request->keputusan[$cound_siswa],
                        'created_at'  => Carbon::now(),
                        'updated_at'  => Carbon::now(),
                    );
                    $cek_data_kenaikan = KenaikanKelas::where('anggota_kelas_id', $request->anggota_kelas_id[$cound_siswa])->first();
                    if (is_null($cek_data_kenaikan)) {
                        KenaikanKelas::insert($data_kenaikan);
                    } else {
                        $cek_data_kenaikan->update($data_kenaikan);
                    }
                } else {
                    $data_kenaikan = array(
                        'anggota_kelas_id'  => $request->anggota_kelas_id[$cound_siswa],
                        'keputusan'  => $request->keputusan[$cound_siswa],
                        'kelas_tujuan'  => strtoupper($request->kelas_tujuan[$cound_siswa]),
                        'created_at'  => Carbon::now(),
                        'updated_at'  => Carbon::now(),
                    );
                    $cek_data_kenaikan = KenaikanKelas::where('anggota_kelas_id', $request->anggota_kelas_id[$cound_siswa])->first();
                    if (is_null($cek_data_kenaikan)) {
                        KenaikanKelas::insert($data_kenaikan);
                    } else {
                        $cek_data_kenaikan->update($data_kenaikan);
                    }
                }
            }
            return redirect('guru/kenaikan')->with('toast_success', 'Kenaikan kelas berhasil disimpan');
        }
    }
}
