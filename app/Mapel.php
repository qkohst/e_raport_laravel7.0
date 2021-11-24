<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Mapel extends Model
{
    protected $table = 'mapel';
    protected $fillable = [
        'tapel_id',
        'nama_mapel',
        'ringkasan_mapel'
    ];

    public function tapel()
    {
        return $this->belongsTo('App\Tapel');
    }

    public function pembelajaran()
    {
        return $this->hasMany('App\Pembelajaran');
    }

    public function k13_mapping_mapel()
    {
        return $this->hasOne('App\K13MappingMapel');
    }

    public function k13_kkm_mapel()
    {
        return $this->hasOne('App\K13KkmMapel');
    }
}
