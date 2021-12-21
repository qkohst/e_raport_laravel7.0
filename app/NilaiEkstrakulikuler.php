<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class NilaiEkstrakulikuler extends Model
{
    protected $table = 'nilai_ekstrakulikuler';
    protected $fillable = [
        'ekstrakulikuler_id',
        'anggota_ekstrakulikuler_id',
        'nilai',
        'deskripsi'
    ];

    public function ekstrakulikuler()
    {
        return $this->belongsTo('App\Ekstrakulikuler');
    }

    public function anggota_ekstrakulikuler()
    {
        return $this->belongsTo('App\AnggotaEkstrakulikuler');
    }
}
