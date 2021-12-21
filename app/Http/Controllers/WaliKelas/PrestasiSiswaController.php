<?php

namespace App\Http\Controllers\WaliKelas;

use App\AnggotaKelas;
use App\Guru;
use App\Http\Controllers\Controller;
use App\Kelas;
use App\PrestasiSiswa;
use App\Tapel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class PrestasiSiswaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $title = 'Data Prestasi Siswa';
        $tapel = Tapel::findorfail(session()->get('tapel_id'));
        $guru = Guru::where('user_id', Auth::user()->id)->first();
        $id_kelas_diampu = Kelas::where('tapel_id', $tapel->id)->where('guru_id', $guru->id)->get('id');
        $id_anggota_kelas = AnggotaKelas::whereIn('kelas_id', $id_kelas_diampu)->get('id');

        $data_prestasi_siswa = PrestasiSiswa::whereIn('anggota_kelas_id', $id_anggota_kelas)->get();
        $data_anggota_kelas = AnggotaKelas::whereIn('kelas_id', $id_kelas_diampu)->get();

        return view('walikelas.prestasi.index', compact('title', 'data_prestasi_siswa', 'data_anggota_kelas'));
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'anggota_kelas_id' => 'required',
            'jenis_prestasi' => 'required',
            'deskripsi' => 'required|min:20|max:200',
        ]);
        if ($validator->fails()) {
            return back()->with('toast_error', $validator->messages()->all()[0])->withInput();
        } else {
            $prestasi = new PrestasiSiswa([
                'anggota_kelas_id' => $request->anggota_kelas_id,
                'jenis_prestasi' => $request->jenis_prestasi,
                'deskripsi' => $request->deskripsi,
            ]);
            $prestasi->save();
            return back()->with('toast_success', 'Prestasi siswa berhasil ditambahkan');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $prestasi = PrestasiSiswa::findorfail($id);
        try {
            $prestasi->delete();
            return back()->with('toast_success', 'Prestasi siswa berhasil dihapus');
        } catch (\Throwable $th) {
            return back()->with('toast_error', 'Data Prestasi siswa tidak dapat dihapus');
        }
    }
}
