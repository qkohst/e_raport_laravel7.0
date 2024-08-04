<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class SiswaKeluar extends Model
{
    protected $table = 'siswa_keluar';
    protected $fillable = [
        'siswa_id',
        'keluar_karena',
        'tanggal_keluar',
        'alasan_keluar'
    ];

    public function siswa(): BelongsTo
    {
        return $this->belongsTo(Siswa::class);
    }
}
