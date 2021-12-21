<?php

namespace App\Http\Controllers\Guru;

use App\AnggotaEkstrakulikuler;
use App\AnggotaKelas;
use App\Ekstrakulikuler;
use App\Guru;
use App\Http\Controllers\Controller;
use App\Kelas;
use App\NilaiEkstrakulikuler;
use App\Tapel;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class NilaiEkstrakulikulerController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $title = 'Input Nilai Ekstrakulikuler';
        $tapel = Tapel::findorfail(session()->get('tapel_id'));

        $guru = Guru::where('user_id', Auth::user()->id)->first();
        $data_ekstrakulikuler = Ekstrakulikuler::where('tapel_id', $tapel->id)->where('pembina_id', $guru->id)->orderBy('nama_ekstrakulikuler', 'ASC')->get();

        return view('guru.nilaiekstra.index', compact('title', 'data_ekstrakulikuler'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'ekstrakulikuler_id' => 'required',
            'kelas_id' => 'required',
        ]);
        if ($validator->fails()) {
            return back()->with('toast_error', $validator->messages()->all()[0])->withInput();
        } else {
            // Data Master 
            $title = 'Input Nilai Ekstrakulikuler';
            $tapel = Tapel::findorfail(session()->get('tapel_id'));
            $guru = Guru::where('user_id', Auth::user()->id)->first();
            $data_ekstrakulikuler = Ekstrakulikuler::where('tapel_id', $tapel->id)->where('pembina_id', $guru->id)->orderBy('nama_ekstrakulikuler', 'ASC')->get();

            $ekstrakulikuler = Ekstrakulikuler::findorfail($request->ekstrakulikuler_id);
            $kelas = Kelas::findorfail($request->kelas_id);

            $id_all_anggota_ekstra = AnggotaEkstrakulikuler::where('ekstrakulikuler_id', $ekstrakulikuler->id)->get('anggota_kelas_id');
            $id_anggota_kelas_dipilih = AnggotaKelas::where('kelas_id', $request->kelas_id)->whereIn('id', $id_all_anggota_ekstra)->get('id');

            $id_kelas = AnggotaKelas::whereIn('id', $id_all_anggota_ekstra)->get('kelas_id');
            $data_kelas = Kelas::whereIn('id', $id_kelas)->get();

            $data_anggota_ekstrakulikuler = AnggotaEkstrakulikuler::where('ekstrakulikuler_id', $ekstrakulikuler->id)->whereIn('anggota_kelas_id', $id_anggota_kelas_dipilih)->get();
            foreach ($data_anggota_ekstrakulikuler as $anggota) {
                $nilai = NilaiEkstrakulikuler::where('ekstrakulikuler_id', $anggota->ekstrakulikuler_id)->where('anggota_ekstrakulikuler_id', $anggota->id)->first();
                if (is_null($nilai)) {
                    $anggota->nilai = null;
                    $anggota->deskripsi = null;
                } else {
                    $anggota->nilai = $nilai->nilai;
                    $anggota->deskripsi = $nilai->deskripsi;
                }
            }

            return view('guru.nilaiekstra.create', compact('title', 'data_ekstrakulikuler', 'ekstrakulikuler', 'kelas', 'data_kelas', 'data_anggota_ekstrakulikuler'));
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
        // dd($request->all());
        if (is_null($request->nilai)) {
            return back()->with('toast_error', 'Tidak ditemukan data nilai ekstrakulikuler');
        } else {
            for ($cound_siswa = 0; $cound_siswa < count($request->anggota_ekstrakulikuler_id); $cound_siswa++) {
                $data_nilai = array(
                    'ekstrakulikuler_id' => $request->ekstrakulikuler_id,
                    'anggota_ekstrakulikuler_id'  => $request->anggota_ekstrakulikuler_id[$cound_siswa],
                    'nilai'  => $request->nilai[$cound_siswa],
                    'deskripsi'  => $request->deskripsi[$cound_siswa],
                    'created_at'  => Carbon::now(),
                    'updated_at'  => Carbon::now(),
                );
                $cek_data = NilaiEkstrakulikuler::where('ekstrakulikuler_id', $request->ekstrakulikuler_id)->where('anggota_ekstrakulikuler_id', $request->anggota_ekstrakulikuler_id[$cound_siswa])->first();
                if (is_null($cek_data)) {
                    NilaiEkstrakulikuler::insert($data_nilai);
                } else {
                    $cek_data->update($data_nilai);
                }
            }
            return redirect('guru/nilaiekstra')->with('toast_success', 'Nilai ekstrakulikuler berhasil disimpan');
        }
    }
}
