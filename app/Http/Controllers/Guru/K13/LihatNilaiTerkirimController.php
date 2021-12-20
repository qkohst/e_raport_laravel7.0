<?php

namespace App\Http\Controllers\Guru\K13;

use App\Guru;
use App\Http\Controllers\Controller;
use App\K13NilaiAkhirRaport;
use App\Kelas;
use App\Pembelajaran;
use App\Tapel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class LihatNilaiTerkirimController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $title = 'Lihat Nilai Akhir Terkirim';
        $tapel = Tapel::findorfail(session()->get('tapel_id'));

        $guru = Guru::where('user_id', Auth::user()->id)->first();
        $id_kelas = Kelas::where('tapel_id', $tapel->id)->get('id');
        $data_pembelajaran = Pembelajaran::where('guru_id', $guru->id)->whereIn('kelas_id', $id_kelas)->where('status', 1)->orderBy('mapel_id', 'ASC')->orderBy('kelas_id', 'ASC')->get();

        return view('guru.k13.nilaiterkirim.index', compact('title', 'data_pembelajaran'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'pembelajaran_id' => 'required',
        ]);
        if ($validator->fails()) {
            return back()->with('toast_error', $validator->messages()->all()[0])->withInput();
        } else {
            // Data Master
            $title = 'Lihat Nilai Akhir Terkirim';
            $tapel = Tapel::findorfail(session()->get('tapel_id'));

            $guru = Guru::where('user_id', Auth::user()->id)->first();
            $id_kelas = Kelas::where('tapel_id', $tapel->id)->get('id');
            $data_pembelajaran = Pembelajaran::where('guru_id', $guru->id)->whereIn('kelas_id', $id_kelas)->where('status', 1)->orderBy('mapel_id', 'ASC')->orderBy('kelas_id', 'ASC')->get();

            $pembelajaran = Pembelajaran::findorfail($request->pembelajaran_id);
            $data_nilai_terkirim = K13NilaiAkhirRaport::where('pembelajaran_id', $request->pembelajaran_id)->get();

            return view('guru.k13.nilaiterkirim.create', compact('title', 'data_pembelajaran', 'pembelajaran', 'data_nilai_terkirim'));
        }
    }
}
