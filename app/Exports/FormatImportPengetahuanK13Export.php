<?php

namespace App\Exports;

use App\AnggotaKelas;
use App\K13RencanaNilaiPengetahuan;
use App\Pembelajaran;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;

class FormatImportPengetahuanK13Export implements FromView, ShouldAutoSize
{
    protected $id;

    function __construct($id)
    {
        $this->id = $id;
    }

    public function view(): View
    {
        $pembelajaran = Pembelajaran::findorfail($this->id);
        $data_rencana_penilaian = K13RencanaNilaiPengetahuan::where('pembelajaran_id', $pembelajaran->id)->get();
        $data_anggota_kelas = AnggotaKelas::where('kelas_id', $pembelajaran->kelas_id)->get();

        return view('exports.formatimportnilai.k13.format_import_pengetahuan', compact('pembelajaran', 'data_rencana_penilaian', 'data_anggota_kelas'));
    }
}
