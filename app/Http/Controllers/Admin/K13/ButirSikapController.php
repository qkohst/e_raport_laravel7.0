<?php

namespace App\Http\Controllers\Admin\K13;

use App\Http\Controllers\Controller;
use App\Imports\K13ButirSikapImport;
use App\K13ButirSikap;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Excel;
use Illuminate\Support\Facades\Response;

class ButirSikapController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $title = 'Butir-Butir Sikap';
        $data_sikap = K13ButirSikap::orderBy('jenis_kompetensi', 'ASC')->get();
        return view('admin.k13.butir_sikap.index', compact('title', 'data_sikap'));
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
            'jenis_kompetensi' => 'required',
            'kode' => 'required|min:2|max:10|unique:k13_butir_sikap',
            'butir_sikap' => 'required|min:4|max:255',
        ]);
        if ($validator->fails()) {
            return back()->with('toast_error', $validator->messages()->all()[0])->withInput();
        } else {
            $sikap = new K13ButirSikap([
                'jenis_kompetensi' => $request->jenis_kompetensi,
                'kode' => $request->kode,
                'butir_sikap' => $request->butir_sikap,
            ]);
            $sikap->save();
            return back()->with('toast_success', 'Butir sikap berhasil ditambahkan');
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
            'kode' => 'required|min:2|max:10|unique:k13_butir_sikap' . ($id ? ",id,$id" : ''),
            'butir_sikap' => 'required|min:4|max:255',
        ]);
        if ($validator->fails()) {
            return back()->with('toast_error', $validator->messages()->all()[0])->withInput();
        } else {
            try {
                $sikap = K13ButirSikap::findorfail($id);
                $data_sikap = [
                    'kode' => $request->kode,
                    'butir_sikap' => $request->butir_sikap,
                ];
                $sikap->update($data_sikap);
                return back()->with('toast_success', 'Butir sikap berhasil diedit');
            } catch (\Throwable $th) {
                return back()->with('toast_error', 'kode sudah ada sebelumnya');
            }
        }
    }

    public function format_import()
    {
        $file = public_path() . "/format_import/format_import_sikap.xls";
        $headers = array(
            'Content-Type: application/xls',
        );
        return Response::download($file, 'format_import_sikap ' . date('Y-m-d H_i_s') . '.xls', $headers);
    }

    public function import(Request $request)
    {
        try {
            Excel::import(new K13ButirSikapImport, $request->file('file_import'));
            return back()->with('toast_success', 'Data butir sikap berhasil diimport');
        } catch (\Throwable $th) {
            return back()->with('toast_error', 'Maaf, format data tidak sesuai');
        }
    }
}
