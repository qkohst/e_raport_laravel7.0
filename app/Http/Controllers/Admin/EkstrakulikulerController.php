<?php

namespace App\Http\Controllers\Admin;

use App\AnggotaEkstrakulikuler;
use App\AnggotaKelas;
use App\Ekstrakulikuler;
use App\Guru;
use App\Http\Controllers\Controller;
use App\Siswa;
use App\Tapel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class EkstrakulikulerController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $tapel = Tapel::orderBy('id', 'DESC')->limit(1)->first();
        if (is_null($tapel)) {
            return redirect('admin/tapel')->with('toast_warning', 'Mohon isikan data tahun pelajaran');
        } else {
            $title = 'Data Ekstrakulikuler';
            $data_ekstrakulikuler = Ekstrakulikuler::where('tapel_id', $tapel->id)->orderBy('nama_ekstrakulikuler', 'ASC')->get();
            foreach ($data_ekstrakulikuler as $ekstrakulikuler) {
                $jumlah_anggota = AnggotaEkstrakulikuler::where('ekstrakulikuler_id', $ekstrakulikuler->id)->count();
                $ekstrakulikuler->jumlah_anggota = $jumlah_anggota;
            }
            $data_guru = Guru::orderBy('nama_lengkap', 'ASC')->get();
            return view('admin.ekstrakulikuler.index', compact('title', 'data_ekstrakulikuler', 'tapel', 'data_guru'));
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
            'nama_ekstrakulikuler' => 'required|min:3|max:50',
            'pembina_id' => 'required',
        ]);
        if ($validator->fails()) {
            return back()->with('toast_error', $validator->messages()->all()[0])->withInput();
        } else {
            $tapel = Tapel::orderBy('id', 'DESC')->limit(1)->first();
            $ekstrakulikuler = new Ekstrakulikuler([
                'tapel_id' => $tapel->id,
                'nama_ekstrakulikuler' => $request->nama_ekstrakulikuler,
                'pembina_id' => $request->pembina_id,
            ]);
            $ekstrakulikuler->save();
            return back()->with('toast_success', 'Ekstrakulikuler berhasil ditambahkan');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $title = 'Anggota Ekstrakulikuler';
        $ekstrakulikuler = Ekstrakulikuler::findorfail($id);
        $anggota_ekstrakulikuler = AnggotaEkstrakulikuler::where('ekstrakulikuler_id', $id)->get();

        $id_anggota_ekstrakulikuler = AnggotaEkstrakulikuler::where('ekstrakulikuler_id', $id)->get('siswa_id');
        $siswa_belum_masuk_ekstrakulikuler = Siswa::where('status', 1)->where('kelas_id', '<>', null)->whereNotIn('id', $id_anggota_ekstrakulikuler)->get();

        foreach ($siswa_belum_masuk_ekstrakulikuler as $belum_masuk_ekstrakulikuler) {
            $kelas_terakhir = AnggotaKelas::where('siswa_id', $belum_masuk_ekstrakulikuler->id)->orderBy('id', 'DESC')->first();
            $belum_masuk_ekstrakulikuler->kelas_terakhir = $kelas_terakhir->kelas->nama_kelas;
        }
        return view('admin.ekstrakulikuler.show', compact('title', 'ekstrakulikuler', 'anggota_ekstrakulikuler', 'siswa_belum_masuk_ekstrakulikuler'));
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
            'pembina_id' => 'required',
        ]);
        if ($validator->fails()) {
            return back()->with('toast_error', $validator->messages()->all()[0])->withInput();
        } else {
            $ekstrakulikuler = Ekstrakulikuler::findorfail($id);
            $data_ekstrakulikuler = [
                'pembina_id' => $request->pembina_id,
            ];
            $ekstrakulikuler->update($data_ekstrakulikuler);
            return back()->with('toast_success', 'Ekstrakulikuler berhasil diedit');
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
        $ekstrakulikuler = Ekstrakulikuler::findorfail($id);
        try {
            $ekstrakulikuler->delete();
            return back()->with('toast_success', 'Ekstrakulikuler berhasil dihapus');
        } catch (\Throwable $th) {
            return back()->with('toast_warning', 'Kosongkan anggota ekstrakulikuler terlebih dahulu');
        }
    }

    public function store_anggota(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'siswa_id' => 'required',
        ]);
        if ($validator->fails()) {
            return back()->with('toast_warning', 'Tidak ada siswa yang dipilih');
        } else {
            $siswa_id = $request->input('siswa_id');
            for ($count = 0; $count < count($siswa_id); $count++) {
                $data = array(
                    'siswa_id' => $siswa_id[$count],
                    'ekstrakulikuler_id'  => $request->ekstrakulikuler_id,
                );
                $insert_data[] = $data;
            }

            AnggotaEkstrakulikuler::insert($insert_data);
            return back()->with('toast_success', 'Anggota ekstrakulikuler berhasil ditambahkan');
        }
    }

    public function delete_anggota($id)
    {
        try {
            $anggota_ekstrakulikuler = AnggotaEkstrakulikuler::findorfail($id);
            $anggota_ekstrakulikuler->delete();
            return back()->with('toast_success', 'Anggota ekstrakulikuler berhasil dihapus');
        } catch (\Throwable $th) {
            return back()->with('toast_error', 'Anggota ekstrakulikuler tidak dapat dihapus');
        }
    }
}
