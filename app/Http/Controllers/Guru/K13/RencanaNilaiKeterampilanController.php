<?php

namespace App\Http\Controllers\Guru\K13;

use App\Guru;
use App\Http\Controllers\Controller;
use App\K13KdMapel;
use App\K13RencanaNilaiKeterampilan;
use App\Kelas;
use App\Pembelajaran;
use App\Tapel;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class RencanaNilaiKeterampilanController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $title = 'Rencana Nilai Keterampilan';
        $tapel = Tapel::findorfail(session()->get('tapel_id'));

        $guru = Guru::where('user_id', Auth::user()->id)->first();
        $id_kelas = Kelas::where('tapel_id', $tapel->id)->get('id');

        $data_rencana_penilaian = Pembelajaran::where('guru_id', $guru->id)->whereIn('kelas_id', $id_kelas)->where('status', 1)->orderBy('mapel_id', 'ASC')->orderBy('kelas_id', 'ASC')->get();
        foreach ($data_rencana_penilaian as $penilaian) {
            $rencana_penilaian = K13RencanaNilaiKeterampilan::where('pembelajaran_id', $penilaian->id)->groupBy('kode_penilaian')->get();
            $penilaian->jumlah_rencana_penilaian = count($rencana_penilaian);
        }

        return view('guru.k13.rencanaketerampilan.index', compact('title', 'data_rencana_penilaian'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        $title = 'Tambah Rencana Nilai Keterampilan';
        $tapel = Tapel::findorfail(session()->get('tapel_id'));

        $pembelajaran = Pembelajaran::findorfail($request->pembelajaran_id);
        $kelas = Kelas::findorfail($pembelajaran->kelas_id);
        $data_kd = K13KdMapel::where([
            'mapel_id' => $pembelajaran->mapel_id,
            'tingkatan_kelas' => $kelas->tingkatan_kelas,
            'jenis_kompetensi' => 4,
            'semester' => $tapel->semester,
        ])->orderBy('kode_kd', 'ASC')->get();

        if (count($data_kd) == 0) {
            return redirect('guru/kdk13')->with('toast_error', 'Belum ditemukan data kompetensi dasar keterampilan, silahkan tambahkan data KD.');
        } else {
            $jumlah_penilaian = $request->jumlah_penilaian;
            return view('guru.k13.rencanaketerampilan.create', compact('title', 'pembelajaran', 'jumlah_penilaian', 'data_kd'));
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
        try {
            for ($count_penilaian = 0; $count_penilaian < count($request->teknik_penilaian); $count_penilaian++) {
                for ($count_kd = 0; $count_kd < count($request->k13_kd_mapel_id[$count_penilaian]); $count_kd++) {
                    $data_penilaian = array(
                        'pembelajaran_id' => $request->pembelajaran_id,
                        'k13_kd_mapel_id'  => $request->k13_kd_mapel_id[$count_penilaian][$count_kd],
                        'kode_penilaian'  => $request->kode_penilaian[$count_penilaian],
                        'teknik_penilaian'  => $request->teknik_penilaian[$count_penilaian],
                        'created_at'  => Carbon::now(),
                        'updated_at'  => Carbon::now(),
                    );
                    $data_penilaian_permapel[] = $data_penilaian;
                }
                $store_data_penilaian = $data_penilaian_permapel;
            }
            K13RencanaNilaiKeterampilan::insert($store_data_penilaian);
            return redirect('guru/rencanaketerampilan')->with('toast_success', 'Rencana nilai keterampilan berhasil disimpan.');
        } catch (\Throwable $th) {
            return back()->with('toast_error', 'Pilih minimal 1 KD pada setiap kolom penilaian.');
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
        $title = 'Data Rencana Nilai Keterampilan';
        $pembelajaran = Pembelajaran::findorfail($id);
        $data_rencana_penilaian = K13RencanaNilaiKeterampilan::where('pembelajaran_id', $id)->orderBy('kode_penilaian', 'ASC')->orderBy('k13_kd_mapel_id', 'DESC')->get();
        return view('guru.k13.rencanaketerampilan.show', compact('title', 'pembelajaran', 'data_rencana_penilaian'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Request $request, $id)
    {
        $title = 'Edit Rencana Nilai Keterampilan';
        $tapel = Tapel::findorfail(session()->get('tapel_id'));

        $pembelajaran = Pembelajaran::findorfail($request->pembelajaran_id);
        $kelas = Kelas::findorfail($pembelajaran->kelas_id);
        $data_kd = K13KdMapel::where([
            'mapel_id' => $pembelajaran->mapel_id,
            'tingkatan_kelas' => $kelas->tingkatan_kelas,
            'jenis_kompetensi' => 4,
            'semester' => $tapel->semester,
        ])->orderBy('kode_kd', 'ASC')->get();
        $jumlah_penilaian = $request->jumlah_penilaian;

        return view('guru.k13.rencanaketerampilan.edit', compact('title', 'pembelajaran', 'jumlah_penilaian', 'data_kd'));
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
        try {
            for ($count_penilaian = 0; $count_penilaian < count($request->teknik_penilaian); $count_penilaian++) {
                for ($count_kd = 0; $count_kd < count($request->k13_kd_mapel_id[$count_penilaian]); $count_kd++) {
                    $data_penilaian = array(
                        'pembelajaran_id' => $request->pembelajaran_id,
                        'k13_kd_mapel_id'  => $request->k13_kd_mapel_id[$count_penilaian][$count_kd],
                        'kode_penilaian'  => $request->kode_penilaian[$count_penilaian],
                        'teknik_penilaian'  => $request->teknik_penilaian[$count_penilaian],
                        'created_at'  => Carbon::now(),
                        'updated_at'  => Carbon::now(),
                    );
                    $data_penilaian_permapel[] = $data_penilaian;
                }
                $store_data_penilaian = $data_penilaian_permapel;
            }
            try {
                K13RencanaNilaiKeterampilan::where('pembelajaran_id', $request->pembelajaran_id)->delete();
                K13RencanaNilaiKeterampilan::insert($store_data_penilaian);
                return redirect('guru/rencanaketerampilan')->with('toast_success', 'Rencana nilai keterampilan berhasil diupdate.');
            } catch (\Throwable $th) {
                return back()->with('toast_warning', 'Perencanaan penilaian tidak dapat diupdate.');
            }
        } catch (\Throwable $th) {
            return back()->with('toast_error', 'Pilih minimal 1 KD pada setiap kolom penilaian.');
        }
    }
}
