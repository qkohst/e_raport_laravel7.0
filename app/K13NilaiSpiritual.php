<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class K13NilaiSpiritual extends Model
{
    protected $table = 'k13_nilai_spiritual';
    protected $fillable = [
        'k13_rencana_nilai_spiritual_id',
        'anggota_kelas_id',
        'nilai',
    ];

    public function k13_rencana_nilai_spiritual()
    {
        return $this->belongsTo('App\K13RencanaNilaiSpiritual');
    }

    public function anggota_kelas()
    {
        return $this->belongsTo('App\AnggotaKelas');
    }
}
