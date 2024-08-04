<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class PrestasiSiswa extends Model
{
    protected $table = 'prestasi_siswa';
    protected $fillable = [
        'anggota_kelas_id',
        'jenis_prestasi',
        'deskripsi'
    ];

    public function anggota_kelas(): BelongsTo
    {
        return $this->belongsTo(AnggotaKelas::class);
    }
}
