<?php

namespace App\Http\Controllers\Guru\KTSP;

use App\Guru;
use App\Http\Controllers\Controller;
use App\Kelas;
use App\KtspDeskripsiNilaiSiswa;
use App\KtspNilaiAkhirRaport;
use App\Pembelajaran;
use App\Tapel;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class InputDeskripsiSiswaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $title = 'Input Deskripsi Nilai Siswa';
        $tapel = Tapel::findorfail(session()->get('tapel_id'));

        $guru = Guru::where('user_id', Auth::user()->id)->first();
        $id_kelas = Kelas::where('tapel_id', $tapel->id)->get('id');
        $data_pembelajaran = Pembelajaran::where('guru_id', $guru->id)->whereIn('kelas_id', $id_kelas)->where('status', 1)->orderBy('mapel_id', 'ASC')->orderBy('kelas_id', 'ASC')->get();

        return view('guru.ktsp.inputdeskripsi.index', compact('title', 'data_pembelajaran'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'pembelajaran_id' => 'required',
        ]);
        if ($validator->fails()) {
            return back()->with('toast_error', $validator->messages()->all()[0])->withInput();
        } else {
            // Data Master
            $title = 'Input Deskripsi Nilai Siswa';
            $tapel = Tapel::findorfail(session()->get('tapel_id'));

            $guru = Guru::where('user_id', Auth::user()->id)->first();
            $id_kelas = Kelas::where('tapel_id', $tapel->id)->get('id');
            $data_pembelajaran = Pembelajaran::where('guru_id', $guru->id)->whereIn('kelas_id', $id_kelas)->where('status', 1)->orderBy('mapel_id', 'ASC')->orderBy('kelas_id', 'ASC')->get();

            $pembelajaran = Pembelajaran::findorfail($request->pembelajaran_id);
            $data_nilai_siswa = KtspNilaiAkhirRaport::where('pembelajaran_id', $pembelajaran->id)->get();
            foreach ($data_nilai_siswa as $nilai_siswa) {
                $deskripsi = KtspDeskripsiNilaiSiswa::where('ktsp_nilai_akhir_raport_id', $nilai_siswa->id)->first();
                if (is_null($deskripsi)) {
                    if ($nilai_siswa->nilai_akhir < $nilai_siswa->kkm) {
                        $nilai_siswa->deskripsi = 'Tidak Lulus';
                    } else {
                        $nilai_siswa->deskripsi = 'Lulus';
                    }
                } else {
                    $nilai_siswa->deskripsi = $deskripsi->deskripsi;
                }
            }
        }
        return view('guru.ktsp.inputdeskripsi.create', compact('title', 'data_pembelajaran', 'pembelajaran', 'data_nilai_siswa'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if (is_null($request->nilai_akhir_raport_id)) {
            return back()->with('toast_error', 'Tidak ditemukan data deskripsi nilai siswa');
        } else {
            for ($cound_siswa = 0; $cound_siswa < count($request->nilai_akhir_raport_id); $cound_siswa++) {
                $data_deskripsi = array(
                    'pembelajaran_id' => $request->pembelajaran_id,
                    'ktsp_nilai_akhir_raport_id'  => $request->nilai_akhir_raport_id[$cound_siswa],
                    'deskripsi'  => $request->deskripsi[$cound_siswa],
                    'created_at'  => Carbon::now(),
                    'updated_at'  => Carbon::now(),
                );

                $cek_data = KtspDeskripsiNilaiSiswa::where('pembelajaran_id', $request->pembelajaran_id)->where('ktsp_nilai_akhir_raport_id', $request->nilai_akhir_raport_id[$cound_siswa])->first();
                if (is_null($cek_data)) {
                    KtspDeskripsiNilaiSiswa::insert($data_deskripsi);
                } else {
                    $cek_data->update($data_deskripsi);
                }
            }
            return redirect('guru/inputdeskripsi')->with('toast_success', 'Deskripsi nilai siswa berhasil disimpan');
        }
    }
}
