<?php

namespace App\Exports;

use App\Pembelajaran;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;

class PembelajaranExport implements FromView, ShouldAutoSize
{
    public function view(): View
    {
        $time_download = date('Y-m-d H:i:s');

        $data_pembelajaran = Pembelajaran::where('status', 1)->orderBy('kelas_id', 'ASC')->get();

        return view('exports.pembelajaran', compact('time_download', 'data_pembelajaran'));
    }
}
