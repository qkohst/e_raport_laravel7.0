<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\HasOne;

class Mapel extends Model
{
    protected $table = 'mapel';
    protected $fillable = [
        'tapel_id',
        'nama_mapel',
        'ringkasan_mapel'
    ];

    public function tapel(): BelongsTo
    {
        return $this->belongsTo(Tapel::class);
    }

    public function pembelajaran(): HasMany
    {
        return $this->hasMany(Pembelajaran::class);
    }

    // Relasi K13
    public function k13_mapping_mapel(): HasOne
    {
        return $this->hasOne(K13MappingMapel::class);
    }

    public function k13_kkm_mapel(): HasOne
    {
        return $this->hasOne(K13KkmMapel::class);
    }

    public function k13_kd_mapel(): HasMany
    {
        return $this->hasMany(K13KdMapel::class);
    }

    // Relasi KTSP
    public function ktsp_mapping_mapel(): HasOne
    {
        return $this->hasOne(KtspMappingMapel::class);
    }

    public function ktsp_kkm_mapel(): HasOne
    {
        return $this->hasOne(KtspKkmMapel::class);
    }
}
