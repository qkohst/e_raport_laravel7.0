<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class KtspNilaiAkhirRaport extends Model
{
    protected $table = 'ktsp_nilai_akhir_raport';
    protected $fillable = [
        'pembelajaran_id',
        'anggota_kelas_id',
        'kkm',
        'nilai_akhir',
        'predikat',
    ];

    public function pembelajaran()
    {
        return $this->belongsTo('App\Pembelajaran');
    }

    public function anggota_kelas()
    {
        return $this->belongsTo('App\AnggotaKelas');
    }

    public function ktsp_deskripsi_nilai_siswa()
    {
        return $this->hasOne('App\KtspDeskripsiNilaiSiswa');
    }
}
