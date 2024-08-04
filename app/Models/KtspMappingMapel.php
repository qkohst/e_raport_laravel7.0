<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class KtspMappingMapel extends Model
{
    protected $table = 'ktsp_mapping_mapel';
    protected $fillable = [
        'mapel_id',
        'kelompok',
        'nomor_urut',
    ];

    public function mapel()
    {
        return $this->belongsTo('App\Models\Mapel');
    }
}
