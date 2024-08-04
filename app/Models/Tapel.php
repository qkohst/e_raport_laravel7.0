<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\HasOne;

class Tapel extends Model
{
    protected $table = 'tapel';
    protected $fillable = [
        'tahun_pelajaran',
        'semester'
    ];

    public function kelas(): HasMany
    {
        return $this->hasMany(Kelas::class);
    }

    public function mapel(): HasMany
    {
        return $this->hasMany(Mapel::class);
    }

    public function ekstrakulikuler(): HasMany
    {
        return $this->hasMany(Ekstrakulikuler::class);
    }

    // Relasi K13
    public function k13_tgl_raport(): HasOne
    {
        return $this->hasOne(K13TglRaport::class);
    }

    // Relasi KTSP
    public function ktsp_tgl_raport(): HasOne
    {
        return $this->hasOne(KtspTglRaport::class);
    }
}
