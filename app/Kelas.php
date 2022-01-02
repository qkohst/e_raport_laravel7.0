<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Kelas extends Model
{
    protected $table = 'kelas';
    protected $fillable = [
        'tapel_id',
        'guru_id',
        'tingkatan_kelas',
        'nama_kelas',
    ];

    public function tapel()
    {
        return $this->belongsTo('App\Tapel');
    }

    public function guru()
    {
        return $this->belongsTo('App\Guru');
    }

    public function siswa()
    {
        return $this->hasMany('App\Siswa');
    }

    public function anggota_kelas()
    {
        return $this->hasMany('App\AnggotaKelas');
    }

    public function pembelajaran()
    {
        return $this->hasMany('App\Pembelajaran');
    }

    // Relasi K13
    public function k13_kkm_mapel()
    {
        return $this->hasOne('App\K13KkmMapel');
    }

    // Relasi KTSP
    public function ktsp_kkm_mapel()
    {
        return $this->hasOne('App\KtspKkmMapel');
    }
}
