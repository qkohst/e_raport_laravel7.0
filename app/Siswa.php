<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

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
    protected $dates = ['tanggal_lahir'];

    public function user()
    {
        return $this->belongsTo('App\User');
    }

    public function kelas()
    {
        return $this->belongsTo('App\Kelas');
    }

    public function anggota_kelas()
    {
        return $this->hasMany('App\AnggotaKelas');
    }

    public function siswa_keluar()
    {
        return $this->hasOne('App\SiswaKeluar');
    }
}
