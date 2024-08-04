<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class K13RencanaNilaiPengetahuan extends Model
{
    protected $table = 'k13_rencana_nilai_pengetahuan';
    protected $fillable = [
        'pembelajaran_id',
        'k13_kd_mapel_id',
        'kode_penilaian',
        'teknik_penilaian',
        'bobot_teknik_penilaian',
    ];

    public function pembelajaran()
    {
        return $this->belongsTo('App\Models\Pembelajaran');
    }

    public function k13_kd_mapel()
    {
        return $this->belongsTo('App\Models\K13KdMapel');
    }

    public function k13_nilai_pengetahuan()
    {
        return $this->hasMany('App\Models\K13NilaiPengetahuan');
    }
}
