<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class KtspTglRaport extends Model
{
    protected $table = 'ktsp_tgl_raport';
    protected $fillable = [
        'tapel_id',
        'tempat_penerbitan',
        'tanggal_pembagian',
    ];
    protected $dates = ['tanggal_pembagian'];

    public function tapel()
    {
        return $this->belongsTo('App\Tapel');
    }
}
