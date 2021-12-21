<?php

namespace App\Http\Controllers\WaliKelas;

use App\AnggotaKelas;
use App\Guru;
use App\Http\Controllers\Controller;
use App\KehadiranSiswa;
use App\Kelas;
use App\Tapel;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class KehadiranSiswaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $title = 'Input Kehadiran Siswa';
        $tapel = Tapel::findorfail(session()->get('tapel_id'));
        $guru = Guru::where('user_id', Auth::user()->id)->first();
        $id_kelas_diampu = Kelas::where('tapel_id', $tapel->id)->where('guru_id', $guru->id)->get('id');
        $data_anggota_kelas = AnggotaKelas::whereIn('kelas_id', $id_kelas_diampu)->get();
        foreach ($data_anggota_kelas as $anggota) {
            $kehadiran = KehadiranSiswa::where('anggota_kelas_id', $anggota->id)->first();
            if (is_null($kehadiran)) {
                $anggota->sakit = 0;
                $anggota->izin = 0;
                $anggota->tanpa_keterangan = 0;
            } else {
                $anggota->sakit = $kehadiran->sakit;
                $anggota->izin = $kehadiran->izin;
                $anggota->tanpa_keterangan = $kehadiran->tanpa_keterangan;
            }
        }

        return view('walikelas.kehadiran.index', compact('title', 'data_anggota_kelas'));
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
                    'sakit'  => $request->sakit[$cound_siswa],
                    'izin'  => $request->izin[$cound_siswa],
                    'tanpa_keterangan'  => $request->tanpa_keterangan[$cound_siswa],
                    'created_at'  => Carbon::now(),
                    'updated_at'  => Carbon::now(),
                );
                $cek_data = KehadiranSiswa::where('anggota_kelas_id', $request->anggota_kelas_id[$cound_siswa])->first();
                if (is_null($cek_data)) {
                    KehadiranSiswa::insert($data);
                } else {
                    $cek_data->update($data);
                }
            }
            return redirect('guru/kehadiran')->with('toast_success', 'Kehadiran siswa berhasil disimpan');
        }
    }
}
