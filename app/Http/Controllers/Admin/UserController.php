<?php

namespace App\Http\Controllers\Admin;

use App\Admin;
use App\Exports\UserExport;
use App\Http\Controllers\Controller;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Excel;


class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $title = 'Data User';
        $data_user = User::where('id', '!=', Auth::user()->id)->orderBy('role', 'ASC')->orderBy('username', 'ASC')->get();
        return view('admin.user.index', compact('title', 'data_user'));
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
            'nama_lengkap' => 'required|min:3|max:100',
            'jenis_kelamin' => 'required',
            'tanggal_lahir' => 'required',
            'email' => 'required|email|min:5|max:100|unique:admin',
            'nomor_hp' => 'required|numeric|digits_between:11,13|unique:admin',
        ]);
        if ($validator->fails()) {
            return back()->with('toast_error', $validator->messages()->all()[0])->withInput();
        } else {
            $user = new User([
                'username' => strtolower(str_replace(' ', '', $request->nama_lengkap)),
                'password' => bcrypt('123456'),
                'role' => 1,
                'status' => true
            ]);
            $user->save();

            $admin = new Admin([
                'user_id' => $user->id,
                'nama_lengkap' => strtoupper($request->nama_lengkap),
                'jenis_kelamin' => $request->jenis_kelamin,
                'tanggal_lahir' => $request->tanggal_lahir,
                'email' => $request->email,
                'nomor_hp' => $request->nomor_hp,
                'avatar' => 'default.png'
            ]);
            $admin->save();
            return back()->with('toast_success', 'User berhasil ditambahkan');
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
        $user = User::findorfail($id);
        if (is_null($request->password)) {
            $data = [
                'status' => $request->status
            ];
        } else {
            $data = [
                'password' => bcrypt($request->password),
                'status' => $request->status
            ];
        }
        $user->update($data);
        return back()->with('toast_success', 'User berhasil diedit');
    }

    public function export()
    {
        $filename = 'user_e_raport ' . date('Y-m-d H_i_s') . '.xls';
        return Excel::download(new UserExport, $filename);
    }
}
