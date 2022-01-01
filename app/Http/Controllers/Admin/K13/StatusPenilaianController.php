<?php

namespace App\Http\Controllers\Admin\K13;

use App\Http\Controllers\Controller;
use App\K13DeskripsiNilaiSiswa;
use App\K13NilaiAkhirRaport;
use App\K13NilaiKeterampilan;
use App\K13NilaiPengetahuan;
use App\K13NilaiPtsPas;
use App\K13NilaiSosial;
use App\K13NilaiSpiritual;
use App\K13RencanaBobotPenilaian;
use App\K13RencanaNilaiKeterampilan;
use App\K13RencanaNilaiPengetahuan;
use App\K13RencanaNilaiSosial;
use App\K13RencanaNilaiSpiritual;
use App\Kelas;
use App\Pembelajaran;
use App\Tapel;
use Illuminate\Http\Request;

class StatusPenilaianController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $title = 'Status Penilaian';
        $data_kelas = Kelas::where('tapel_id', session()->get('tapel_id'))->get();
        return view('admin.k13.statuspenilaian.pilihkelas', compact('title', 'data_kelas'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $title = 'Hasil Pengelolaan Nilai';
        $tapel = Tapel::findorfail(session()->get('tapel_id'));
        $data_kelas = Kelas::where('tapel_id', $tapel->id)->get();

        $kelas = Kelas::findorfail($request->kelas_id);

        $data_pembelajaran_kelas = Pembelajaran::where('kelas_id', $kelas->id)->where('status', 1)->get();
        foreach ($data_pembelajaran_kelas as $pembelajaran) {

            $rencana_pengetahuan = K13RencanaNilaiPengetahuan::where('pembelajaran_id', $pembelajaran->id)->first();
            if (is_null($rencana_pengetahuan)) {
                $pembelajaran->rencana_pengetahuan = 0;
                $pembelajaran->nilai_pengetahuan = 0;
            } else {
                $pembelajaran->rencana_pengetahuan = 1;
                $nilai_pengetahuan = K13NilaiPengetahuan::where('k13_rencana_nilai_pengetahuan_id', $rencana_pengetahuan->id)->first();
                if (is_null($nilai_pengetahuan)) {
                    $pembelajaran->nilai_pengetahuan = 0;
                } else {
                    $pembelajaran->nilai_pengetahuan = 1;
                }
            }

            $rencana_keterampilan = K13RencanaNilaiKeterampilan::where('pembelajaran_id', $pembelajaran->id)->first();
            if (is_null($rencana_keterampilan)) {
                $pembelajaran->rencana_keterampilan = 0;
                $pembelajaran->nilai_keterampilan = 0;
            } else {
                $pembelajaran->rencana_keterampilan = 1;
                $nilai_keterampilan = K13NilaiKeterampilan::where('k13_rencana_nilai_keterampilan_id', $rencana_keterampilan->id)->first();
                if (is_null($nilai_keterampilan)) {
                    $pembelajaran->nilai_keterampilan = 0;
                } else {
                    $pembelajaran->nilai_keterampilan = 1;
                }
            }

            $rencana_spiritual = K13RencanaNilaiSpiritual::where('pembelajaran_id', $pembelajaran->id)->first();
            if (is_null($rencana_spiritual)) {
                $pembelajaran->rencana_spiritual = 0;
                $pembelajaran->nilai_spiritual = 0;
            } else {
                $pembelajaran->rencana_spiritual = 1;
                $nilai_spiritual = K13NilaiSpiritual::where('k13_rencana_nilai_spiritual_id', $rencana_spiritual->id)->first();
                if (is_null($nilai_spiritual)) {
                    $pembelajaran->nilai_spiritual = 0;
                } else {
                    $pembelajaran->nilai_spiritual = 1;
                }
            }

            $rencana_sosial = K13RencanaNilaiSosial::where('pembelajaran_id', $pembelajaran->id)->first();
            if (is_null($rencana_sosial)) {
                $pembelajaran->rencana_sosial = 0;
                $pembelajaran->nilai_sosial = 0;
            } else {
                $pembelajaran->rencana_sosial = 1;
                $nilai_sosial = K13NilaiSosial::where('k13_rencana_nilai_sosial_id', $rencana_sosial->id)->first();
                if (is_null($nilai_sosial)) {
                    $pembelajaran->nilai_sosial = 0;
                } else {
                    $pembelajaran->nilai_sosial = 1;
                }
            }

            $rencana_bobot = K13RencanaBobotPenilaian::where('pembelajaran_id', $pembelajaran->id)->first();
            if (is_null($rencana_bobot)) {
                $pembelajaran->rencana_bobot = 0;
            } else {
                $pembelajaran->rencana_bobot = 1;
            }

            $pts_pas = K13NilaiPtsPas::where('pembelajaran_id', $pembelajaran->id)->first();
            if (is_null($pts_pas)) {
                $pembelajaran->pts_pas = 0;
            } else {
                $pembelajaran->pts_pas = 1;
            }

            $nilai_akhir = K13NilaiAkhirRaport::where('pembelajaran_id', $pembelajaran->id)->first();
            if (is_null($nilai_akhir)) {
                $pembelajaran->nilai_akhir = 0;
            } else {
                $pembelajaran->nilai_akhir = 1;
            }

            $deskripsi = K13DeskripsiNilaiSiswa::where('pembelajaran_id', $pembelajaran->id)->first();
            if (is_null($deskripsi)) {
                $pembelajaran->deskripsi = 0;
            } else {
                $pembelajaran->deskripsi = 1;
            }
        }
        return view('admin.k13.statuspenilaian.index', compact('title', 'kelas', 'data_kelas', 'data_pembelajaran_kelas'));
    }
}
