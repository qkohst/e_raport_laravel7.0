<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class KehadiranSiswa extends Model
{
    protected $table = 'kehadiran_siswa';
    protected $fillable = [
        'anggota_kelas_id',
        'sakit',
        'izin',
        'tanpa_keterangan'
    ];

    public function anggota_kelas()
    {
        return $this->belongsTo('App\AnggotaKelas');
    }
}
