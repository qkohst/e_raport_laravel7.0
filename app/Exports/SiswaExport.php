<?php

namespace App\Exports;

use App\Siswa;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;

class SiswaExport implements FromView, ShouldAutoSize
{
    public function view(): View
    {
        $time_download = date('Y-m-d H:i:s');

        $data_siswa = Siswa::where('status', 1)->orderBy('nis', 'ASC')->get();

        return view('exports.siswa', compact('time_download', 'data_siswa'));
    }
}
