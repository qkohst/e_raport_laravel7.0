<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class K13NilaiSosial extends Model
{
    protected $table = 'k13_nilai_sosial';
    protected $fillable = [
        'k13_rencana_nilai_sosial_id',
        'siswa_id',
        'nilai',
    ];

    public function k13_rencana_nilai_sosial()
    {
        return $this->belongsTo('App\K13RencanaNilaiSosial');
    }

    public function siswa()
    {
        return $this->belongsTo('App\Siswa');
    }
}
