<?php

namespace App\Exports;

use App\Kelas;
use App\Pembelajaran;
use App\Tapel;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;

class FormatImportKKMKTSPExport implements FromView, ShouldAutoSize
{
    public function view(): View
    {
        $time_download = date('Y-m-d H:i:s');

        $tapel = Tapel::findorfail(session()->get('tapel_id'));
        $id_kelas = Kelas::where('tapel_id', $tapel->id)->orderBy('tingkatan_kelas', 'ASC')->get('id');
        $data_pembelajaran = Pembelajaran::whereIn('kelas_id', $id_kelas)->whereNotNull('guru_id')->where('status', 1)->orderBy('kelas_id', 'ASC')->get();

        return view('exports.format_import_kkm_ktsp', compact('time_download', 'tapel', 'data_pembelajaran'));
    }
}
