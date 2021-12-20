<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class K13NilaiAkhirRaport extends Model
{
    protected $table = 'k13_nilai_akhir_raport';
    protected $fillable = [
        'pembelajaran_id',
        'anggota_kelas_id',
        'kkm',
        'nilai_pengetahuan',
        'predikat_pengetahuan',
        'nilai_keterampilan',
        'predikat_keterampilan',
        'nilai_spiritual',
        'nilai_sosial',
    ];

    public function pembelajaran()
    {
        return $this->belongsTo('App\Pembelajaran');
    }

    public function anggota_kelas()
    {
        return $this->belongsTo('App\AnggotaKelas');
    }

    public function k13_deskripsi_nilai_siswa()
    {
        return $this->hasOne('App\K13DeskripsiNilaiSiswa');
    }
}
