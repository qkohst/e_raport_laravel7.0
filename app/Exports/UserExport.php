<?php

namespace App\Exports;

use App\User;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;

class UserExport implements FromView, ShouldAutoSize
{
    public function view(): View
    {
        $time_download = date('Y-m-d H:i:s');

        $data_user_admin = User::where('role', 1)->orderBy('username', 'ASC')->get();
        $data_user_guru = User::where('role', 2)->orderBy('username', 'ASC')->get();
        $data_user_siswa = User::where('role', 3)->orderBy('username', 'ASC')->get();

        return view('exports.user', compact('time_download', 'data_user_admin', 'data_user_guru', 'data_user_siswa'));
    }
}
