<?php

namespace App\Http\Controllers\Guru\K13;

use App\Guru;
use App\Http\Controllers\Controller;
use App\K13DeskripsiNilaiSiswa;
use App\K13KdMapel;
use App\K13NilaiAkhirRaport;
use App\K13NilaiKeterampilan;
use App\K13NilaiPengetahuan;
use App\K13RencanaNilaiKeterampilan;
use App\K13RencanaNilaiPengetahuan;
use App\Kelas;
use App\Pembelajaran;
use App\Tapel;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class ProsesDeskripsiSiswaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $title = 'Input Deskripsi Nilai Siswa';
        $tapel = Tapel::findorfail(session()->get('tapel_id'));

        $guru = Guru::where('user_id', Auth::user()->id)->first();
        $id_kelas = Kelas::where('tapel_id', $tapel->id)->get('id');
        $data_pembelajaran = Pembelajaran::where('guru_id', $guru->id)->whereIn('kelas_id', $id_kelas)->where('status', 1)->orderBy('mapel_id', 'ASC')->orderBy('kelas_id', 'ASC')->get();

        return view('guru.k13.prosesdeskripsi.index', compact('title', 'data_pembelajaran'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'pembelajaran_id' => 'required',
        ]);
        if ($validator->fails()) {
            return back()->with('toast_error', $validator->messages()->all()[0])->withInput();
        } else {
            // Data Master
            $title = 'Input Deskripsi Nilai Siswa';
            $tapel = Tapel::findorfail(session()->get('tapel_id'));

            $guru = Guru::where('user_id', Auth::user()->id)->first();
            $id_kelas = Kelas::where('tapel_id', $tapel->id)->get('id');
            $data_pembelajaran = Pembelajaran::where('guru_id', $guru->id)->whereIn('kelas_id', $id_kelas)->where('status', 1)->orderBy('mapel_id', 'ASC')->orderBy('kelas_id', 'ASC')->get();

            $pembelajaran = Pembelajaran::findorfail($request->pembelajaran_id);
            $data_nilai_siswa = K13NilaiAkhirRaport::where('pembelajaran_id', $pembelajaran->id)->get();
            foreach ($data_nilai_siswa as $nilai_siswa) {
                $id_rencana_nilai_pengetahuan = K13RencanaNilaiPengetahuan::where('pembelajaran_id', $pembelajaran->id)->get('id');
                $nilai_pengetahuan_terbaik = K13NilaiPengetahuan::whereIn('k13_rencana_nilai_pengetahuan_id', $id_rencana_nilai_pengetahuan)->where('anggota_kelas_id', $nilai_siswa->anggota_kelas_id)->orderBy('nilai', 'DESC')->first();
                $id_kd_pengetahuan_terbaik = K13RencanaNilaiPengetahuan::findorfail($nilai_pengetahuan_terbaik->k13_rencana_nilai_pengetahuan_id);
                $kd_pengetahuan_terbaik = K13KdMapel::findorfail($id_kd_pengetahuan_terbaik->k13_kd_mapel_id);

                $nilai_siswa->deskripsi_pengetahuan = $kd_pengetahuan_terbaik->ringkasan_kompetensi;

                $id_rencana_nilai_keterampilan = K13RencanaNilaiKeterampilan::where('pembelajaran_id', $pembelajaran->id)->get('id');
                $nilai_keterampilan_terbaik = K13NilaiKeterampilan::whereIn('k13_rencana_nilai_keterampilan_id', $id_rencana_nilai_keterampilan)->where('anggota_kelas_id', $nilai_siswa->anggota_kelas_id)->orderBy('nilai', 'DESC')->first();
                $id_kd_keterampilan_terbaik = K13RencanaNilaiKeterampilan::findorfail($nilai_keterampilan_terbaik->k13_rencana_nilai_keterampilan_id);
                $kd_keterampilan_terbaik = K13KdMapel::findorfail($id_kd_keterampilan_terbaik->k13_kd_mapel_id);

                $nilai_siswa->deskripsi_keterampilan = $kd_keterampilan_terbaik->ringkasan_kompetensi;
            }
            return view('guru.k13.prosesdeskripsi.create', compact('title', 'data_pembelajaran', 'pembelajaran', 'data_nilai_siswa'));
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
        if (is_null($request->nilai_akhir_raport_id)) {
            return back()->with('toast_error', 'Tidak ditemukan data deskripsi nilai siswa');
        } else {
            for ($cound_siswa = 0; $cound_siswa < count($request->nilai_akhir_raport_id); $cound_siswa++) {
                $data_deskripsi = array(
                    'pembelajaran_id' => $request->pembelajaran_id,
                    'k13_nilai_akhir_raport_id'  => $request->nilai_akhir_raport_id[$cound_siswa],
                    'deskripsi_pengetahuan'  => $request->deskripsi_pengetahuan[$cound_siswa],
                    'deskripsi_keterampilan'  => $request->deskripsi_keterampilan[$cound_siswa],
                    'created_at'  => Carbon::now(),
                    'updated_at'  => Carbon::now(),
                );

                $cek_data = K13DeskripsiNilaiSiswa::where('pembelajaran_id', $request->pembelajaran_id)->where('k13_nilai_akhir_raport_id', $request->nilai_akhir_raport_id[$cound_siswa])->first();
                if (is_null($cek_data)) {
                    K13DeskripsiNilaiSiswa::insert($data_deskripsi);
                } else {
                    $cek_data->update($data_deskripsi);
                }
            }
            return redirect('guru/prosesdeskripsi')->with('toast_success', 'Deskripsi nilai siswa berhasil disimpan');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
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
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
