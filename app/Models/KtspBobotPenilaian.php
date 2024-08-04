<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class KtspBobotPenilaian extends Model
{
    protected $table = 'ktsp_bobot_penilaian';
    protected $fillable = [
        'pembelajaran_id',
        'bobot_tugas',
        'bobot_uh',
        'bobot_uts',
        'bobot_uas',
    ];

    public function pembelajaran()
    {
        return $this->belongsTo('App\Models\Pembelajaran');
    }
}
