<?php

namespace App\Http\Controllers\Guru;

use App\AnggotaEkstrakulikuler;
use App\Ekstrakulikuler;
use App\Guru;
use App\Http\Controllers\Controller;
use App\Tapel;
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

            $data_anggota_ekstrakulikuler = AnggotaEkstrakulikuler::where('ekstrakulikuler_id', $ekstrakulikuler->id)
            ->join('anggota_kelas', 'anggota_ekstrakulikuler.anggota_kelas_id', '=', 'anggota_kelas.id')
            ->join('siswa', 'anggota_kelas.siswa_id', '=', 'siswa.id')
            ->orderBy('anggota_kelas.kelas_id', 'ASC')
            ->orderBy('siswa.nama_lengkap', 'ASC')
            ->get();

            return view('guru.nilaiekstra.create', compact('title', 'data_ekstrakulikuler', 'ekstrakulikuler', 'data_anggota_ekstrakulikuler'));
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
        //
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
