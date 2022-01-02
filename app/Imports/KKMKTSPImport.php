<?php

namespace App\Imports;

use App\KtspKkmMapel;
use Illuminate\Support\Collection;
use Maatwebsite\Excel\Concerns\ToCollection;

class KKMKTSPImport implements ToCollection
{
    /**
     * @param array $row
     *
     * @return \Illuminate\Database\Eloquent\Model|null
     */
    public function collection(Collection $collection)
    {
        foreach ($collection as $key => $row) {
            if ($key >= 9) {
                if ($row[6] > 0 && $row[6] <= 100) {
                    $cek_kkm = KtspKkmMapel::where('mapel_id', $row[1])->where('kelas_id', $row[2])->first();
                    if (is_null($cek_kkm)) {
                        KtspKkmMapel::create([
                            'mapel_id' => $row[1],
                            'kelas_id' => $row[2],
                            'kkm' => $row[6]
                        ]);
                    } else {
                        $cek_kkm->update([
                            'mapel_id' => $row[1],
                            'kelas_id' => $row[2],
                            'kkm' => $row[6]
                        ]);
                    }
                } else {
                    return back()->with('toast_warning', 'Maaf, KKM Nomor ' . $row[0] . ' harus bernilai antara 60 sampai 90');
                }
            }
        }
    }
}
