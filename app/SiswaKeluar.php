<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class SiswaKeluar extends Model
{
    protected $table = 'siswa_keluar';
    protected $fillable = [
        'siswa_id',
        'keluar_karena',
        'tanggal_keluar',
        'alasan_keluar'
    ];

    public function siswa()
    {
        return $this->belongsTo('App\Siswa');
    }
}
