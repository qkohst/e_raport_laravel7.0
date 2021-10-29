<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Admin extends Model
{
    protected $table = 'admin';
    protected $fillable = [
        'user_id',
        'nama_lengkap',
        'jenis_kelamin',
        'tanggal_lahir',
        'email',
        'nomor_hp',
        'avatar',
    ];

    public function user()
    {
        return $this->belongsTo('App\User');
    }
}
