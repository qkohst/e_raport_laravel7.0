<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pembelajaran extends Model
{
    protected $table = 'pembelajaran';
    protected $fillable = [
        'kelas_id',
        'mapel_id',
        'guru_id',
        'status'
    ];

    public function kelas()
    {
        return $this->belongsTo('App\Kelas');
    }

    public function mapel()
    {
        return $this->belongsTo('App\Mapel');
    }

    public function guru()
    {
        return $this->belongsTo('App\Guru');
    }

    public function k13_rencana_nilai_pengetahuan()
    {
        return $this->hasMany('App\K13RencanaNilaiPengetahuan');
    }

    public function k13_rencana_nilai_keterampilan()
    {
        return $this->hasMany('App\K13RencanaNilaiKeterampilan');
    }
}
