<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CatatanWaliKelas extends Model
{
    protected $table = 'catatan_wali_kelas';
    protected $fillable = [
        'anggota_kelas_id',
        'catatan',
    ];

    public function anggota_kelas()
    {
        return $this->belongsTo('App\AnggotaKelas');
    }
}
