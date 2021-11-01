<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Sekolah extends Model
{
    protected $table = 'sekolah';
    protected $fillable = [
        'nama_sekolah',
        'npsn',
        'nss',
        'kode_pos',
        'nomor_telpon',
        'alamat',
        'website',
        'email',
        'logo',
        'kepala_sekolah',
        'nip_kepala_sekolah',
    ];
}
