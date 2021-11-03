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
}