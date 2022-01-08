<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AnggotaKelas extends Model
{
    protected $table = 'anggota_kelas';
    protected $fillable = [
        'siswa_id',
        'kelas_id',
        'pendaftaran',
    ];

    public function siswa()
    {
        return $this->belongsTo('App\Siswa');
    }

    public function kelas()
    {
        return $this->belongsTo('App\Kelas');
    }

    public function anggota_ekstrakulikuler()
    {
        return $this->hasMany('App\AnggotaEkstrakulikuler');
    }

    public function kehadiran_siswa()
    {
        return $this->hasOne('App\KehadiranSiswa');
    }

    public function prestasi_siswa()
    {
        return $this->hasMany('App\PrestasiSiswa');
    }

    public function catatan_wali_kelas()
    {
        return $this->hasOne('App\CatatanWaliKelas');
    }

    public function kenaikan_kelas()
    {
        return $this->hasOne('App\KenaikanKelas');
    }


    // Relasi K13
    public function k13_nilai_pengetahuan()
    {
        return $this->hasOne('App\K13NilaiPengetahuan');
    }

    public function k13_nilai_keterampilan()
    {
        return $this->hasOne('App\K13NilaiKeterampilan');
    }

    public function k13_nilai_spiritual()
    {
        return $this->hasOne('App\K13NilaiSpiritual');
    }

    public function k13_nilai_sosial()
    {
        return $this->hasOne('App\K13NilaiSosial');
    }

    public function k13_nilai_pts_pas()
    {
        return $this->hasOne('App\K13NilaiPtsPas');
    }

    public function k13_nilai_akhir_raport()
    {
        return $this->hasMany('App\K13NilaiAkhirRaport');
    }

    public function k13_deskripsi_sikap_siswa()
    {
        return $this->hasOne('App\K13DeskripsiSikapSiswa');
    }

    // Relasi KTSP 
    public function ktsp_nilai_tugas()
    {
        return $this->hasOne('App\KtspNilaiTugas');
    }

    public function ktsp_nilai_uh()
    {
        return $this->hasOne('App\KtspNilaiUh');
    }

    public function anggota_kelas()
    {
        return $this->hasOne('App\AnggotaKelas');
    }

    public function ktsp_nilai_akhir_raport()
    {
        return $this->hasMany('App\KtspNilaiAkhirRaport');
    }
}
