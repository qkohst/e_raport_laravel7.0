<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Ekstrakulikuler extends Model
{
    protected $table = 'ekstrakulikuler';
    protected $fillable = [
        'tapel_id',
        'pembina_id',
        'nama_ekstrakulikuler'
    ];

    public function tapel()
    {
        return $this->belongsTo('App\Models\Tapel');
    }

    public function pembina()
    {
        return $this->belongsTo('App\Models\Guru');
    }

    public function anggota_ekstrakulikuler()
    {
        return $this->hasMany('App\Models\AnggotaEkstrakulikuler');
    }

    public function nilai_ekstrakulikuler()
    {
        return $this->hasMany('App\Models\NilaiEkstrakulikuler');
    }
}
