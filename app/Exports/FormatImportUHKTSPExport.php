<?php

namespace App\Exports;

use App\AnggotaKelas;
use App\Pembelajaran;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;

class FormatImportUHKTSPExport implements FromView, ShouldAutoSize
{
    protected $id;

    function __construct($id)
    {
        $this->id = $id;
    }

    public function view(): View
    {
        $pembelajaran = Pembelajaran::findorfail($this->id);
        $data_anggota_kelas = AnggotaKelas::where('kelas_id', $pembelajaran->kelas_id)->get();

        return view('exports.formatimportnilai.ktsp.format_import_uh', compact('pembelajaran', 'data_anggota_kelas'));
    }
}
