<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\HasOne;

class Siswa extends Model
{
    protected $table = 'siswa';
    protected $fillable = [
        'user_id',
        'kelas_id',
        'jenis_pendaftaran',
        'nis',
        'nisn',
        'nama_lengkap',
        'tempat_lahir',
        'tanggal_lahir',
        'jenis_kelamin',
        'agama',
        'status_dalam_keluarga',
        'anak_ke',
        'alamat',
        'nomor_hp',
        'nama_ayah',
        'nama_ibu',
        'pekerjaan_ayah',
        'pekerjaan_ibu',
        'nama_wali',
        'pekerjaan_wali',
        'avatar',
        'status'
    ];

    protected function casts(): array
    {
        return [
            'tanggal_lahir' => 'datetime',
        ];
    }

    public function user(): BelongsTo
    {
        return $this->belongsTo(User::class);
    }

    public function kelas(): BelongsTo
    {
        return $this->belongsTo(Kelas::class);
    }

    public function anggota_kelas(): HasMany
    {
        return $this->hasMany(AnggotaKelas::class);
    }

    public function siswa_keluar(): HasOne
    {
        return $this->hasOne(SiswaKeluar::class);
    }
}
