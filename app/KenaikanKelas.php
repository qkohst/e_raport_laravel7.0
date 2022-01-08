<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class KenaikanKelas extends Model
{
    protected $table = 'kenaikan_kelas';
    protected $fillable = [
        'anggota_kelas_id',
        'keputusan',
        'kelas_tujuan',
    ];

    public function anggota_kelas()
    {
        return $this->belongsTo('App\AnggotaKelas');
    }
}
