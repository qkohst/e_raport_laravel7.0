<?php

namespace App\Http\Controllers\Admin;

use App\AnggotaKelas;
use App\Exports\SiswaExport;
use App\Http\Controllers\Controller;
use App\Imports\SiswaImport;
use App\Kelas;
use App\Siswa;
use App\SiswaKeluar;
use App\Tapel;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Excel;
use Illuminate\Support\Facades\Response;

class SiswaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $title = 'Data Siswa';
        $tapel = Tapel::findorfail(session()->get('tapel_id'));
        $jumlah_kelas = Kelas::where('tapel_id', $tapel->id)->count();

        if ($jumlah_kelas == 0) {
            return redirect('admin/kelas')->with('toast_warning', 'Mohon isikan data kelas');
        } else {
            $tingkatan_terendah = Kelas::where('tapel_id', $tapel->id)->min('tingkatan_kelas');
            $tingkatan_akhir = Kelas::where('tapel_id', $tapel->id)->max('tingkatan_kelas');
            $data_kelas_terendah = Kelas::where('tapel_id', $tapel->id)->where('tingkatan_kelas', $tingkatan_terendah)->orderBy('nama_kelas', 'ASC')->get();
            $data_kelas_all = Kelas::where('tapel_id', $tapel->id)->orderBy('tingkatan_kelas', 'ASC')->get();
            $data_siswa = Siswa::where('status', 1)->orderBy('nis', 'ASC')->get();
            return view('admin.siswa.index', compact('title', 'data_kelas_all', 'data_kelas_terendah', 'data_siswa', 'tingkatan_akhir'));
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
            'nama_lengkap' => 'required|min:3|max:100',
            'jenis_kelamin' => 'required',
            'jenis_pendaftaran' => 'required',
            'kelas_id' => 'required',
            'nis' => 'required|numeric|digits_between:1,10|unique:siswa',
            'nisn' => 'nullable|numeric|digits:10|unique:siswa',
            'tempat_lahir' => 'required|min:3|max:50',
            'tanggal_lahir' => 'required',
            'agama' => 'required',
            'anak_ke' => 'required|numeric|digits_between:1,2',
            'status_dalam_keluarga' => 'required',
            'alamat' => 'required|min:3|max:255',
            'nomor_hp' => 'nullable|numeric|digits_between:11,13|unique:siswa',

            'nama_ayah' => 'required|min:3|max:100',
            'nama_ibu' => 'required|min:3|max:100',
            'pekerjaan_ayah' => 'required|min:3|max:100',
            'pekerjaan_ibu' => 'required|min:3|max:100',
            'nama_wali' => 'nullable|min:3|max:100',
            'pekerjaan_wali' => 'nullable|min:3|max:100',
        ]);
        if ($validator->fails()) {
            return back()->with('toast_error', $validator->messages()->all()[0])->withInput();
        } else {
            try {
                $user = new User([
                    'username' => strtolower(str_replace(' ', '', $request->nama_lengkap . $request->nis)),
                    'password' => bcrypt('123456'),
                    'role' => 3,
                    'status' => true
                ]);
                $user->save();
            } catch (\Throwable $th) {
                return back()->with('toast_error', 'Username telah digunakan');
            }

            $siswa = new Siswa([
                'user_id' => $user->id,
                'kelas_id' => $request->kelas_id,
                'jenis_pendaftaran' => $request->jenis_pendaftaran,
                'nis' => $request->nis,
                'nisn' => $request->nisn,
                'nama_lengkap' => strtoupper($request->nama_lengkap),
                'tempat_lahir' => $request->tempat_lahir,
                'tanggal_lahir' => $request->tanggal_lahir,
                'jenis_kelamin' => $request->jenis_kelamin,
                'agama' => $request->agama,
                'status_dalam_keluarga' => $request->status_dalam_keluarga,
                'anak_ke' => $request->anak_ke,
                'alamat' => $request->alamat,
                'nomor_hp' => $request->nomor_hp,
                'nama_ayah' => $request->nama_ayah,
                'nama_ibu' => $request->nama_ibu,
                'pekerjaan_ayah' => $request->pekerjaan_ayah,
                'pekerjaan_ibu' => $request->pekerjaan_ibu,
                'nama_wali' => $request->nama_wali,
                'pekerjaan_wali' => $request->pekerjaan_wali,
                'avatar' => 'default.png',
                'status' => 1,
            ]);
            $siswa->save();

            $anggota_kelas = new AnggotaKelas([
                'siswa_id' => $siswa->id,
                'kelas_id' => $request->kelas_id,
                'pendaftaran' => $request->jenis_pendaftaran,
            ]);
            $anggota_kelas->save();

            return back()->with('toast_success', 'Siswa berhasil ditambahkan');
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
        $siswa = Siswa::findorfail($id);
        $validator = Validator::make($request->all(), [
            'nama_lengkap' => 'required|min:3|max:100',
            'jenis_kelamin' => 'required',
            'nis' => 'required|numeric|digits_between:1,10|unique:siswa,nis,' . $siswa->id,
            'nisn' => 'nullable|numeric|digits:10|unique:siswa,nisn,' . $siswa->id,
            'tempat_lahir' => 'required|min:3|max:50',
            'tanggal_lahir' => 'required',
            'agama' => 'required',
            'anak_ke' => 'required|numeric|digits_between:1,2',
            'status_dalam_keluarga' => 'required',
            'alamat' => 'required|min:3|max:255',
            'nomor_hp' => 'nullable|numeric|digits_between:11,13|unique:siswa,nomor_hp,' . $siswa->id,

            'nama_ayah' => 'required|min:3|max:100',
            'nama_ibu' => 'required|min:3|max:100',
            'pekerjaan_ayah' => 'required|min:3|max:100',
            'pekerjaan_ibu' => 'required|min:3|max:100',
            'nama_wali' => 'nullable|min:3|max:100',
            'pekerjaan_wali' => 'nullable|min:3|max:100',
        ]);
        if ($validator->fails()) {
            return back()->with('toast_error', $validator->messages()->all()[0])->withInput();
        } else {
            $data_siswa = [
                'nis' => $request->nis,
                'nisn' => $request->nisn,
                'nama_lengkap' => strtoupper($request->nama_lengkap),
                'tempat_lahir' => $request->tempat_lahir,
                'tanggal_lahir' => $request->tanggal_lahir,
                'jenis_kelamin' => $request->jenis_kelamin,
                'agama' => $request->agama,
                'status_dalam_keluarga' => $request->status_dalam_keluarga,
                'anak_ke' => $request->anak_ke,
                'alamat' => $request->alamat,
                'nomor_hp' => $request->nomor_hp,
                'nama_ayah' => $request->nama_ayah,
                'nama_ibu' => $request->nama_ibu,
                'pekerjaan_ayah' => $request->pekerjaan_ayah,
                'pekerjaan_ibu' => $request->pekerjaan_ibu,
                'nama_wali' => $request->nama_wali,
                'pekerjaan_wali' => $request->pekerjaan_wali
            ];
            $siswa->update($data_siswa);
            return back()->with('toast_success', 'Siswa berhasil diedit');
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
        $data_siswa = Siswa::findorfail($id);
        $data_user = User::findorfail($data_siswa->user_id);

        $data_anggota_kelas = AnggotaKelas::where('siswa_id', $data_siswa->id)->get();
        if ($data_anggota_kelas->count() == 0) {
            $data_siswa->delete();
            $data_user->delete();
            return back()->with('toast_success', 'Siswa berhasil dihapus');
        } elseif ($data_anggota_kelas->count() == 1) {
            try {
                $anggota_kelas = AnggotaKelas::where('siswa_id', $data_siswa->id)->first();
                $anggota_kelas->delete();
                $data_siswa->delete();
                $data_user->delete();
                return back()->with('toast_success', 'Siswa berhasil dihapus');
            } catch (\Throwable $th) {
                return back()->with('toast_error', 'Data siswa tidak dapat dihapus');
            }
        } else {
            return back()->with('toast_error', 'Data siswa tidak dapat dihapus');
        }
    }

    public function export()
    {
        $filename = 'data_siswa ' . date('Y-m-d H_i_s') . '.xls';
        return Excel::download(new SiswaExport, $filename);
    }

    public function format_import()
    {
        $file = public_path() . "/format_import/format_import_siswa.xls";
        $headers = array(
            'Content-Type: application/xls',
        );
        return Response::download($file, 'format_import_siswa ' . date('Y-m-d H_i_s') . '.xls', $headers);
    }

    public function import(Request $request)
    {
        try {
            Excel::import(new SiswaImport, $request->file('file_import'));
            return back()->with('toast_success', 'Data siswa berhasil diimport');
        } catch (\Throwable $th) {
            return back()->with('toast_error', 'Maaf, format data tidak sesuai');
        }
    }

    public function registrasi(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'siswa_id' => 'required',
            'keluar_karena' => 'required|max:30',
            'tanggal_keluar' => 'required',
            'alasan_keluar' => 'nullable|max:255',
        ]);
        if ($validator->fails()) {
            return back()->with('toast_error', $validator->messages()->all()[0])->withInput();
        } else {
            $siswa_keluar = new SiswaKeluar([
                'siswa_id' => $request->input('siswa_id'),
                'keluar_karena' => $request->input('keluar_karena'),
                'tanggal_keluar' => $request->input('tanggal_keluar'),
                'alasan_keluar' => $request->input('alasan_keluar'),
            ]);
            $siswa_keluar->save();

            $siswa = Siswa::findorfail($request->siswa_id);
            $anggota_kelas = AnggotaKelas::where('siswa_id', $siswa->id)->where('kelas_id', $siswa->kelas_id)->first();
            $anggota_kelas->delete();

            if ($request->keluar_karena == 'Lulus') {
                $update_siswa = [
                    'kelas_id' => null,
                    'status' => 3
                ];
            } else {
                $update_siswa = [
                    'kelas_id' => null,
                    'status' => 2
                ];
            }
            $siswa->update($update_siswa);
            User::findorfail($siswa->user_id)->update(['status' => false]);
            return redirect('admin/siswa')->with('toast_success', 'Registrasi siswa berhasil');
        }
    }
}
