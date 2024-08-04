<?php

namespace App\Imports;

use App\Models\K13ButirSikap;
use Illuminate\Support\Collection;
use Maatwebsite\Excel\Concerns\ToCollection;

class K13ButirSikapImport implements ToCollection
{
    /**
     * @param array $row
     *
     * @return \Illuminate\Database\Eloquent\Model|null
     */
    public function collection(Collection $collection)
    {
        foreach ($collection as $key => $row) {
            if ($key >= 8) {
                $cek_sikap = K13ButirSikap::where('kode', $row[2])->first();
                if (is_null($cek_sikap)) {
                    K13ButirSikap::create([
                        'jenis_kompetensi' => $row[1],
                        'kode' => $row[2],
                        'butir_sikap' => $row[3]
                    ]);
                } else {
                    $cek_sikap->update([
                        'jenis_kompetensi' => $row[1],
                        'kode' => $row[2],
                        'butir_sikap' => $row[3]
                    ]);
                }
            }
        }
    }
}
