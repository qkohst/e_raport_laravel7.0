<?php

namespace App\Imports;

use App\K13NilaiSosial;
use Illuminate\Support\Collection;
use Maatwebsite\Excel\Concerns\ToCollection;

class NilaiSosialK13Import implements ToCollection
{
    /**
     * @param array $row
     *
     * @return \Illuminate\Database\Eloquent\Model|null
     */
    public function collection(Collection $collection)
    {
        foreach ($collection as $key => $row) {
            if ($key >= 10) {
                if ($row[5] > 0 && $row[5] <= 4) {
                    $cek_nilai = K13NilaiSosial::where('k13_rencana_nilai_sosial_id', $row[1])->where('anggota_kelas_id', $row[2])->first();
                    if (is_null($cek_nilai)) {
                        K13NilaiSosial::create([
                            'k13_rencana_nilai_sosial_id' => $row[1],
                            'anggota_kelas_id' => $row[2],
                            'nilai' => $row[5]
                        ]);
                    } else {
                        $cek_nilai->update([
                            'nilai' => $row[5]
                        ]);
                    }
                } else {
                    return back()->with('toast_warning', 'Maaf, Nilai baris nomor ' . $row[0] . ' harus bernilai antara 1 sampai 4');
                }
            }
        }
    }
}
