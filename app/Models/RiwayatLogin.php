<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasOne;

class RiwayatLogin extends Model
{
    protected $table = 'riwayat_login';
    protected $fillable = [
        'user_id',
        'status_login'
    ];

    public function user(): BelongsTo
    {
        return $this->belongsTo(User::class);
    }

    public function riwayat_login(): HasOne
    {
        return $this->hasOne(RiwayatLogin::class);
    }
}
