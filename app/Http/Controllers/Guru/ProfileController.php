<?php

namespace App\Http\Controllers\Guru;

use App\Guru;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class ProfileController extends Controller
{

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $guru = Guru::findorfail($id);
        $validator = Validator::make($request->all(), [
            'nama_lengkap' => 'required|min:3|max:100',
            'gelar' => 'required|min:3|max:10',
            'nip' => 'nullable|digits:18|unique:guru,nip' . $guru->id,
            'jenis_kelamin' => 'required',
            'tempat_lahir' => 'required|min:3',
            'tanggal_lahir' => 'required',
            'nuptk' => 'nullable|digits:16|unique:guru,nuptk' . $guru->id,
            'alamat' => 'required|min:4|max:255',
        ]);
        if ($validator->fails()) {
            return back()->with('toast_error', $validator->messages()->all()[0])->withInput();
        } else {
            if ($request->has('avatar')) {
                $avatar_file = $request->file('avatar');
                $name_avatar = 'profile_' . strtolower($request->nama_lengkap) . '.' . $avatar_file->getClientOriginalExtension();
                $avatar_file->move('assets/dist/img/avatar/', $name_avatar);

                $data = [
                    'nama_lengkap' => strtoupper($request->nama_lengkap),
                    'gelar' => $request->gelar,
                    'nip' => $request->nip,
                    'jenis_kelamin' => $request->jenis_kelamin,
                    'tempat_lahir' => $request->tempat_lahir,
                    'tanggal_lahir' => $request->tanggal_lahir,
                    'nuptk' => $request->nuptk,
                    'alamat' => $request->alamat,
                    'avatar' => $name_avatar,
                ];
            } else {
                $data = [
                    'nama_lengkap' => strtoupper($request->nama_lengkap),
                    'gelar' => $request->gelar,
                    'nip' => $request->nip,
                    'jenis_kelamin' => $request->jenis_kelamin,
                    'tempat_lahir' => $request->tempat_lahir,
                    'tanggal_lahir' => $request->tanggal_lahir,
                    'nuptk' => $request->nuptk,
                    'alamat' => $request->alamat,
                ];
            }
            $guru->update($data);
            return back()->with('toast_success', 'Profile anda berhasil diedit');
        }
    }
}
