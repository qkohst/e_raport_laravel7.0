<?php

namespace App\Http\Controllers\Guru\K13;

use App\AnggotaKelas;
use App\Guru;
use App\Http\Controllers\Controller;
use App\K13NilaiKeterampilan;
use App\K13RencanaNilaiKeterampilan;
use App\Kelas;
use App\Pembelajaran;
use App\Tapel;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class NilaiKeterampilanController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $title = 'Nilai Keterampilan';
        $tapel = Tapel::findorfail(session()->get('tapel_id'));

        $guru = Guru::where('user_id', Auth::user()->id)->first();
        $id_kelas = Kelas::where('tapel_id', $tapel->id)->get('id');

        $data_penilaian = Pembelajaran::where('guru_id', $guru->id)->whereIn('kelas_id', $id_kelas)->where('status', 1)->orderBy('mapel_id', 'ASC')->orderBy('kelas_id', 'ASC')->get();

        foreach ($data_penilaian as $penilaian) {
            $data_rencana_nilai = K13RencanaNilaiKeterampilan::where('pembelajaran_id', $penilaian->id)->groupBy('kode_penilaian')->get();
            $id_rencana_nilai = K13RencanaNilaiKeterampilan::where('pembelajaran_id', $penilaian->id)->groupBy('kode_penilaian')->get('id');
            $telah_dinilai = K13NilaiKeterampilan::whereIn('k13_rencana_nilai_keterampilan_id', $id_rencana_nilai)->groupBy('k13_rencana_nilai_keterampilan_id')->get();

            $penilaian->jumlah_rencana_penilaian = count($data_rencana_nilai);
            $penilaian->jumlah_telah_dinilai = count($telah_dinilai);
            $penilaian->data_rencana_nilai = $data_rencana_nilai;
        }

        return view('guru.k13.nilaiketerampilan.index', compact('title', 'data_penilaian'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'kode_penilaian' => 'required',
        ]);
        if ($validator->fails()) {
            return back()->with('toast_error', $validator->messages()->all()[0])->withInput();
        } else {
            $kode_penilaian = $request->kode_penilaian;
            $pembelajaran = Pembelajaran::findorfail($request->pembelajaran_id);
            $data_anggota_kelas = AnggotaKelas::where('kelas_id', $pembelajaran->kelas_id)->get();

            $id_data_rencana_penilaian = K13RencanaNilaiKeterampilan::where('pembelajaran_id', $request->pembelajaran_id)->where('kode_penilaian', $kode_penilaian)->orderBy('k13_kd_mapel_id', 'DESC')->get('id');

            $data_kd_nilai = K13NilaiKeterampilan::whereIn('k13_rencana_nilai_keterampilan_id', $id_data_rencana_penilaian)->groupBy('k13_rencana_nilai_keterampilan_id')->get();
            $count_kd_nilai = count($data_kd_nilai);

            $data_kode_penilaian = K13RencanaNilaiKeterampilan::where('pembelajaran_id', $request->pembelajaran_id)->orderBy('kode_penilaian', 'ASC')->groupBy('kode_penilaian')->get();

            if ($count_kd_nilai == 0) {
                $data_rencana_penilaian = K13RencanaNilaiKeterampilan::where('pembelajaran_id', $request->pembelajaran_id)->where('kode_penilaian', $kode_penilaian)->get();
                $count_kd = count($data_rencana_penilaian);
                $title = 'Input Nilai Keterampilan';
                return view('guru.k13.nilaiketerampilan.create', compact('title', 'kode_penilaian', 'pembelajaran', 'data_anggota_kelas', 'data_rencana_penilaian', 'data_kode_penilaian', 'count_kd'));
            } else {
                foreach ($data_anggota_kelas as $anggota_kelas) {
                    $data_nilai = K13NilaiKeterampilan::whereIn('k13_rencana_nilai_keterampilan_id', $id_data_rencana_penilaian)->where('anggota_kelas_id', $anggota_kelas->id)->get();
                    $anggota_kelas->data_nilai = $data_nilai;
                }
                $title = 'Edit Nilai Keterampilan';
                return view('guru.k13.nilaiketerampilan.edit', compact('title', 'kode_penilaian', 'pembelajaran', 'data_anggota_kelas', 'data_kode_penilaian', 'count_kd_nilai', 'data_kd_nilai'));
            }
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
            for ($count_penilaian = 0; $count_penilaian < count($request->k13_rencana_nilai_keterampilan_id); $count_penilaian++) {

                if ($request->nilai[$count_penilaian][$cound_siswa] >= 0 && $request->nilai[$count_penilaian][$cound_siswa] <= 100) {
                    $data_nilai = array(
                        'anggota_kelas_id'  => $request->anggota_kelas_id[$cound_siswa],
                        'k13_rencana_nilai_keterampilan_id' => $request->k13_rencana_nilai_keterampilan_id[$count_penilaian],
                        'nilai'  => ltrim($request->nilai[$count_penilaian][$cound_siswa]),
                        'created_at'  => Carbon::now(),
                        'updated_at'  => Carbon::now(),
                    );
                    $data_penilaian_siswa[] = $data_nilai;
                } else {
                    return back()->with('toast_error', 'Nilai harus berisi antara 0 s/d 100');
                }
            }
            $store_data_penilaian = $data_penilaian_siswa;
        }
        K13NilaiKeterampilan::insert($store_data_penilaian);
        return redirect('guru/nilaiketerampilan')->with('toast_success', 'Data nilai keterampilan berhasil disimpan.');
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
            for ($count_penilaian = 0; $count_penilaian < count($request->k13_rencana_nilai_keterampilan_id); $count_penilaian++) {
                if ($request->nilai[$count_penilaian][$cound_siswa] >= 0 && $request->nilai[$count_penilaian][$cound_siswa] <= 100) {
                    $nilai = K13NilaiKeterampilan::where('anggota_kelas_id', $request->anggota_kelas_id[$cound_siswa])->where('k13_rencana_nilai_keterampilan_id', $request->k13_rencana_nilai_keterampilan_id[$count_penilaian])->first();
                    $data_nilai = [
                        'nilai'  => ltrim($request->nilai[$count_penilaian][$cound_siswa]),
                        'updated_at'  => Carbon::now(),
                    ];
                    $nilai->update($data_nilai);
                } else {
                    return back()->with('toast_error', 'Nilai harus berisi antara 0 s/d 100');
                }
            }
        }
        return redirect('guru/nilaiketerampilan')->with('toast_success', 'Data nilai keterampilan berhasil edit.');
    }
}
