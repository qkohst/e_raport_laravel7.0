<?php

namespace App;

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
        return $this->belongsTo('App\Pembelajaran');
    }

    public function ktsp_nilai_akhir_raport()
    {
        return $this->belongsTo('App\KtspNilaiAkhirRaport');
    }
}
