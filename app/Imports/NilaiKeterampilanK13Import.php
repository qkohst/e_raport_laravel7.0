<?php

namespace App\Imports;

use App\K13NilaiKeterampilan;
use Illuminate\Support\Collection;
use Maatwebsite\Excel\Concerns\ToCollection;

class NilaiKeterampilanK13Import implements ToCollection
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
                if ($row[6] > 0 && $row[6] <= 100) {
                    $cek_nilai = K13NilaiKeterampilan::where('k13_rencana_nilai_keterampilan_id', $row[1])->where('anggota_kelas_id', $row[2])->first();
                    if (is_null($cek_nilai)) {
                        K13NilaiKeterampilan::create([
                            'k13_rencana_nilai_keterampilan_id' => $row[1],
                            'anggota_kelas_id' => $row[2],
                            'nilai' => $row[6]
                        ]);
                    } else {
                        $cek_nilai->update([
                            'nilai' => $row[6]
                        ]);
                    }
                } else {
                    return back()->with('toast_warning', 'Maaf, Nilai baris nomor ' . $row[0] . ' harus bernilai antara 0 sampai 100');
                }
            }
        }
    }
}
