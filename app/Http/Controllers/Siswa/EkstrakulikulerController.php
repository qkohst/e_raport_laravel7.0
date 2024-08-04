<?php

namespace App\Http\Controllers\Siswa;

use App\Http\Controllers\Controller;
use App\Models\AnggotaEkstrakulikuler;
use App\Models\AnggotaKelas;
use App\Models\Ekstrakulikuler;
use App\Models\Kelas;
use App\Models\NilaiEkstrakulikuler;
use App\Models\Siswa;
use Illuminate\Support\Facades\Auth;

class EkstrakulikulerController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $title = 'Ekstrakulikuler Siswa';
        $siswa = Siswa::where('user_id', Auth::user()->id)->first();

        $data_id_kelas = Kelas::where('tapel_id', session()->get('tapel_id'))->get('id');
        $data_id_ekstrakulikuler = Ekstrakulikuler::where('tapel_id', session()->get('tapel_id'))->get('id');

        $anggota_kelas = AnggotaKelas::whereIn('kelas_id', $data_id_kelas)->where('siswa_id', $siswa->id)->first();
        if (is_null($anggota_kelas)) {
            return back()->with('toast_warning', 'Tidak ada ekstrakulikuler yang diikuti');
        } else {
            $data_anggota_ekstra = AnggotaEkstrakulikuler::where('anggota_kelas_id', $anggota_kelas->id)->whereIn('ekstrakulikuler_id', $data_id_ekstrakulikuler)->get();
            foreach ($data_anggota_ekstra as $anggota_ekstra) {
                $anggota_ekstra->nilai = NilaiEkstrakulikuler::where('anggota_ekstrakulikuler_id', $anggota_ekstra->id)->first();
            }
            return view('siswa.ekstra.index', compact('title', 'siswa', 'data_anggota_ekstra'));
        }
    }
}
