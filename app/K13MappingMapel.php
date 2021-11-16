<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class K13MappingMapel extends Model
{
    protected $table = 'k13_mapping_mapel';
    protected $fillable = [
        'mapel_id',
        'kelompok',
        'nomor_urut',
    ];

    public function mapel()
    {
        return $this->belongsTo('App\Mapel');
    }
}
