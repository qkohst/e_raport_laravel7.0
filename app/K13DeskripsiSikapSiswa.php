<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class K13DeskripsiSikapSiswa extends Model
{
    protected $table = 'k13_deskripsi_sikap_siswa';
    protected $fillable = [
        'anggota_kelas_id',
        'nilai_spiritual',
        'deskripsi_spiritual',
        'nilai_sosial',
        'deskripsi_sosial',
    ];

    public function anggota_kelas()
    {
        return $this->belongsTo('App\AnggotaKelas');
    }
}
