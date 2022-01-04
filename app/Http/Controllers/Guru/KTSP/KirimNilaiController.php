<?php

namespace App\Http\Controllers\Guru\KTSP;

use App\AnggotaKelas;
use App\Guru;
use App\Http\Controllers\Controller;
use App\Kelas;
use App\KtspBobotPenilaian;
use App\KtspKkmMapel;
use App\KtspNilaiAkhirRaport;
use App\KtspNilaiTugas;
use App\KtspNilaiUh;
use App\KtspNilaiUtsUas;
use App\Pembelajaran;
use App\Tapel;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class KirimNilaiController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $title = 'Kirim Nilai Akhir';
        $tapel = Tapel::findorfail(session()->get('tapel_id'));

        $guru = Guru::where('user_id', Auth::user()->id)->first();
        $id_kelas = Kelas::where('tapel_id', $tapel->id)->get('id');
        $data_pembelajaran = Pembelajaran::where('guru_id', $guru->id)->whereIn('kelas_id', $id_kelas)->where('status', 1)->orderBy('mapel_id', 'ASC')->orderBy('kelas_id', 'ASC')->get();

        return view('guru.ktsp.kirimnilai.index', compact('title', 'data_pembelajaran'));
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
            $pembelajaran = Pembelajaran::findorfail($request->pembelajaran_id);

            $kkm = KtspKkmMapel::where('mapel_id', $pembelajaran->mapel_id)->where('kelas_id', $pembelajaran->kelas_id)->first();
            $bobot_penilaian = KtspBobotPenilaian::where('pembelajaran_id', $pembelajaran->id)->first();

            if (is_null($kkm)) {
                return back()->with('toast_warning', 'KKM mata pelajaran belum ditentukan');
            } elseif (is_null($bobot_penilaian)) {
                return back()->with('toast_warning', 'Bobot penilaian belum ditentukan');
            }

            $nilai_tugas = KtspNilaiTugas::where('pembelajaran_id', $pembelajaran->id)->get();
            $nilai_uh = KtspNilaiUh::where('pembelajaran_id', $pembelajaran->id)->get();
            $nilai_uts_uas = KtspNilaiUtsUas::where('pembelajaran_id', $pembelajaran->id)->get();

            if (count($nilai_tugas) == 0 || count($nilai_uh) == 0 || count($nilai_uts_uas) == 0) {
                return back()->with('toast_warning', 'Data nilai belum lengkap');
            } else {
                // Data Master
                $title = 'Kirim Nilai Akhir';
                $tapel = Tapel::findorfail(session()->get('tapel_id'));

                $guru = Guru::where('user_id', Auth::user()->id)->first();
                $id_kelas = Kelas::where('tapel_id', $tapel->id)->get('id');
                $data_pembelajaran = Pembelajaran::where('guru_id', $guru->id)->whereIn('kelas_id', $id_kelas)->where('status', 1)->orderBy('mapel_id', 'ASC')->orderBy('kelas_id', 'ASC')->get();

                // Interval KKM
                $range = (100 - $kkm->kkm) / 3;
                $kkm->predikat_c = round($kkm->kkm, 0);
                $kkm->predikat_b = round($kkm->kkm + $range, 0);
                $kkm->predikat_a = round($kkm->kkm + ($range * 2), 0);

                // Data Nilai
                $data_anggota_kelas = AnggotaKelas::where('kelas_id', $pembelajaran->kelas_id)->get();
                foreach ($data_anggota_kelas as $anggota_kelas) {

                    $nilai_tugas = KtspNilaiTugas::where('anggota_kelas_id', $anggota_kelas->id)->where('pembelajaran_id', $pembelajaran->id)->first();
                    $nilai_uh = KtspNilaiUh::where('anggota_kelas_id', $anggota_kelas->id)->where('pembelajaran_id', $pembelajaran->id)->first();
                    $nilai_uts_uas = KtspNilaiUtsUas::where('anggota_kelas_id', $anggota_kelas->id)->where('pembelajaran_id', $pembelajaran->id)->first();

                    $nilai_akhir_raport = (($nilai_tugas->nilai * $bobot_penilaian->bobot_tugas) + ($nilai_uh->nilai * $bobot_penilaian->bobot_uh) + ($nilai_uts_uas->nilai_uts * $bobot_penilaian->bobot_uts) + ($nilai_uts_uas->nilai_uas * $bobot_penilaian->bobot_uas)) / ($bobot_penilaian->bobot_tugas + $bobot_penilaian->bobot_uh + $bobot_penilaian->bobot_uts + $bobot_penilaian->bobot_uas);
                    $anggota_kelas->nilai_akhir = round($nilai_akhir_raport, 0);
                }
                return view('guru.ktsp.kirimnilai.create', compact('title', 'data_pembelajaran', 'pembelajaran', 'kkm', 'data_anggota_kelas'));
            }
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
        for ($cound_siswa = 0; $cound_siswa < count($request->anggota_kelas_id); $cound_siswa++) {
            $data_nilai = array(
                'pembelajaran_id' => $request->pembelajaran_id,
                'kkm' => $request->kkm,
                'anggota_kelas_id'  => $request->anggota_kelas_id[$cound_siswa],
                'nilai_akhir'  => ltrim($request->nilai_akhir[$cound_siswa]),
                'predikat'  => $request->predikat[$cound_siswa],
                'created_at'  => Carbon::now(),
                'updated_at'  => Carbon::now(),
            );

            $cek_nilai = KtspNilaiAkhirRaport::where('pembelajaran_id', $request->pembelajaran_id)->where('anggota_kelas_id', $request->anggota_kelas_id[$cound_siswa])->first();
            if (is_null($cek_nilai)) {
                KtspNilaiAkhirRaport::insert($data_nilai);
            } else {
                $cek_nilai->update($data_nilai);
            }
        }
        return redirect('guru/kirimnilai')->with('toast_success', 'Nilai akhir raport berhasil dikirim');
    }
}
