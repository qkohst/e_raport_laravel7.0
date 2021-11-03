<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Tapel extends Model
{
    protected $table = 'tapel';
    protected $fillable = [
        'tahun_pelajaran',
        'semester'
    ];
}
