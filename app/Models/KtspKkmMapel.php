<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class KtspKkmMapel extends Model
{
    protected $table = 'ktsp_kkm_mapel';
    protected $fillable = [
        'mapel_id',
        'kelas_id',
        'kkm',
    ];

    public function mapel()
    {
        return $this->belongsTo('App\Models\Mapel');
    }

    public function kelas()
    {
        return $this->belongsTo('App\Models\Kelas');
    }
}
