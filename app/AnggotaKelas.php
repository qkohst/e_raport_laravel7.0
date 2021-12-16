<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AnggotaKelas extends Model
{
    protected $table = 'anggota_kelas';
    protected $fillable = [
        'siswa_id',
        'kelas_id',
        'pendaftaran',
    ];

    public function siswa()
    {
        return $this->belongsTo('App\Siswa');
    }

    public function kelas()
    {
        return $this->belongsTo('App\Kelas');
    }

    public function k13_nilai_pts_pas()
    {
        return $this->hasOne('App\K13NilaiPtsPas');
    }
}
