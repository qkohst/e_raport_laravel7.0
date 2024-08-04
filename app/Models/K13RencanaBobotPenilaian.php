<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class K13RencanaBobotPenilaian extends Model
{
    protected $table = 'k13_rencana_bobot_penilaian';
    protected $fillable = [
        'pembelajaran_id',
        'bobot_ph',
        'bobot_pts',
        'bobot_pas',
    ];

    public function pembelajaran()
    {
        return $this->belongsTo('App\Models\Pembelajaran');
    }
}
