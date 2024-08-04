<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\HasOne;

class Pembelajaran extends Model
{
    protected $table = 'pembelajaran';
    protected $fillable = [
        'kelas_id',
        'mapel_id',
        'guru_id',
        'status'
    ];

    public function kelas(): BelongsTo
    {
        return $this->belongsTo(Kelas::class);
    }

    public function mapel(): BelongsTo
    {
        return $this->belongsTo(Mapel::class);
    }

    public function guru(): BelongsTo
    {
        return $this->belongsTo(Guru::class);
    }

    // Relasi K13
    public function k13_rencana_nilai_pengetahuan(): HasMany
    {
        return $this->hasMany(K13RencanaNilaiPengetahuan::class);
    }

    public function k13_rencana_nilai_keterampilan(): HasMany
    {
        return $this->hasMany(K13RencanaNilaiKeterampilan::class);
    }

    public function k13_rencana_nilai_spiritual(): HasMany
    {
        return $this->hasMany(K13RencanaNilaiSpiritual::class);
    }

    public function k13_rencana_nilai_sosial(): HasMany
    {
        return $this->hasMany(K13RencanaNilaiSosial::class);
    }

    public function k13_rencana_bobot_penilaian(): HasOne
    {
        return $this->hasOne(K13RencanaBobotPenilaian::class);
    }

    public function k13_nilai_pts_pas(): HasMany
    {
        return $this->hasMany(K13NilaiPtsPas::class);
    }

    public function k13_nilai_akhir_raport(): HasMany
    {
        return $this->hasMany(K13NilaiAkhirRaport::class);
    }

    public function k13_deskripsi_nilai_siswa(): HasMany
    {
        return $this->hasMany(K13DeskripsiNilaiSiswa::class);
    }

    // Relasi KTSP
    public function ktsp_bobot_penilaian(): HasOne
    {
        return $this->hasOne(KtspBobotPenilaian::class);
    }

    public function ktsp_nilai_tugas(): HasMany
    {
        return $this->hasMany(KtspNilaiTugas::class);
    }

    public function ktsp_nilai_uh(): HasMany
    {
        return $this->hasMany(KtspNilaiUh::class);
    }

    public function ktsp_nilai_uts_uas(): HasMany
    {
        return $this->hasMany(KtspNilaiUtsUas::class);
    }

    public function ktsp_nilai_akhir_raport(): HasMany
    {
        return $this->hasMany(KtspNilaiAkhirRaport::class);
    }

    public function ktsp_deskripsi_nilai_siswa(): HasMany
    {
        return $this->hasMany(KtspDeskripsiNilaiSiswa::class);
    }
}
