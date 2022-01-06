<?php

namespace App\Imports;

use App\Siswa;
use App\User;
use Illuminate\Support\Collection;
use Maatwebsite\Excel\Concerns\ToCollection;

class SiswaImport implements ToCollection
{
    /**
     * @param array $row
     *
     * @return \Illuminate\Database\Eloquent\Model|null
     */
    public function collection(Collection $collection)
    {
        foreach ($collection as $key => $row) {
            if ($key >= 8 && $key <= 300) {
                $user = User::create([
                    'username' => strtolower(str_replace(' ', '', $row[3] . $row[1])),
                    'password' => bcrypt('123456'),
                    'role' => 3,
                    'status' => true
                ]);

                $tanggal_lahir = ($row[5] - 25569) * 86400;
                Siswa::create([
                    'user_id' => $user->id,
                    'nis' => $row[1],
                    'nisn' => $row[2],
                    'nama_lengkap' => strtoupper($row[3]),
                    'tempat_lahir' => $row[4],
                    'tanggal_lahir' => gmdate('Y-m-d', $tanggal_lahir),
                    'jenis_kelamin' => $row[6],
                    'jenis_pendaftaran' => $row[7],
                    'agama' => $row[8],
                    'status_dalam_keluarga' => $row[9],
                    'anak_ke' => $row[10],
                    'alamat' => $row[11],
                    'nomor_hp' => $row[12],
                    'nama_ayah' => $row[13],
                    'nama_ibu' => $row[14],
                    'pekerjaan_ayah' => $row[15],
                    'pekerjaan_ibu' => $row[16],
                    'nama_wali' => $row[17],
                    'pekerjaan_wali' => $row[18],
                    'avatar' => 'default.png',
                    'status' => 1,
                ]);
            }
        }
    }
}
