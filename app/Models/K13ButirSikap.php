<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class K13ButirSikap extends Model
{
    protected $table = 'k13_butir_sikap';
    protected $fillable = [
        'jenis_kompetensi',
        'kode',
        'butir_sikap',
    ];

    public function k13_rencana_nilai_spiritual()
    {
        return $this->hasMany('App\Models\K13RencanaNilaiSpiritual');
    }

    public function k13_rencana_nilai_sosial()
    {
        return $this->hasMany('App\Models\K13RencanaNilaiSosial');
    }
}
