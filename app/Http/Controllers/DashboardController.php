<?php

namespace App\Http\Controllers;

use App\AnggotaKelas;
use App\Ekstrakulikuler;
use App\Guru;
use App\K13KkmMapel;
use App\K13RencanaNilaiKeterampilan;
use App\K13RencanaNilaiPengetahuan;
use App\K13RencanaNilaiSpiritual;
use App\Kelas;
use App\Pembelajaran;
use App\RiwayatLogin;
use App\Sekolah;
use App\Siswa;
use App\Tapel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class DashboardController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $title = 'Dashboard';
        $sekolah = Sekolah::first();
        $tapel = Tapel::findorfail(session()->get('tapel_id'));
        $data_riwayat_login = RiwayatLogin::where('user_id', '!=', Auth::user()->id)->orderBy('status_login', 'DESC')->orderBy('updated_at', 'DESC')->get();

        if (Auth::user()->role == 1) {
            $jumlah_guru = Guru::all()->count();
            $jumlah_siswa = Siswa::where('status', 1)->count();
            $jumlah_kelas = Kelas::where('tapel_id', $tapel->id)->count();
            $jumlah_ekstrakulikuler = Ekstrakulikuler::where('tapel_id', $tapel->id)->count();

            return view('dashboard.admin', compact(
                'title',
                'data_riwayat_login',
                'sekolah',
                'tapel',
                'jumlah_guru',
                'jumlah_siswa',
                'jumlah_kelas',
                'jumlah_ekstrakulikuler',
            ));
        } elseif (Auth::user()->role == 2) {
            $guru = Guru::where('user_id', Auth::user()->id)->first();
            $id_kelas = Kelas::where('tapel_id', $tapel->id)->get('id');

            $jumlah_kelas_diampu = count(Pembelajaran::where('guru_id', $guru->id)->whereIn('kelas_id', $id_kelas)->where('status', 1)->groupBy('kelas_id')->get());
            $jumlah_mapel_diampu = count(Pembelajaran::where('guru_id', $guru->id)->whereIn('kelas_id', $id_kelas)->where('status', 1)->groupBy('mapel_id')->get());

            $id_kelas_diampu = Pembelajaran::where('guru_id', $guru->id)->whereIn('kelas_id', $id_kelas)->where('status', 1)->groupBy('kelas_id')->get('kelas_id');
            $jumlah_siswa_diampu = AnggotaKelas::whereIn('kelas_id', $id_kelas_diampu)->count();

            $jumlah_ekstrakulikuler_diampu = Ekstrakulikuler::where('pembina_id', $guru->id)->count();

            $data_capaian_penilaian = Pembelajaran::where('guru_id', $guru->id)->whereIn('kelas_id', $id_kelas)->where('status', 1)->get();
            foreach ($data_capaian_penilaian as $penilaian) {
                $kkm = K13KkmMapel::where('mapel_id', $penilaian->mapel->id)->where('kelas_id', $penilaian->kelas_id)->first();

                $rencana_pengetahuan = K13RencanaNilaiPengetahuan::where('pembelajaran_id', $penilaian->id)->groupBy('kode_penilaian')->get();
                $penilaian->jumlah_rencana_pengetahuan = count($rencana_pengetahuan);

                $rencana_keterampilan = K13RencanaNilaiKeterampilan::where('pembelajaran_id', $penilaian->id)->groupBy('kode_penilaian')->get();
                $penilaian->jumlah_rencana_keterampilan = count($rencana_keterampilan);

                $rencana_spiritual = K13RencanaNilaiSpiritual::where('pembelajaran_id', $penilaian->id)->get();
                $penilaian->jumlah_rencana_spiritual = count($rencana_spiritual);

                if (is_null($kkm)) {
                    $penilaian->kkm = null;
                } else {
                    $penilaian->kkm = $kkm->kkm;
                }
            }

            return view('dashboard.guru', compact(
                'title',
                'data_riwayat_login',
                'sekolah',
                'tapel',
                'jumlah_kelas_diampu',
                'jumlah_mapel_diampu',
                'jumlah_siswa_diampu',
                'jumlah_ekstrakulikuler_diampu',
                'data_capaian_penilaian',
            ));
        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
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
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
