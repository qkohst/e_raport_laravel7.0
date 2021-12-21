<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AnggotaEkstrakulikuler extends Model
{
    protected $table = 'anggota_ekstrakulikuler';
    protected $fillable = [
        'anggota_kelas_id',
        'ekstrakulikuler_id',
    ];

    public function anggota_kelas()
    {
        return $this->belongsTo('App\AnggotaKelas');
    }

    public function ekstrakulikuler()
    {
        return $this->belongsTo('App\Ekstrakulikuler');
    }

    public function nilai_ekstrakulikuler()
    {
        return $this->hasOne('App\NilaiEkstrakulikuler');
    }
}
