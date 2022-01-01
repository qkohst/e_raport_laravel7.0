<?php

namespace App\Http\Controllers\Admin\K13;

use App\AnggotaKelas;
use App\Http\Controllers\Controller;
use App\K13NilaiAkhirRaport;
use App\Kelas;
use App\Mapel;
use App\Pembelajaran;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class NilaiRaportSemesterController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $title = 'Nilai Raport Semester';
        $data_mapel = Mapel::where('tapel_id', session()->get('tapel_id'))->get();
        $data_kelas = Kelas::where('tapel_id', session()->get('tapel_id'))->get();
        return view('admin.k13.nilairaport.pilihkelas', compact('title', 'data_mapel', 'data_kelas'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'mapel_id' => 'required',
            'kelas_id' => 'required',
        ]);
        if ($validator->fails()) {
            return back()->with('toast_error', $validator->messages()->all()[0])->withInput();
        } else {
            $title = 'Nilai Raport Semester';
            $data_mapel = Mapel::where('tapel_id', session()->get('tapel_id'))->get();
            $data_kelas = Kelas::where('tapel_id', session()->get('tapel_id'))->get();

            $pembelajaran = Pembelajaran::where('mapel_id', $request->mapel_id)->where('kelas_id', $request->kelas_id)->first();
            if (is_null($pembelajaran)) {
                return back()->with('toast_error', 'Data pembelajaran tidak ditemukan');
            } else {
                $kelas = Kelas::findorfail($request->kelas_id);
                $mapel = Mapel::findorfail($request->mapel_id);

                $data_anggota_kelas = AnggotaKelas::where('kelas_id', $kelas->id)->get();
                foreach ($data_anggota_kelas as $anggota_kelas) {
                    $anggota_kelas->nilai_raport = K13NilaiAkhirRaport::where('pembelajaran_id', $pembelajaran->id)->where('anggota_kelas_id', $anggota_kelas->id)->first();
                }

                return view('admin.k13.nilairaport.index', compact('title', 'mapel', 'kelas', 'data_mapel', 'data_kelas', 'data_anggota_kelas'));
            }
        }
    }

}
