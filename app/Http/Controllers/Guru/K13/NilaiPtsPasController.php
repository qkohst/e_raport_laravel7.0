<?php

namespace App\Http\Controllers\Guru\K13;

use App\AnggotaKelas;
use App\Guru;
use App\Http\Controllers\Controller;
use App\K13NilaiPtsPas;
use App\Kelas;
use App\Pembelajaran;
use App\Tapel;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class NilaiPtsPasController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $title = 'Nilai PTS & PAS';
        $tapel = Tapel::findorfail(session()->get('tapel_id'));

        $guru = Guru::where('user_id', Auth::user()->id)->first();
        $id_kelas = Kelas::where('tapel_id', $tapel->id)->get('id');

        $data_penilaian = Pembelajaran::where('guru_id', $guru->id)->whereIn('kelas_id', $id_kelas)->where('status', 1)->orderBy('mapel_id', 'ASC')->orderBy('kelas_id', 'ASC')->get();

        foreach ($data_penilaian as $penilaian) {
            $data_anggota_kelas = AnggotaKelas::where('kelas_id', $penilaian->kelas_id)->get();
            $data_nilai_pts_pas = K13NilaiPtsPas::where('pembelajaran_id', $penilaian->id)->get();

            $penilaian->jumlah_anggota_kelas = count($data_anggota_kelas);
            $penilaian->jumlah_telah_dinilai = count($data_nilai_pts_pas);
        }

        return view('guru.k13.nilaiptspas.index', compact('title', 'data_penilaian'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        $pembelajaran = Pembelajaran::findorfail($request->pembelajaran_id);
        $data_anggota_kelas = AnggotaKelas::where('kelas_id', $pembelajaran->kelas_id)->get();

        $data_nilai_pts_pas = K13NilaiPtsPas::where('pembelajaran_id', $pembelajaran->id)->get();

        if (count($data_nilai_pts_pas) == 0) {
            $title = 'Input Nilai PTS & PAS';
            return view('guru.k13.nilaiptspas.create', compact('title', 'pembelajaran', 'data_anggota_kelas'));
        } else {
            $title = 'Edit Nilai PTS & PAS';
            return view('guru.k13.nilaiptspas.edit', compact('title', 'pembelajaran', 'data_nilai_pts_pas'));
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
        for ($cound_siswa = 0; $cound_siswa < count($request->anggota_kelas_id); $cound_siswa++) {

            if ($request->nilai_pts[$cound_siswa] >= 0 && $request->nilai_pts[$cound_siswa] <= 100 || $request->nilai_pas[$cound_siswa] >= 0 && $request->nilai_pas[$cound_siswa] <= 100) {
                $data_nilai = array(
                    'pembelajaran_id'  => $request->pembelajaran_id,
                    'anggota_kelas_id'  => $request->anggota_kelas_id[$cound_siswa],
                    'nilai_pts'  => ltrim($request->nilai_pts[$cound_siswa]),
                    'nilai_pas'  => ltrim($request->nilai_pas[$cound_siswa]),
                    'created_at'  => Carbon::now(),
                    'updated_at'  => Carbon::now(),
                );
                $data_nilai_siswa[] = $data_nilai;
            } else {
                return back()->with('toast_error', 'Nilai harus berisi antara 0 s/d 100');
            }
        }
        $store_data_nilai = $data_nilai_siswa;
        K13NilaiPtsPas::insert($store_data_nilai);
        return redirect('guru/nilaiptspas')->with('toast_success', 'Data nilai PTS & PAS berhasil disimpan.');
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        for ($cound_siswa = 0; $cound_siswa < count($request->anggota_kelas_id); $cound_siswa++) {

            if ($request->nilai_pts[$cound_siswa] >= 0 && $request->nilai_pts[$cound_siswa] <= 100 || $request->nilai_pas[$cound_siswa] >= 0 && $request->nilai_pas[$cound_siswa] <= 100) {
                $nilai = K13NilaiPtsPas::where('pembelajaran_id', $id)->where('anggota_kelas_id', $request->anggota_kelas_id[$cound_siswa])->first();

                $data_nilai = [
                    'nilai_pts'  => ltrim($request->nilai_pts[$cound_siswa]),
                    'nilai_pas'  => ltrim($request->nilai_pas[$cound_siswa]),
                    'updated_at'  => Carbon::now(),
                ];
                $nilai->update($data_nilai);
            } else {
                return back()->with('toast_error', 'Nilai harus berisi antara 0 s/d 100');
            }
        }
        return redirect('guru/nilaiptspas')->with('toast_success', 'Data nilai PTS & PAS berhasil edit.');
    }
}
