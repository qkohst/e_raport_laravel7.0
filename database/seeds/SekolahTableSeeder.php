<?php

use App\Sekolah;
use Illuminate\Database\Seeder;

class SekolahTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Sekolah::create([
            'nama_sekolah' => 'SEKOLAH INDONESIA',
            'npsn' => '0000000000',
            'kode_pos' => '62001',
            'alamat' => 'Jl. Indonesia Merdeka',
            'logo' => 'default.png',
            'kepala_sekolah' => 'SOEKARNO',
        ]);
    }
}
