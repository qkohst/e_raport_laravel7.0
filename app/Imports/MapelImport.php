<?php

namespace App\Imports;

use App\Mapel;
use App\Tapel;
use Illuminate\Support\Collection;
use Maatwebsite\Excel\Concerns\ToCollection;

class MapelImport implements ToCollection
{
    /**
     * @param array $row
     *
     * @return \Illuminate\Database\Eloquent\Model|null
     */
    public function collection(Collection $collection)
    {
        $tapel = Tapel::orderBy('id', 'DESC')->limit(1)->first();

        foreach ($collection as $key => $row) {
            if ($key >= 8 && $key <= 30) {
                Mapel::create([
                    'tapel_id' => $tapel->id,
                    'nama_mapel' => $row[1],
                    'ringkasan_mapel' => $row[2]
                ]);
            }
        }
    }
}
