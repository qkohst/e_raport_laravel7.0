<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\HasOne;

class AnggotaKelas extends Model
{
    protected $table = 'anggota_kelas';
    protected $fillable = [
        'siswa_id',
        'kelas_id',
        'pendaftaran',
    ];

    public function siswa(): BelongsTo
    {
        return $this->belongsTo(Siswa::class);
    }

    public function kelas(): BelongsTo
    {
        return $this->belongsTo(Kelas::class);
    }

    public function anggota_ekstrakulikuler(): HasMany
    {
        return $this->hasMany(AnggotaEkstrakulikuler::class);
    }

    public function kehadiran_siswa(): HasOne
    {
        return $this->hasOne(KehadiranSiswa::class);
    }

    public function prestasi_siswa(): HasMany
    {
        return $this->hasMany(PrestasiSiswa::class);
    }

    public function catatan_wali_kelas(): HasOne
    {
        return $this->hasOne(CatatanWaliKelas::class);
    }

    public function kenaikan_kelas(): HasOne
    {
        return $this->hasOne(KenaikanKelas::class);
    }


    // Relasi K13
    public function k13_nilai_pengetahuan(): HasOne
    {
        return $this->hasOne(K13NilaiPengetahuan::class);
    }

    public function k13_nilai_keterampilan(): HasOne
    {
        return $this->hasOne(K13NilaiKeterampilan::class);
    }

    public function k13_nilai_spiritual(): HasOne
    {
        return $this->hasOne(K13NilaiSpiritual::class);
    }

    public function k13_nilai_sosial(): HasOne
    {
        return $this->hasOne(K13NilaiSosial::class);
    }

    public function k13_nilai_pts_pas(): HasOne
    {
        return $this->hasOne(K13NilaiPtsPas::class);
    }

    public function k13_nilai_akhir_raport(): HasMany
    {
        return $this->hasMany(K13NilaiAkhirRaport::class);
    }

    public function k13_deskripsi_sikap_siswa(): HasOne
    {
        return $this->hasOne(K13DeskripsiSikapSiswa::class);
    }

    // Relasi KTSP
    public function ktsp_nilai_tugas(): HasOne
    {
        return $this->hasOne(KtspNilaiTugas::class);
    }

    public function ktsp_nilai_uh(): HasOne
    {
        return $this->hasOne(KtspNilaiUh::class);
    }

    public function anggota_kelas(): HasOne
    {
        return $this->hasOne(AnggotaKelas::class);
    }

    public function ktsp_nilai_akhir_raport(): HasMany
    {
        return $this->hasMany(KtspNilaiAkhirRaport::class);
    }
}
