<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class K13DeskripsiNilaiSiswa extends Model
{
    protected $table = 'k13_deskripsi_nilai_siswa';
    protected $fillable = [
        'pembelajaran_id',
        'k13_nilai_akhir_raport_id',
        'deskripsi_pengetahuan',
        'deskripsi_keterampilan'
    ];

    public function pembelajaran()
    {
        return $this->belongsTo('App\Pembelajaran');
    }

    public function k13_nilai_akhir_raport()
    {
        return $this->belongsTo('App\K13NilaiAkhirRaport');
    }
}
