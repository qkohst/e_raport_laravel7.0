<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class KtspDeskripsiNilaiSiswa extends Model
{
    protected $table = 'ktsp_deskripsi_nilai_siswa';
    protected $fillable = [
        'pembelajaran_id',
        'ktsp_nilai_akhir_raport_id',
        'deskripsi'
    ];

    public function pembelajaran()
    {
        return $this->belongsTo('App\Models\Pembelajaran');
    }

    public function ktsp_nilai_akhir_raport()
    {
        return $this->belongsTo('App\Models\KtspNilaiAkhirRaport');
    }
}
