<?php

namespace App\Models;

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
        return $this->belongsTo('App\Models\Tapel');
    }

    public function guru()
    {
        return $this->belongsTo('App\Models\Guru');
    }

    public function siswa()
    {
        return $this->hasMany('App\Models\Siswa');
    }

    public function anggota_kelas()
    {
        return $this->hasMany('App\Models\AnggotaKelas');
    }

    public function pembelajaran()
    {
        return $this->hasMany('App\Models\Pembelajaran');
    }

    // Relasi K13
    public function k13_kkm_mapel()
    {
        return $this->hasOne('App\Models\K13KkmMapel');
    }

    // Relasi KTSP
    public function ktsp_kkm_mapel()
    {
        return $this->hasOne('App\Models\KtspKkmMapel');
    }
}
