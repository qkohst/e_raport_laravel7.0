<?php

namespace App\Http\Controllers\Guru\KTSP;

use App\Guru;
use App\Http\Controllers\Controller;
use App\Kelas;
use App\KtspBobotPenilaian;
use App\Pembelajaran;
use App\Tapel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class BobotPenilaianController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $title = 'Bobot Penilaian';
        $tapel = Tapel::findorfail(session()->get('tapel_id'));

        $guru = Guru::where('user_id', Auth::user()->id)->first();
        $id_kelas = Kelas::where('tapel_id', $tapel->id)->get('id');

        $data_bobot_penilaian = Pembelajaran::where('guru_id', $guru->id)->whereIn('kelas_id', $id_kelas)->where('status', 1)->orderBy('mapel_id', 'ASC')->orderBy('kelas_id', 'ASC')->get();
        foreach ($data_bobot_penilaian as $penilaian) {
            $bobot = KtspBobotPenilaian::where('pembelajaran_id', $penilaian->id)->first();
            if (is_null($bobot)) {
                $penilaian->bobot_tugas = null;
                $penilaian->bobot_uh = null;
                $penilaian->bobot_uts = null;
                $penilaian->bobot_uas = null;
            } else {
                $penilaian->bobot_tugas = $bobot->bobot_tugas;
                $penilaian->bobot_uh = $bobot->bobot_uh;
                $penilaian->bobot_uts = $bobot->bobot_uts;
                $penilaian->bobot_uas = $bobot->bobot_uas;
            }
        }

        return view('guru.ktsp.bobot.index', compact('title', 'data_bobot_penilaian'));
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
            'pembelajaran_id' => 'required',
            'bobot_tugas' => 'required|numeric|between:1,5',
            'bobot_uh' => 'required|numeric|between:1,5',
            'bobot_uts' => 'required|numeric|between:1,5',
            'bobot_uas' => 'required|numeric|between:1,5',
        ]);
        if ($validator->fails()) {
            return back()->with('toast_error', $validator->messages()->all()[0])->withInput();
        } else {
            $bobot = new KtspBobotPenilaian([
                'pembelajaran_id' => $request->pembelajaran_id,
                'bobot_tugas' => $request->bobot_tugas,
                'bobot_uh' => $request->bobot_uh,
                'bobot_uts' => $request->bobot_uts,
                'bobot_uas' => $request->bobot_uas,
            ]);
            $bobot->save();
            return back()->with('toast_success', 'Bobot penilaian berhasil disimpan');
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $validator = Validator::make($request->all(), [
            'bobot_tugas' => 'required|numeric|between:1,5',
            'bobot_uh' => 'required|numeric|between:1,5',
            'bobot_uts' => 'required|numeric|between:1,5',
            'bobot_uas' => 'required|numeric|between:1,5',
        ]);
        if ($validator->fails()) {
            return back()->with('toast_error', $validator->messages()->all()[0])->withInput();
        } else {
            $bobot = KtspBobotPenilaian::where('pembelajaran_id', $id)->first();
            $data = [
                'bobot_tugas' => $request->bobot_tugas,
                'bobot_uh' => $request->bobot_uh,
                'bobot_uts' => $request->bobot_uts,
                'bobot_uas' => $request->bobot_uas,
            ];

            $bobot->update($data);
            return back()->with('toast_success', 'Bobot penilaian berhasil diedit');
        }
    }
}
