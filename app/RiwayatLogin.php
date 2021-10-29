<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class RiwayatLogin extends Model
{
    protected $table = 'riwayat_login';
    protected $fillable = [
        'user_id',
        'status_login'
    ];

    public function user()
    {
        return $this->belongsTo('App\User');
    }

    public function riwayat_login()
    {
        return $this->hasOne('App\RiwayatLogin');
    }
}
