<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Pengumuman extends Model
{
    protected $table = 'pengumuman';
    protected $fillable = [
        'user_id',
        'judul',
        'isi'
    ];

    public function user(): BelongsTo
    {
        return $this->belongsTo(User::class);
    }
}
