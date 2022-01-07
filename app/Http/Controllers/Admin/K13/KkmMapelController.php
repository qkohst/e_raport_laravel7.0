<?php

namespace App\Http\Controllers\Admin\K13;

use App\Exports\FormatImportKKMK13Export;
use App\Http\Controllers\Controller;
use App\Imports\KKMK13Import;
use App\K13KkmMapel;
use App\Mapel;
use App\Pembelajaran;
use App\Tapel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Excel;

class KkmMapelController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $title = 'KKM Mata Pelajaran';
        $tapel = Tapel::findorfail(session()->get('tapel_id'));
        $data_mapel = Mapel::where('tapel_id', $tapel->id)->orderBy('nama_mapel', 'ASC')->get();
        $id_mapel = Mapel::where('tapel_id', $tapel->id)->get('id');

        $cek_pembelajaran = Pembelajaran::whereIn('mapel_id', $id_mapel)->whereNotNull('guru_id')->where('status', 1)->get();
        if (count($cek_pembelajaran) == 0) {
            return redirect('admin/pembelajaran')->with('toast_warning', 'Mohon isikan data pembelajaran');
        } else {
            $data_kkm = K13KkmMapel::whereIn('mapel_id', $id_mapel)->get();
            return view('admin.k13.kkm.index', compact('title', 'data_mapel', 'data_kkm'));
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
            'mapel_id' => 'required',
            'kelas_id' => 'required',
            'kkm' => 'required|numeric|between:0,100',
        ]);
        if ($validator->fails()) {
            return back()->with('toast_error', $validator->messages()->all()[0])->withInput();
        } else {
            $cek_kkm = K13KkmMapel::where('mapel_id', $request->mapel_id)->where('kelas_id', $request->kelas_id)->first();
            if (is_null($cek_kkm)) {
                $kkm = new K13KkmMapel([
                    'mapel_id' => $request->mapel_id,
                    'kelas_id' => $request->kelas_id,
                    'kkm' => ltrim($request->kkm),
                ]);
                $kkm->save();
                return back()->with('toast_success', 'KKM berhasil ditambahkan');
            } else {
                return back()->with('toast_error', 'Data KKM sudah ada');
            }
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
            'kkm' => 'required|numeric|between:0,100',
        ]);
        if ($validator->fails()) {
            return back()->with('toast_error', $validator->messages()->all()[0])->withInput();
        } else {
            $kkm = K13KkmMapel::findorfail($id);
            $data = [
                'kkm' => ltrim($request->kkm),
            ];
            $kkm->update($data);
            return back()->with('toast_success', 'KKM berhasil diedit');
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
        $kkm = K13KkmMapel::findorfail($id);
        try {
            $kkm->delete();
            return back()->with('toast_success', 'KKM berhasil dihapus');
        } catch (\Throwable $th) {
            return back()->with('toast_warning', 'Data tidak dapat dihapus');
        }
    }

    public function format_import()
    {
        $filename = 'format_import_kkm_k13 ' . date('Y-m-d H_i_s') . '.xls';
        return Excel::download(new FormatImportKKMK13Export, $filename);
    }

    public function import(Request $request)
    {
        try {
            Excel::import(new KKMK13Import, $request->file('file_import'));
            return back()->with('toast_success', 'Data KKM berhasil diimport');
        } catch (\Throwable $th) {
            return back()->with('toast_error', 'Maaf, format data tidak sesuai');
        }
    }
}
