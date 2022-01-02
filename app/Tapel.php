<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Tapel extends Model
{
    protected $table = 'tapel';
    protected $fillable = [
        'tahun_pelajaran',
        'semester'
    ];

    public function kelas()
    {
        return $this->hasMany('App\Kelas');
    }

    public function mapel()
    {
        return $this->hasMany('App\Mapel');
    }

    public function ekstrakulikuler()
    {
        return $this->hasMany('App\Ekstrakulikuler');
    }

    // Relasi K13
    public function k13_tgl_raport()
    {
        return $this->hasOne('App\K13TglRaport');
    }

    // Relasi KTSP
    public function ktsp_tgl_raport()
    {
        return $this->hasOne('App\KtspTglRaport');
    }
}
