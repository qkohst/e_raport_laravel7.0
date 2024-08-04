<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Admin extends Model
{
    protected $table = 'admin';
    protected $fillable = [
        'user_id',
        'nama_lengkap',
        'jenis_kelamin',
        'tanggal_lahir',
        'email',
        'nomor_hp',
        'avatar',
    ];

    public function user(): BelongsTo
    {
        return $this->belongsTo(User::class);
    }
}
