<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class KtspNilaiUtsUas extends Model
{
    protected $table = 'ktsp_nilai_uts_uas';
    protected $fillable = [
        'pembelajaran_id',
        'anggota_kelas_id',
        'nilai_uts',
        'nilai_uas',
    ];

    public function pembelajaran()
    {
        return $this->belongsTo('App\Models\Pembelajaran');
    }

    public function anggota_kelas()
    {
        return $this->belongsTo('App\Models\AnggotaKelas');
    }
}
