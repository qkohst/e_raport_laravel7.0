<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasOne;

class AnggotaEkstrakulikuler extends Model
{
    protected $table = 'anggota_ekstrakulikuler';
    protected $fillable = [
        'anggota_kelas_id',
        'ekstrakulikuler_id',
    ];

    public function anggota_kelas(): BelongsTo
    {
        return $this->belongsTo(AnggotaKelas::class);
    }

    public function ekstrakulikuler(): BelongsTo
    {
        return $this->belongsTo(Ekstrakulikuler::class);
    }

    public function nilai_ekstrakulikuler(): HasOne
    {
        return $this->hasOne(NilaiEkstrakulikuler::class);
    }
}
