<?php

namespace App\Http\Controllers;

use App\AnggotaEkstrakulikuler;
use App\AnggotaKelas;
use App\Kelas;
use App\Pembelajaran;
use Illuminate\Http\Request;

class AjaxController extends Controller
{
    public function ajax_kelas($id)
    {
        $data_kelas = Pembelajaran::whereNotNull('guru_id')->where('mapel_id', $id)->where('status', true)->get('kelas_id');
        foreach ($data_kelas as $kelas) {
            $kls = Kelas::findorfail($kelas->kelas_id);
            $kelas->tingkatan_kelas = $kls->tingkatan_kelas;
            $kelas->nama_kelas = $kls->nama_kelas;
        }
        // dd($data_kelas);
        return json_encode($data_kelas, true);
    }

    public function ajax_kelas_ekstra($id)
    {
        $id_anggota_kelas = AnggotaEkstrakulikuler::where('ekstrakulikuler_id', $id)->get('anggota_kelas_id');
        $id_kelas = AnggotaKelas::whereIn('id', $id_anggota_kelas)->get('kelas_id');
        $data_kelas = Kelas::whereIn('id', $id_kelas)->get();

        return json_encode($data_kelas, true);
    }
}
