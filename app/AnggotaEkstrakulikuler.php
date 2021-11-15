<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AnggotaEkstrakulikuler extends Model
{
    protected $table = 'anggota_ekstrakulikuler';
    protected $fillable = [
        'siswa_id',
        'ekstrakulikuler_id',
    ];

    public function siswa()
    {
        return $this->belongsTo('App\Siswa');
    }

    public function ekstrakulikuler()
    {
        return $this->belongsTo('App\Ekstrakulikuler');
    }
}
