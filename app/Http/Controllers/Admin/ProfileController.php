<?php

namespace App\Http\Controllers\Admin;

use App\Admin;
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
        $admin = Admin::findorfail($id);

        $validator = Validator::make($request->all(), [
            'nama_lengkap' => 'required|min:3|max:100',
            'jenis_kelamin' => 'required',
            'tanggal_lahir' => 'required',
            'email' => 'required|email|min:5|max:100|unique:admin,email,' . $admin->id,
            'nomor_hp' => 'required|numeric|digits_between:11,13|unique:admin,nomor_hp,' . $admin->id,
            'avatar' => 'max:2048|image',
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
                    'jenis_kelamin' => $request->jenis_kelamin,
                    'tanggal_lahir' => $request->tanggal_lahir,
                    'email' => $request->email,
                    'nomor_hp' => $request->nomor_hp,
                    'avatar' => $name_avatar,
                ];
            } else {
                $data = [
                    'nama_lengkap' => strtoupper($request->nama_lengkap),
                    'jenis_kelamin' => $request->jenis_kelamin,
                    'tanggal_lahir' => $request->tanggal_lahir,
                    'email' => $request->email,
                    'nomor_hp' => $request->nomor_hp,
                ];
            }
            $admin->update($data);
            return back()->with('toast_success', 'Profile anda berhasil diedit');
        }
    }
}
