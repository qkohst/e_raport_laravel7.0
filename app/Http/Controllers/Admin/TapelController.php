<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Tapel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;


class TapelController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $title = 'Data Tahun Pelajaran';
        $data_tapel = Tapel::orderBy('id', 'DESC')->get();
        return view('admin.tapel.index', compact('title', 'data_tapel'));
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
            'tahun_pelajaran' => 'required|min:9|max:9',
            'semester' => 'required',
        ]);
        if ($validator->fails()) {
            return back()->with('toast_error', $validator->messages()->all()[0])->withInput();
        } else {
            $tapel = new Tapel([
                'tahun_pelajaran' => $request->input('tahun_pelajaran'),
                'semester' => $request->input('semester'),
            ]);
            $tapel->save();
            // PesertaDidik::where('status', 1)->update(['rombel_id' => null]);
            return back()->with('toast_success', 'Tahun Pelajaran berhasil ditambahkan');
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
        $tapel = Tapel::findorfail($id);
        try {
            $tapel->delete();
            return back()->with('toast_success', 'Tahun Pelajaran berhasil dihapus');
        } catch (\Throwable $th) {
            return back()->with('toast_error', 'Tahun Pelajaran tidak dapat dihapus');
        }
    }
}
