<?php

namespace App\Http\Controllers\Guru\K13;

use App\Guru;
use App\Http\Controllers\Controller;
use App\K13RencanaBobotPenilaian;
use App\Kelas;
use App\Pembelajaran;
use App\Tapel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class RencanaBobotPenilaianController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $title = 'Rencana Bobot PH PTS & PAS';
        $tapel = Tapel::findorfail(session()->get('tapel_id'));

        $guru = Guru::where('user_id', Auth::user()->id)->first();
    $id_kelas = Kelas::where('tapel_id', $tapel->id)->get('id');
        
        $data_rencana_bobot_nilai = Pembelajaran::where('guru_id', $guru->id)->whereIn('kelas_id', $id_kelas)->where('status', 1)->orderBy('mapel_id', 'ASC')->orderBy('kelas_id', 'ASC')->get();
        foreach ($data_rencana_bobot_nilai as $penilaian) {
            $bobot = K13RencanaBobotPenilaian::where('pembelajaran_id', $penilaian->id)->first();
            if (is_null($bobot)) {
                $penilaian->bobot_ph = null;
                $penilaian->bobot_pts = null;
                $penilaian->bobot_pas = null;
            } else {
                $penilaian->bobot_ph = $bobot->bobot_ph;
                $penilaian->bobot_pts = $bobot->bobot_pts;
                $penilaian->bobot_pas = $bobot->bobot_pas;
            }
        }

        return view('guru.k13.bobotnilai.index', compact('title', 'data_rencana_bobot_nilai'));
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
            'bobot_ph' => 'required|numeric|between:1,5',
            'bobot_pts' => 'required|numeric|between:1,5',
            'bobot_pas' => 'required|numeric|between:1,5',
        ]);
        if ($validator->fails()) {
            return back()->with('toast_error', $validator->messages()->all()[0])->withInput();
        } else {
            $bobot = new K13RencanaBobotPenilaian([
                'pembelajaran_id' => $request->pembelajaran_id,
                'bobot_ph' => $request->bobot_ph,
                'bobot_pts' => $request->bobot_pts,
                'bobot_pas' => $request->bobot_pas,
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
            'bobot_ph' => 'required|numeric|between:1,5',
            'bobot_pts' => 'required|numeric|between:1,5',
            'bobot_pas' => 'required|numeric|between:1,5',
        ]);
        if ($validator->fails()) {
            return back()->with('toast_error', $validator->messages()->all()[0])->withInput();
        } else {
            $bobot = K13RencanaBobotPenilaian::where('pembelajaran_id', $id)->first();
            $data = [
                'bobot_ph' => $request->bobot_ph,
                'bobot_pts' => $request->bobot_pts,
                'bobot_pas' => $request->bobot_pas,
            ];

            $bobot->update($data);
            return back()->with('toast_success', 'Bobot penilaian berhasil diedit');
        }
    }
}
