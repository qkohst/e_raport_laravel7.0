<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class KtspNilaiUh extends Model
{
    protected $table = 'ktsp_nilai_uh';
    protected $fillable = [
        'pembelajaran_id',
        'anggota_kelas_id',
        'nilai',
    ];

    public function pembelajaran()
    {
        return $this->belongsTo('App\Pembelajaran');
    }

    public function anggota_kelas()
    {
        return $this->belongsTo('App\AnggotaKelas');
    }
}
