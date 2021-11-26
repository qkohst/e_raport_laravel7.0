<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class K13KdMapel extends Model
{
    protected $table = 'k13_kd_mapel';
    protected $fillable = [
        'mapel_id',
        'tingkatan_kelas',
        'jenis_kompetensi',
        'semester',
        'kode_kd',
        'kompetensi_dasar',
        'ringkasan_kompetensi',
    ];

    public function mapel()
    {
        return $this->belongsTo('App\Mapel');
    }
}
