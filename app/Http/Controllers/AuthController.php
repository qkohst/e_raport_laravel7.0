<?php

namespace App\Http\Controllers;

use App\RiwayatLogin;
use App\Rules\MatchOldPassword;
use App\User;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AuthController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $title = 'Login';
        return view('auth.login', compact('title'));
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
            'username' => 'required|exists:user',
            'password' => 'required|min:6',
        ]);
        if ($validator->fails()) {
            return back()->with('toast_error', $validator->messages()->all()[0])->withInput();
        } else {
            $user_login = User::where('username', $request->username)->first();
            if (!Auth::attempt(['username' => $request->username, 'password' => $request->password])) {
                return back()->with('toast_error', 'password salah.');
            } elseif ($user_login->status == false) {
                return back()->with('toast_error', 'User ' . $user_login->username . ' telah dinonaktifkan');
            } else {
                $cek_riwayat = RiwayatLogin::where('user_id', Auth::id())->first();
                if (is_null($cek_riwayat)) {
                    $riwayat_login = new RiwayatLogin([
                        'user_id' => Auth::id(),
                        'status_login' => true
                    ]);
                    $riwayat_login->save();
                } else {
                    $cek_riwayat->update(['status_login' => true]);
                }
                return redirect('/dashboard')->with('toast_success', 'Login berhasil');
            }
        }
    }

    public function logout(Request $request)
    {
        RiwayatLogin::where('user_id', Auth::id())->update(['status_login' => false]);
        Auth::logout();
        return redirect('/')->with('toast_success', 'Logout berhasil');
    }

    public function view_ganti_password()
    {
        $title = 'Ganti Password';
        return view('auth.ganti_password', compact('title'));
    }

    public function ganti_password(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'password_lama' => ['required', new MatchOldPassword],
            'password_baru' => 'required|min:6',
            'konfirmasi_password' => 'required|same:password_baru',
        ]);

        if ($validator->fails()) {
            return back()->with('toast_error', $validator->messages()->all()[0])->withInput();
        } else {
            $user = User::findorfail(Auth::id());
            $data = [
                'password' => bcrypt($request->password_baru),
            ];
            $user->update($data);
            RiwayatLogin::where('user_id', Auth::id())->update(['status_login' => false]);
            Auth::logout();
            return redirect('/')->with('toast_success', 'Password berhasil diganti, silahkan login !');
        }
    }
}
