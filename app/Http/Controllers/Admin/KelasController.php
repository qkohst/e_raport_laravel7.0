<?php

namespace App\Http\Controllers\Admin;

use App\AnggotaKelas;
use App\Guru;
use App\Http\Controllers\Controller;
use App\Kelas;
use App\Mapel;
use App\Siswa;
use App\Tapel;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class KelasController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $tapel = Tapel::findorfail(session()->get('tapel_id'));
        $data_mapel = Mapel::where('tapel_id', $tapel->id)->get();
        if (count($data_mapel) == 0) {
            return redirect('admin/mapel')->with('toast_warning', 'Mohon isikan data mata pelajaran');
        } else {
            $title = 'Data Kelas';
            $data_kelas = Kelas::where('tapel_id', $tapel->id)->orderBy('tingkatan_kelas', 'ASC')->get();
            foreach ($data_kelas as $kelas) {
                $jumlah_anggota = Siswa::where('kelas_id', $kelas->id)->count();
                $kelas->jumlah_anggota = $jumlah_anggota;
            }
            $data_guru = Guru::orderBy('nama_lengkap', 'ASC')->get();
            return view('admin.kelas.index', compact('title', 'data_kelas', 'tapel', 'data_guru'));
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
            'tingkatan_kelas' => 'required|numeric|digits_between:1,2',
            'nama_kelas' => 'required|min:1|max:30',
            'guru_id' => 'required',
        ]);
        if ($validator->fails()) {
            return back()->with('toast_error', $validator->messages()->all()[0])->withInput();
        } else {
            $tapel = Tapel::findorfail(session()->get('tapel_id'));
            $kelas = new Kelas([
                'tapel_id' => $tapel->id,
                'guru_id' => $request->guru_id,
                'tingkatan_kelas' => $request->tingkatan_kelas,
                'nama_kelas' => $request->nama_kelas,
            ]);
            $kelas->save();
            return back()->with('toast_success', 'Kelas berhasil ditambahkan');
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
        $title = 'Anggota Kelas';
        $kelas = Kelas::findorfail($id);
        $anggota_kelas = AnggotaKelas::join('siswa', 'anggota_kelas.siswa_id', '=', 'siswa.id')
            ->orderBy('siswa.nama_lengkap', 'ASC')
            ->where('anggota_kelas.kelas_id', $id)
            ->get();
        $siswa_belum_masuk_kelas = Siswa::where('status', 1)->where('kelas_id', null)->get();
        foreach ($siswa_belum_masuk_kelas as $belum_masuk_kelas) {
            $kelas_sebelumhya = AnggotaKelas::where('siswa_id', $belum_masuk_kelas->id)->orderBy('id', 'DESC')->first();
            if (is_null($kelas_sebelumhya)) {
                $belum_masuk_kelas->kelas_sebelumhya = null;
            } else {
                $belum_masuk_kelas->kelas_sebelumhya = $kelas_sebelumhya->kelas->nama_kelas;
            }
        }
        return view('admin.kelas.show', compact('title', 'kelas', 'anggota_kelas', 'siswa_belum_masuk_kelas'));
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
            'nama_kelas' => 'required|min:1|max:30',
            'guru_id' => 'required',
        ]);
        if ($validator->fails()) {
            return back()->with('toast_error', $validator->messages()->all()[0])->withInput();
        } else {
            $kelas = Kelas::findorfail($id);
            $data_kelas = [
                'nama_kelas' => $request->nama_kelas,
                'guru_id' => $request->guru_id,
            ];
            $kelas->update($data_kelas);
            return back()->with('toast_success', 'Kelas berhasil diedit');
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
        $kelas = Kelas::findorfail($id);
        try {
            $kelas->delete();
            return back()->with('toast_success', 'Kelas berhasil dihapus');
        } catch (\Throwable $th) {
            return back()->with('toast_warning', 'Kosongkan anggota kelas terlebih dahulu');
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
                    'kelas_id'  => $request->kelas_id,
                    'pendaftaran'  => $request->pendaftaran,
                    'created_at'  => Carbon::now(),
                    'updated_at'  => Carbon::now(),
                );
                $insert_data[] = $data;
            }

            AnggotaKelas::insert($insert_data);
            Siswa::whereIn('id', $siswa_id)->update(['kelas_id' => $request->input('kelas_id')]);
            return back()->with('toast_success', 'Anggota kelas berhasil ditambahkan');
        }
    }

    public function delete_anggota($id)
    {
        try {
            $anggota_kelas = AnggotaKelas::findorfail($id);
            $siswa = Siswa::findorfail($anggota_kelas->siswa_id);

            $update_kelas_id = [
                'kelas_id' => null,
            ];
            $anggota_kelas->delete();
            $siswa->update($update_kelas_id);
            return back()->with('toast_success', 'Anggota kelas berhasil dihapus');
        } catch (\Throwable $th) {
            return back()->with('toast_error', 'Anggota kelas tidak dapat dihapus');
        }
    }
}
