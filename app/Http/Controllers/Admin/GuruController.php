<?php

namespace App\Http\Controllers\Admin;

use App\Exports\GuruExport;
use App\Guru;
use App\Http\Controllers\Controller;
use App\Imports\GuruImport;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Excel;
use Illuminate\Support\Facades\Response;

class GuruController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $title = 'Data Guru';
        $data_guru = Guru::orderBy('nama_lengkap', 'ASC')->get();
        return view('admin.guru.index', compact('title', 'data_guru'));
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
            'nama_lengkap' => 'required|min:3|max:100|unique:guru',
            'gelar' => 'required|min:3|max:10',
            'nip' => 'nullable|digits:18|unique:guru',
            'jenis_kelamin' => 'required',
            'tempat_lahir' => 'required|min:3',
            'tanggal_lahir' => 'required',
            'nuptk' => 'nullable|digits:16|unique:guru',
            'alamat' => 'required|min:4|max:255',
        ]);
        if ($validator->fails()) {
            return back()->with('toast_error', $validator->messages()->all()[0])->withInput();
        } else {
            try {
                $user = new User([
                    'username' => strtolower(str_replace(' ', '', $request->nama_lengkap)),
                    'password' => bcrypt('123456'),
                    'role' => 2,
                    'status' => true
                ]);
                $user->save();
            } catch (\Throwable $th) {
                return back()->with('toast_error', 'Username telah digunakan');
            }

            $guru = new Guru([
                'user_id' => $user->id,
                'nama_lengkap' => strtoupper($request->nama_lengkap),
                'gelar' => $request->gelar,
                'nip' => $request->nip,
                'jenis_kelamin' => $request->jenis_kelamin,
                'tempat_lahir' => $request->tempat_lahir,
                'tanggal_lahir' => $request->tanggal_lahir,
                'nuptk' => $request->nuptk,
                'alamat' => $request->alamat,
                'avatar' => 'default.png'
            ]);
            $guru->save();
            return back()->with('toast_success', 'Data guru berhasil ditambahkan');
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
            'gelar' => 'required|min:3|max:10',
            'nip' => 'nullable|digits:18',
            'jenis_kelamin' => 'required',
            'tempat_lahir' => 'required|min:3',
            'tanggal_lahir' => 'required',
            'nuptk' => 'nullable|digits:16',
            'alamat' => 'required|min:4|max:255',
        ]);
        if ($validator->fails()) {
            return back()->with('toast_error', $validator->messages()->all()[0])->withInput();
        } else {
            $guru = Guru::findorfail($id);
            $data_guru = [
                'gelar' => $request->gelar,
                'nip' => $request->nip,
                'jenis_kelamin' => $request->jenis_kelamin,
                'tempat_lahir' => $request->tempat_lahir,
                'tanggal_lahir' => $request->tanggal_lahir,
                'nuptk' => $request->nuptk,
                'alamat' => $request->alamat,
            ];

            $guru->update($data_guru);
            return back()->with('toast_success', 'Data guru berhasil diedit');
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
        $guru = Guru::findorfail($id);
        $user = User::findorfail($guru->user_id);
        try {
            $guru->delete();
            $user->delete();
            return back()->with('toast_success', 'Data guru berhasil dihapus');
        } catch (\Throwable $th) {
            return back()->with('toast_error', 'Data guru tidak dapat dihapus');
        }
    }

    public function export()
    {
        $filename = 'data_guru ' . date('Y-m-d H_i_s') . '.xls';
        return Excel::download(new GuruExport, $filename);
    }

    public function format_import()
    {
        $file = public_path() . "/format_import/format_import_guru.xls";
        $headers = array(
            'Content-Type: application/xls',
        );
        return Response::download($file, 'format_import_guru ' . date('Y-m-d H_i_s') . '.xls', $headers);
    }

    public function import(Request $request)
    {
        try {
            Excel::import(new GuruImport, $request->file('file_import'));
            return back()->with('toast_success', 'Data guru berhasil diimport');
        } catch (\Throwable $th) {
            return back()->with('toast_error', 'Maaf, format data tidak sesuai');
        }
    }
}
