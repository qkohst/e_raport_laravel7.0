<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class K13RencanaNilaiKeterampilan extends Model
{
    protected $table = 'k13_rencana_nilai_keterampilan';
    protected $fillable = [
        'pembelajaran_id',
        'k13_kd_mapel_id',
        'kode_penilaian',
        'teknik_penilaian',
    ];

    public function pembelajaran()
    {
        return $this->belongsTo('App\Pembelajaran');
    }

    public function k13_kd_mapel()
    {
        return $this->belongsTo('App\K13KdMapel');
    }

    public function k13_nilai_keterampilan()
    {
        return $this->hasMany('App\K13NilaiKeterampilan');
    }
}
