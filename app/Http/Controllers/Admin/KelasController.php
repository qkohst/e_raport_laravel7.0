<?php

namespace App\Http\Controllers\Admin;

use App\Guru;
use App\Http\Controllers\Controller;
use App\Kelas;
use App\Tapel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class KelasController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $tapel = Tapel::orderBy('id', 'DESC')->limit(1)->first();
        if (is_null($tapel)) {
            return redirect('admin/tapel')->with('toast_warning', 'Mohon isikan data tahun pelajaran');
        } else {
            $title = 'Data Kelas';
            $data_kelas = Kelas::where('tapel_id', $tapel->id)->orderBy('tingkatan_kelas', 'ASC')->get();
            $data_guru = Guru::orderBy('nama_lengkap', 'ASC')->get();
            return view('admin.kelas.index', compact('title', 'data_kelas', 'tapel', 'data_guru'));
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
        $validator = Validator::make($request->all(), [
            'tingkatan_kelas' => 'required|numeric|digits_between:1,2',
            'nama_kelas' => 'required|min:1|max:30',
            'guru_id' => 'required',
        ]);
        if ($validator->fails()) {
            return back()->with('toast_error', $validator->messages()->all()[0])->withInput();
        } else {
            $tapel = Tapel::orderBy('id', 'DESC')->limit(1)->first();
            $wali_kelas = Guru::findorfail($request->input('guru_id'));
            $kelas = new Kelas([
                'tapel_id' => $tapel->id,
                'guru_id' => $wali_kelas->id,
                'tingkatan_kelas' => $request->input('tingkatan_kelas'),
                'nama_kelas' => $request->input('nama_kelas'),
            ]);
            $kelas->save();
            return back()->with('toast_success', 'Kelas berhasil ditambahkan');
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
        $validator = Validator::make($request->all(), [
            'nama_kelas' => 'required|min:1|max:30',
            'guru_id' => 'required',
        ]);
        if ($validator->fails()) {
            return back()->with('toast_error', $validator->messages()->all()[0])->withInput();
        } else {
            $kelas = Kelas::findorfail($id);
            $data_kelas = [
                'nama_kelas' => $request->input('nama_kelas'),
                'guru_id' => $request->input('guru_id'),
            ];
            $kelas->update($data_kelas);
            return back()->with('toast_success', 'Kelas berhasil diedit');
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
        $kelas = Kelas::findorfail($id);
        try {
            $kelas->delete();
            return back()->with('toast_success', 'Kelas berhasil dihapus');
        } catch (\Throwable $th) {
            return back()->with('toast_warning', 'Kosongkan anggota kelas terlebih dahulu');
        }
    }
}
