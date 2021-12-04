<?php

namespace App\Http\Controllers\Admin\K13;

use App\Http\Controllers\Controller;
use App\K13KdMapel;
use App\Kelas;
use App\Mapel;
use App\Tapel;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Excel;

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
        $data_mapel = Mapel::where('tapel_id', $tapel->id)->orderBy('nama_mapel', 'ASC')->get();
        $id_mapel = Mapel::where('tapel_id', $tapel->id)->get('id');

        $data_kelas = Kelas::where('tapel_id', $tapel->id)->groupBy('tingkatan_kelas')->orderBy('tingkatan_kelas', 'ASC')->get();

        if (count($data_mapel) == 0) {
            return redirect('admin/mapel')->with('toast_warning', 'Mohon isikan data mata pelajaran');
        } elseif (count($data_kelas) == 0) {
            return redirect('admin/kelas')->with('toast_warning', 'Mohon isikan data kelas');
        } else {
            $data_kd = K13KdMapel::whereIn('mapel_id', $id_mapel)->get();
            return view('admin.k13.kd.index', compact('title', 'data_mapel', 'data_kelas', 'data_kd'));
        }
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
            $data_mapel = Mapel::where('tapel_id', $tapel->id)->orderBy('nama_mapel', 'ASC')->get();
            $data_kelas = Kelas::where('tapel_id', $tapel->id)->groupBy('tingkatan_kelas')->orderBy('tingkatan_kelas', 'ASC')->get();
            return view('admin.k13.kd.create', compact('title', 'mapel_id', 'tingkatan_kelas', 'tapel', 'data_mapel', 'data_kelas'));
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
            return redirect('admin/k13kd')->with('toast_success', 'Kompetensi dasar berhasil ditambahkan');
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
