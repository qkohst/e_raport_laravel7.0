<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class K13NilaiSosial extends Model
{
    protected $table = 'k13_nilai_sosial';
    protected $fillable = [
        'k13_rencana_nilai_sosial_id',
        'anggota_kelas_id',
        'nilai',
    ];

    public function k13_rencana_nilai_sosial()
    {
        return $this->belongsTo('App\K13RencanaNilaiSosial');
    }

    public function anggota_kelas()
    {
        return $this->belongsTo('App\AnggotaKelas');
    }
}
