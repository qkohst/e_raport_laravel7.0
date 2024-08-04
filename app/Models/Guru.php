<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Guru extends Model
{
    protected $table = 'guru';
    protected $fillable = [
        'user_id',
        'nama_lengkap',
        'gelar',
        'nip',
        'jenis_kelamin',
        'tempat_lahir',
        'tanggal_lahir',
        'nuptk',
        'alamat',
        'avatar',
    ];

    public function user()
    {
        return $this->belongsTo('App\Models\User');
    }

    public function kelas()
    {
        return $this->hasMany('App\Models\Kelas');
    }

    public function pembelajaran()
    {
        return $this->hasMany('App\Models\Pembelajaran');
    }

    public function ekstrakulikuler()
    {
        return $this->hasMany('App\Models\Ekstrakulikuler');
    }
}
