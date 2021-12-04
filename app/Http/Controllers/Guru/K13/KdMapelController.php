<?php

namespace App\Http\Controllers\Guru\K13;

use App\Guru;
use App\Http\Controllers\Controller;
use App\K13KdMapel;
use App\Kelas;
use App\Mapel;
use App\Pembelajaran;
use App\Tapel;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class KdMapelController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $title = 'Data Kompetensi Dasar';
        $tapel = Tapel::findorfail(session()->get('tapel_id'));

        $guru = Guru::where('user_id', Auth::user()->id)->first();
        $id_kelas = Kelas::where('tapel_id', $tapel->id)->get('id');

        $id_mapel_diampu = Pembelajaran::where('guru_id', $guru->id)->whereIn('kelas_id', $id_kelas)->where('status', 1)->get('mapel_id');
        $id_kelas_diampu = Pembelajaran::where('guru_id', $guru->id)->whereIn('kelas_id', $id_kelas)->where('status', 1)->get('kelas_id');
        $tingkatan_kelas_diampu = Kelas::whereIn('id', $id_kelas_diampu)->groupBy('tingkatan_kelas')->get('tingkatan_kelas');

        $data_mapel_diampu = Mapel::whereIn('id', $id_mapel_diampu)->get();

        $data_kd = K13KdMapel::whereIn('mapel_id', $id_mapel_diampu)->whereIn('tingkatan_kelas', $tingkatan_kelas_diampu)->get();

        return view('guru.k13.kd.index', compact('title', 'data_mapel_diampu', 'tingkatan_kelas_diampu', 'data_kd'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'mapel_id' => 'required',
            'tingkatan_kelas' => 'required',
        ]);
        if ($validator->fails()) {
            return back()->with('toast_error', $validator->messages()->all()[0])->withInput();
        } else {
            $title = 'Tambah Kompetensi Dasar';
            $mapel_id = $request->mapel_id;
            $tingkatan_kelas = $request->tingkatan_kelas;

            $tapel = Tapel::findorfail(session()->get('tapel_id'));
            $guru = Guru::where('user_id', Auth::user()->id)->first();
            $id_kelas = Kelas::where('tapel_id', $tapel->id)->get('id');

            $id_mapel_diampu = Pembelajaran::where('guru_id', $guru->id)->whereIn('kelas_id', $id_kelas)->where('status', 1)->get('mapel_id');
            $id_kelas_diampu = Pembelajaran::where('guru_id', $guru->id)->whereIn('kelas_id', $id_kelas)->where('status', 1)->get('kelas_id');
            $tingkatan_kelas_diampu = Kelas::whereIn('id', $id_kelas_diampu)->groupBy('tingkatan_kelas')->get('tingkatan_kelas');

            $data_mapel_diampu = Mapel::whereIn('id', $id_mapel_diampu)->get();

            return view('guru.k13.kd.create', compact('title', 'mapel_id', 'tingkatan_kelas', 'tapel', 'data_mapel_diampu', 'tingkatan_kelas_diampu'));
        }
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
            'jenis_kompetensi.*' => 'required',
            'kode_kd.*' => 'required|min:2|max:10',
            'kompetensi_dasar.*' => 'required|min:10|max:255',
            'ringkasan_kompetensi.*' => 'required|min:10|max:150',
        ]);
        if ($validator->fails()) {
            return back()->with('toast_error', $validator->messages()->all()[0])->withInput();
        } else {
            for ($count = 0; $count < count($request->jenis_kompetensi); $count++) {
                $data_kd = array(
                    'mapel_id'  => $request->mapel_id,
                    'tingkatan_kelas'  => $request->tingkatan_kelas,
                    'semester'  => $request->semester,
                    'jenis_kompetensi'  => $request->jenis_kompetensi[$count],
                    'kode_kd'  => $request->kode_kd[$count],
                    'kompetensi_dasar'  => $request->kompetensi_dasar[$count],
                    'ringkasan_kompetensi'  => $request->ringkasan_kompetensi[$count],
                    'created_at'  => Carbon::now(),
                    'updated_at'  => Carbon::now(),
                );
                $store_data_kd[] = $data_kd;
            }
            K13KdMapel::insert($store_data_kd);
            return redirect('guru/kdk13')->with('toast_success', 'Kompetensi dasar berhasil ditambahkan');
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
            'kompetensi_dasar' => 'required|min:10|max:255',
            'ringkasan_kompetensi' => 'required|min:10|max:150',
        ]);
        if ($validator->fails()) {
            return back()->with('toast_error', $validator->messages()->all()[0])->withInput();
        } else {
            $kd = K13KdMapel::findorfail($id);
            $data_kd = [
                'kompetensi_dasar' => $request->kompetensi_dasar,
                'ringkasan_kompetensi' => $request->ringkasan_kompetensi,
            ];
            $kd->update($data_kd);
            return back()->with('toast_success', 'Kompetensi dasar berhasil diedit');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $kd = K13KdMapel::findorfail($id);
        try {
            $kd->delete();
            return back()->with('toast_success', 'Kompetensi dasar berhasil dihapus');
        } catch (\Throwable $th) {
            return back()->with('toast_error', 'Data Kompetensi dasar tidak dapat dihapus');
        }
    }
}
