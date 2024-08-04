<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class CatatanWaliKelas extends Model
{
    protected $table = 'catatan_wali_kelas';
    protected $fillable = [
        'anggota_kelas_id',
        'catatan',
    ];

    public function anggota_kelas(): BelongsTo
    {
        return $this->belongsTo(AnggotaKelas::class);
    }
}
