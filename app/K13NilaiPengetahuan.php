<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class K13NilaiPengetahuan extends Model
{
    protected $table = 'k13_nilai_pengetahuan';
    protected $fillable = [
        'k13_rencana_nilai_pengetahuan_id',
        'siswa_id',
        'nilai',
    ];

    public function k13_rencana_nilai_pengetahuan()
    {
        return $this->belongsTo('App\K13RencanaNilaiPengetahuan');
    }

    public function siswa()
    {
        return $this->belongsTo('App\Siswa');
    }
}
