<?php

namespace App\Http\Controllers\WaliKelas;

use App\AnggotaKelas;
use App\CatatanWaliKelas;
use App\Guru;
use App\Http\Controllers\Controller;
use App\Kelas;
use App\Tapel;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class CatatanWaliKelasController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $title = 'Input Catatan Wali Kelas';
        $tapel = Tapel::findorfail(session()->get('tapel_id'));
        $guru = Guru::where('user_id', Auth::user()->id)->first();
        $id_kelas_diampu = Kelas::where('tapel_id', $tapel->id)->where('guru_id', $guru->id)->get('id');
        $data_anggota_kelas = AnggotaKelas::whereIn('kelas_id', $id_kelas_diampu)->get();
        foreach ($data_anggota_kelas as $anggota) {
            $cek_data = CatatanWaliKelas::where('anggota_kelas_id', $anggota->id)->first();
            if (is_null($cek_data)) {
                $anggota->catatan_wali_kelas = null;
            } else {
                $anggota->catatan_wali_kelas = $cek_data->catatan;
            }
        }
        return view('walikelas.catatan.index', compact('title', 'data_anggota_kelas'));
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
                    'catatan'  => $request->catatan_wali_kelas[$cound_siswa],
                    'created_at'  => Carbon::now(),
                    'updated_at'  => Carbon::now(),
                );
                $cek_data = CatatanWaliKelas::where('anggota_kelas_id', $request->anggota_kelas_id[$cound_siswa])->first();
                if (is_null($cek_data)) {
                    CatatanWaliKelas::insert($data);
                } else {
                    $cek_data->update($data);
                }
            }
            return redirect('guru/catatan')->with('toast_success', 'Catatan wali kelas berhasil disimpan');
        }
    }

}
