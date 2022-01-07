<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Pengumuman;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class PengumumanController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $title = 'Data Pengumuman';
        $data_pengumuman = Pengumuman::all();
        return view('admin.pengumuman.index', compact('title', 'data_pengumuman'));
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
            'judul' => 'required|min:5|max:255',
            'isi' => 'required|min:25'
        ]);
        if ($validator->fails()) {
            return back()->with('toast_error', $validator->messages()->all()[0])->withInput();
        } else {
            $pengumuman = new Pengumuman([
                'user_id' => Auth::user()->id,
                'judul' => $request->judul,
                'isi' => $request->isi,
            ]);
            $pengumuman->save();
            return back()->with('toast_success', 'Pengumuman baru berhasil ditambahkan');
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
        $validator = Validator::make($request->all(), [
            'isi' => 'required|min:25'
        ]);
        if ($validator->fails()) {
            return back()->with('toast_error', $validator->messages()->all()[0])->withInput();
        } else {
            $pengumuman = Pengumuman::findorfail($id);
            $data = [
                'isi' => $request->isi
            ];
            $pengumuman->update($data);
            return back()->with('toast_success', 'Pengumuman berhasil diedit');
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
        $pengumuman = Pengumuman::findorfail($id);
        $pengumuman->delete();
        return back()->with('toast_success', 'Pengumuman berhasil dihapus');
    }
}
