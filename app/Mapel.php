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

    // Relasi K13 
    public function k13_mapping_mapel()
    {
        return $this->hasOne('App\K13MappingMapel');
    }

    public function k13_kkm_mapel()
    {
        return $this->hasOne('App\K13KkmMapel');
    }

    public function k13_kd_mapel()
    {
        return $this->hasMany('App\K13KdMapel');
    }

    // Relasi KTSP
    public function ktsp_mapping_mapel()
    {
        return $this->hasOne('App\KtspMappingMapel');
    }
    public function ktsp_kkm_mapel()
    {
        return $this->hasOne('App\KtspKkmMapel');
    }
}
