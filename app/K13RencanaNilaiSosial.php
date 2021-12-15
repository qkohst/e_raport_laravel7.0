<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class K13RencanaNilaiSosial extends Model
{
    protected $table = 'k13_rencana_nilai_sosial';
    protected $fillable = [
        'pembelajaran_id',
        'k13_butir_sikap_id',
    ];

    public function pembelajaran()
    {
        return $this->belongsTo('App\Pembelajaran');
    }

    public function k13_butir_sikap()
    {
        return $this->belongsTo('App\K13ButirSikap');
    }

    public function k13_nilai_sosial()
    {
        return $this->hasMany('App\K13NilaiSosial');
    }
}
