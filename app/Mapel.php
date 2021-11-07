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
}
