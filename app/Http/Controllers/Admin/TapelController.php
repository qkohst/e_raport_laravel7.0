<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Siswa;
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
                'tahun_pelajaran' => $request->tahun_pelajaran,
                'semester' => $request->semester,
            ]);
            $tapel->save();
            Siswa::where('status', 1)->update(['kelas_id' => null]);
            return back()->with('toast_success', 'Tahun Pelajaran berhasil ditambahkan');
        }
    }
}
