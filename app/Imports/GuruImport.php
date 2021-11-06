<?php

namespace App\Imports;

use App\Guru;
use App\User;
use Illuminate\Support\Collection;
use Maatwebsite\Excel\Concerns\ToCollection;


class GuruImport implements ToCollection
{
    /**
     * @param array $row
     *
     * @return \Illuminate\Database\Eloquent\Model|null
     */
    public function collection(Collection $collection)
    {
        // dd($collection);
        foreach ($collection as $key => $row) {
            if ($key >= 8 && $key <= 30) {
                $user = User::create([
                    'username' => strtolower(str_replace(' ', '', $row[1])),
                    'password' => bcrypt('123456'),
                    'role' => 2,
                    'status' => true
                ]);

                $tanggal_lahir = ($row[6] - 25569) * 86400;
                Guru::create([
                    'user_id' => $user->id,
                    'nama_lengkap' => strtoupper($row[1]),
                    'gelar' => $row[2],
                    'nip' => $row[3],
                    'jenis_kelamin' => $row[4],
                    'tempat_lahir' => $row[5],
                    'tanggal_lahir' => gmdate('Y-m-d', $tanggal_lahir),
                    'nuptk' => $row[7],
                    'alamat' => $row[8],
                    'avatar' => 'default.png'
                ]);
            }
        }
    }
}
