<?php

namespace App;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

class User extends Authenticatable
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $table = 'user';
    protected $fillable = [
        'username', 'password', 'role', 'status',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    // Relasi 
    public function admin()
    {
        return $this->hasOne('App\Admin');
    }

    public function guru()
    {
        return $this->hasOne('App\Guru');
    }

    public function siswa()
    {
        return $this->hasOne('App\Siswa');
    }

    public function pengumuman()
    {
        return $this->hasMany('App\Pengumuman');
    }
}
