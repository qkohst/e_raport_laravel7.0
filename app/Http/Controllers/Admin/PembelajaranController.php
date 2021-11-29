<?php

namespace App\Http\Controllers\Admin;

use App\Exports\PembelajaranExport;
use App\Guru;
use App\Http\Controllers\Controller;
use App\Kelas;
use App\Mapel;
use App\Pembelajaran;
use App\Tapel;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Excel;

class PembelajaranController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $tapel = Tapel::findorfail(session()->get('tapel_id'));
        $data_mapel = Mapel::where('tapel_id', $tapel->id)->orderBy('nama_mapel', 'ASC')->get();
        $data_kelas = Kelas::where('tapel_id', $tapel->id)->orderBy('tingkatan_kelas', 'ASC')->get();

        if (count($data_mapel) == 0) {
            return redirect('admin/mapel')->with('toast_warning', 'Mohon isikan data mata pelajaran');
        } elseif (count($data_kelas) == 0) {
            return redirect('admin/kelas')->with('toast_warning', 'Mohon isikan data kelas');
        } else {
            $title = 'Data Pembelajaran';
            $id_kelas = Kelas::where('tapel_id', $tapel->id)->orderBy('tingkatan_kelas', 'ASC')->get('id');
            $data_pembelajaran = Pembelajaran::whereIn('kelas_id', $id_kelas)->whereNotNull('guru_id')->where('status', 1)->orderBy('kelas_id', 'ASC')->get();
            return view('admin.pembelajaran.index', compact('title', 'data_kelas', 'data_pembelajaran'));
        }
    }

    public function settings(Request $request)
    {
        $title = 'Setting Pembelajaran';
        $tapel = Tapel::findorfail(session()->get('tapel_id'));
        $kelas = Kelas::findorfail($request->kelas_id);
        $data_kelas = Kelas::where('tapel_id', $tapel->id)->orderBy('tingkatan_kelas', 'ASC')->get();

        $data_pembelajaran_kelas = Pembelajaran::where('kelas_id', $request->kelas_id)->get();
        $mapel_id_pembelajaran_kelas = Pembelajaran::where('kelas_id', $request->kelas_id)->get('mapel_id');
        $data_mapel = Mapel::whereNotIn('id', $mapel_id_pembelajaran_kelas)->get();
        $data_guru = Guru::orderBy('nama_lengkap', 'ASC')->get();
        return view('admin.pembelajaran.settings', compact('title', 'tapel', 'kelas', 'data_kelas', 'data_pembelajaran_kelas', 'data_mapel', 'data_guru'));
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // dd($request->all());
        if (!is_null($request->pembelajaran_id)) {
            for ($count = 0; $count < count($request->pembelajaran_id); $count++) {
                $pembelajaran = Pembelajaran::findorfail($request->pembelajaran_id[$count]);
                $update_data = array(
                    'guru_id'  => $request->update_guru_id[$count],
                    'status'  => $request->update_status[$count],
                );
                $pembelajaran->update($update_data);
            }
            if (!is_null($request->mapel_id)) {
                for ($count = 0; $count < count($request->mapel_id); $count++) {
                    $data_baru = array(
                        'kelas_id'  => $request->kelas_id[$count],
                        'mapel_id'  => $request->mapel_id[$count],
                        'guru_id'  => $request->guru_id[$count],
                        'status'  => $request->status[$count],
                        'created_at'  => Carbon::now(),
                        'updated_at'  => Carbon::now(),
                    );
                    $store_data_baru[] = $data_baru;
                }
                Pembelajaran::insert($store_data_baru);
            }
        } else {
            for ($count = 0; $count < count($request->mapel_id); $count++) {
                $data_baru = array(
                    'kelas_id'  => $request->kelas_id[$count],
                    'mapel_id'  => $request->mapel_id[$count],
                    'guru_id'  => $request->guru_id[$count],
                    'status'  => $request->status[$count],
                    'created_at'  => Carbon::now(),
                    'updated_at'  => Carbon::now(),
                );
                $store_data_baru[] = $data_baru;
            }
            Pembelajaran::insert($store_data_baru);
        }
        return redirect('admin/pembelajaran')->with('toast_success', 'Setting pembelajaran berhasil');
    }

    public function export()
    {
        $filename = 'data_pembelajaran ' . date('Y-m-d H_i_s') . '.xls';
        return Excel::download(new PembelajaranExport, $filename);
    }
}
