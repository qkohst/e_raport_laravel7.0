<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class K13NilaiKeterampilan extends Model
{
    protected $table = 'k13_nilai_keterampilan';
    protected $fillable = [
        'k13_rencana_nilai_keterampilan_id',
        'anggota_kelas_id',
        'nilai',
    ];

    public function k13_rencana_nilai_keterampilan()
    {
        return $this->belongsTo('App\K13RencanaNilaiKeterampilan');
    }

    public function anggota_kelas()
    {
        return $this->belongsTo('App\AnggotaKelas');
    }
}
