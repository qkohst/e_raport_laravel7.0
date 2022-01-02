<?php

namespace App\Http\Controllers\Admin\KTSP;

use App\Http\Controllers\Controller;
use App\KtspTglRaport;
use App\Tapel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class TglRaportController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $title = 'Tanggal Raport';
        $tapel = Tapel::findorfail(session()->get('tapel_id'));
        $data_tgl_raport = KtspTglRaport::where('tapel_id', $tapel->id)->get();
        return view('admin.ktsp.tgl_raport.index', compact('title', 'tapel', 'data_tgl_raport'));
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
            'tapel_id' => 'required|unique:ktsp_tgl_raport',
            'tempat_penerbitan' => 'required|min:3|max:50',
            'tanggal_pembagian' => 'required',
        ]);
        if ($validator->fails()) {
            return back()->with('toast_error', $validator->messages()->all()[0])->withInput();
        } else {
            $tgl_raport = new KtspTglRaport([
                'tapel_id' => $request->tapel_id,
                'tempat_penerbitan' => $request->tempat_penerbitan,
                'tanggal_pembagian' => $request->tanggal_pembagian,
            ]);
            $tgl_raport->save();
            return back()->with('toast_success', 'Tanggal raport berhasil ditambahkan');
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
            'tempat_penerbitan' => 'required|min:3|max:50',
            'tanggal_pembagian' => 'required',
        ]);
        if ($validator->fails()) {
            return back()->with('toast_error', $validator->messages()->all()[0])->withInput();
        } else {
            $tgl_raport = KtspTglRaport::findorfail($id);
            $data_tgl_raport = [
                'tempat_penerbitan' => $request->tempat_penerbitan,
                'tanggal_pembagian' => $request->tanggal_pembagian,
            ];
            $tgl_raport->update($data_tgl_raport);
            return back()->with('toast_success', 'Tanggal raport  berhasil diedit');
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
        $tgl_raport = KtspTglRaport::findorfail($id);
        try {
            $tgl_raport->delete();
            return back()->with('toast_success', 'Tanggal raport berhasil dihapus');
        } catch (\Throwable $th) {
            return back()->with('toast_error', 'Tanggal raport tidak dapat dihapus');
        }
    }
}
