<?php

namespace App\Http\Controllers\Admin;

use App\AnggotaKelas;
use App\Http\Controllers\Controller;
use App\Kelas;
use Illuminate\Http\Request;

class RekapKehadiranSiswaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $title = 'Rekap Kehadiran Siswa';
        $data_kelas = Kelas::where('tapel_id', session()->get('tapel_id'))->get();
        return view('admin.rekapkehadiran.pilihkelas', compact('title', 'data_kelas'));
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $title = 'Rekap Kehadiran Siswa';
        $data_kelas = Kelas::where('tapel_id', session()->get('tapel_id'))->get();
        $kelas = Kelas::findorfail($request->kelas_id);
        $data_anggota_kelas = AnggotaKelas::where('kelas_id', $kelas->id)->get();
        return view('admin.rekapkehadiran.index', compact('title', 'kelas', 'data_kelas', 'data_anggota_kelas'));
    }

}
