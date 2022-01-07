<?php

namespace App\Http\Controllers\Guru\K13;

use App\AnggotaKelas;
use App\Exports\FormatImportSpiritualK13Export;
use App\Guru;
use App\Http\Controllers\Controller;
use App\Imports\NilaiSpiritualK13Import;
use App\K13NilaiSpiritual;
use App\K13RencanaNilaiSpiritual;
use App\Kelas;
use App\Pembelajaran;
use App\Tapel;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Excel;

class NilaiSpiritualController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $title = 'Nilai Spiritual';
        $tapel = Tapel::findorfail(session()->get('tapel_id'));

        $guru = Guru::where('user_id', Auth::user()->id)->first();
        $id_kelas = Kelas::where('tapel_id', $tapel->id)->get('id');

        $data_penilaian = Pembelajaran::where('guru_id', $guru->id)->whereIn('kelas_id', $id_kelas)->where('status', 1)->orderBy('mapel_id', 'ASC')->orderBy('kelas_id', 'ASC')->get();

        foreach ($data_penilaian as $penilaian) {
            $data_rencana_nilai = K13RencanaNilaiSpiritual::where('pembelajaran_id', $penilaian->id)->get();
            $id_rencana_nilai = K13RencanaNilaiSpiritual::where('pembelajaran_id', $penilaian->id)->get('id');
            $telah_dinilai = K13NilaiSpiritual::whereIn('k13_rencana_nilai_spiritual_id', $id_rencana_nilai)->groupBy('k13_rencana_nilai_spiritual_id')->get();

            $penilaian->jumlah_rencana_penilaian = count($data_rencana_nilai);
            $penilaian->jumlah_telah_dinilai = count($telah_dinilai);
            $penilaian->data_rencana_nilai = $data_rencana_nilai;
        }

        return view('guru.k13.nilaispiritual.index', compact('title', 'data_penilaian'));
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

        $id_data_rencana_penilaian = K13RencanaNilaiSpiritual::where('pembelajaran_id', $request->pembelajaran_id)->orderBy('k13_butir_sikap_id', 'ASC')->get('id');

        $data_kd_nilai = K13NilaiSpiritual::whereIn('k13_rencana_nilai_spiritual_id', $id_data_rencana_penilaian)->groupBy('k13_rencana_nilai_spiritual_id')->get();
        $count_kd_nilai = count($data_kd_nilai);

        if ($count_kd_nilai == 0) {
            $data_rencana_penilaian = K13RencanaNilaiSpiritual::where('pembelajaran_id', $request->pembelajaran_id)->orderBy('k13_butir_sikap_id', 'ASC')->get();
            $count_kd = count($data_rencana_penilaian);
            $title = 'Input Nilai Spiritual';
            return view('guru.k13.nilaispiritual.create', compact('title', 'pembelajaran', 'data_anggota_kelas', 'data_rencana_penilaian', 'count_kd'));
        } else {
            foreach ($data_anggota_kelas as $anggota_kelas) {
                $data_nilai = K13NilaiSpiritual::whereIn('k13_rencana_nilai_spiritual_id', $id_data_rencana_penilaian)->where('anggota_kelas_id', $anggota_kelas->id)->get();
                $anggota_kelas->data_nilai = $data_nilai;
            }
            $title = 'Edit Nilai Spiritual';
            return view('guru.k13.nilaispiritual.edit', compact('title', 'pembelajaran', 'data_anggota_kelas', 'count_kd_nilai', 'data_kd_nilai'));
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
                for ($count_penilaian = 0; $count_penilaian < count($request->k13_rencana_nilai_spiritual_id); $count_penilaian++) {
                    $data_nilai = array(
                        'anggota_kelas_id'  => $request->anggota_kelas_id[$cound_siswa],
                        'k13_rencana_nilai_spiritual_id' => $request->k13_rencana_nilai_spiritual_id[$count_penilaian],
                        'nilai'  => ltrim($request->nilai[$count_penilaian][$cound_siswa]),
                        'created_at'  => Carbon::now(),
                        'updated_at'  => Carbon::now(),
                    );
                    $data_penilaian_siswa[] = $data_nilai;
                }
                $store_data_penilaian = $data_penilaian_siswa;
            }
            K13NilaiSpiritual::insert($store_data_penilaian);
            return redirect('guru/nilaispiritual')->with('toast_success', 'Data nilai spiritual berhasil disimpan.');
        }
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
            for ($count_penilaian = 0; $count_penilaian < count($request->k13_rencana_nilai_spiritual_id); $count_penilaian++) {
                $nilai = K13NilaiSpiritual::where('anggota_kelas_id', $request->anggota_kelas_id[$cound_siswa])->where('k13_rencana_nilai_spiritual_id', $request->k13_rencana_nilai_spiritual_id[$count_penilaian])->first();
                $data_nilai = [
                    'nilai'  => ltrim($request->nilai[$count_penilaian][$cound_siswa]),
                    'updated_at'  => Carbon::now(),
                ];
                $nilai->update($data_nilai);
            }
        }
        return redirect('guru/nilaispiritual')->with('toast_success', 'Data nilai spiritual berhasil edit.');
    }

    public function format_import(Request $request)
    {
        $pembelajaran = Pembelajaran::findorfail($request->pembelajaran_id);
        $cek_rencana = K13RencanaNilaiSpiritual::where('pembelajaran_id', $pembelajaran->id)->get();
        if (count($cek_rencana) == 0) {
            return back()->with('toast_error', 'Belum ditemukan rencana penilaian');
        } else {
            $filename = 'format_import_spiritual ' . $pembelajaran->mapel->ringkasan_mapel . ' ' . $pembelajaran->kelas->nama_kelas . ' ' . date('Y-m-d H_i_s') . '.xls';
            $id = $pembelajaran->id;
            return Excel::download(new FormatImportSpiritualK13Export($id), $filename);
        }
    }

    public function import(Request $request)
    {
        try {
            Excel::import(new NilaiSpiritualK13Import, $request->file('file_import'));
            return back()->with('toast_success', 'Data nilai spiritual berhasil diimport');
        } catch (\Throwable $th) {
            return back()->with('toast_error', 'Maaf, format data tidak sesuai');
        }
    }
}
