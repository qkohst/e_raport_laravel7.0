<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AnggotaKelas extends Model
{
    protected $table = 'anggota_kelas';
    protected $fillable = [
        'siswa_id',
        'kelas_id',
        'pendaftaran',
    ];

    public function siswa()
    {
        return $this->belongsTo('App\Siswa');
    }

    public function kelas()
    {
        return $this->belongsTo('App\Kelas');
    }

    public function k13_nilai_pengetahuan()
    {
        return $this->hasOne('App\K13NilaiPengetahuan');
    }

    public function k13_nilai_keterampilan()
    {
        return $this->hasOne('App\K13NilaiKeterampilan');
    }

    public function k13_nilai_spiritual()
    {
        return $this->hasOne('App\K13NilaiSpiritual');
    }

    public function k13_nilai_sosial()
    {
        return $this->hasOne('App\K13NilaiSosial');
    }

    public function k13_nilai_pts_pas()
    {
        return $this->hasOne('App\K13NilaiPtsPas');
    }

    public function k13_nilai_akhir_raport()
    {
        return $this->hasMany('App\K13NilaiAkhirRaport');
    }
}
