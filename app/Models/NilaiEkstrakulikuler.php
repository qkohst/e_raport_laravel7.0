<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class NilaiEkstrakulikuler extends Model
{
    protected $table = 'nilai_ekstrakulikuler';
    protected $fillable = [
        'ekstrakulikuler_id',
        'anggota_ekstrakulikuler_id',
        'nilai',
        'deskripsi'
    ];

    public function ekstrakulikuler(): BelongsTo
    {
        return $this->belongsTo(Ekstrakulikuler::class);
    }

    public function anggota_ekstrakulikuler(): BelongsTo
    {
        return $this->belongsTo(AnggotaEkstrakulikuler::class);
    }
}
