<?php

namespace App\Http\Controllers\Admin;

use App\Exports\GuruExport;
use App\Guru;
use App\Http\Controllers\Controller;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Excel;

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
            'nama_lengkap' => 'required|min:3',
            'gelar' => 'required|min:3',
            'nip' => 'nullable|digits:18',
            'jenis_kelamin' => 'required',
            'tempat_lahir' => 'required|min:3',
            'tanggal_lahir' => 'required',
            'nuptk' => 'nullable|digits:16',
            'alamat' => 'required|min:4',
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
                'nama_lengkap' => $request->input('nama_lengkap'),
                'gelar' => $request->input('gelar'),
                'nip' => $request->input('nip'),
                'jenis_kelamin' => $request->input('jenis_kelamin'),
                'tempat_lahir' => $request->input('tempat_lahir'),
                'tanggal_lahir' => $request->input('tanggal_lahir'),
                'nuptk' => $request->input('nuptk'),
                'alamat' => $request->input('alamat'),
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
            'gelar' => 'required|min:3',
            'nip' => 'nullable|digits:18',
            'jenis_kelamin' => 'required',
            'tempat_lahir' => 'required|min:3',
            'tanggal_lahir' => 'required',
            'nuptk' => 'nullable|digits:16',
            'alamat' => 'required|min:4',
        ]);
        if ($validator->fails()) {
            return back()->with('toast_error', $validator->messages()->all()[0])->withInput();
        } else {
            $guru = Guru::findorfail($id);
            $data_guru = [
                'gelar' => $request->input('gelar'),
                'nip' => $request->input('nip'),
                'jenis_kelamin' => $request->input('jenis_kelamin'),
                'tempat_lahir' => $request->input('tempat_lahir'),
                'tanggal_lahir' => $request->input('tanggal_lahir'),
                'nuptk' => $request->input('nuptk'),
                'alamat' => $request->input('alamat'),
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
        $filename = 'data_guru ' . date('Y-m-d H_i_s') . '.xlsx';
        return Excel::download(new GuruExport, $filename);
    }
}
