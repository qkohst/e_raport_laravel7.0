<?php

namespace App\Http\Controllers\Guru\K13;

use App\AnggotaKelas;
use App\Guru;
use App\Http\Controllers\Controller;
use App\K13KkmMapel;
use App\K13NilaiAkhirRaport;
use App\K13NilaiKeterampilan;
use App\K13NilaiPengetahuan;
use App\K13NilaiPtsPas;
use App\K13NilaiSosial;
use App\K13NilaiSpiritual;
use App\K13RencanaBobotPenilaian;
use App\K13RencanaNilaiKeterampilan;
use App\K13RencanaNilaiPengetahuan;
use App\K13RencanaNilaiSosial;
use App\K13RencanaNilaiSpiritual;
use App\Kelas;
use App\Pembelajaran;
use App\Tapel;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class KirimNilaiAkhirController extends Controller
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

        return view('guru.k13.kirimnilaiakhir.index', compact('title', 'data_pembelajaran'));
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

            $kkm = K13KkmMapel::where('mapel_id', $pembelajaran->mapel_id)->where('kelas_id', $pembelajaran->kelas_id)->first();
            $bobot_penilaian = K13RencanaBobotPenilaian::where('pembelajaran_id', $pembelajaran->id)->first();

            if (is_null($kkm)) {
                return back()->with('toast_warning', 'KKM mata pelajaran belum ditentukan');
            } elseif (is_null($bobot_penilaian)) {
                return back()->with('toast_warning', 'Bobot penilaian belum ditentukan');
            }

            $rencana_nilai_pengetahuan = K13RencanaNilaiPengetahuan::where('pembelajaran_id', $pembelajaran->id)->get('id');
            $rencana_nilai_keterampilan = K13RencanaNilaiKeterampilan::where('pembelajaran_id', $pembelajaran->id)->get('id');
            $rencana_nilai_spiritual = K13RencanaNilaiSpiritual::where('pembelajaran_id', $pembelajaran->id)->get('id');
            $rencana_nilai_sosial = K13RencanaNilaiSosial::where('pembelajaran_id', $pembelajaran->id)->get('id');

            if (count($rencana_nilai_pengetahuan) == 0 || count($rencana_nilai_keterampilan) == 0 || count($rencana_nilai_spiritual) == 0 || count($rencana_nilai_sosial) == 0) {
                return back()->with('toast_warning', 'Data rencana penilaian tidak ditemukan');
            } else {
                $nilai_pengetahuan = K13NilaiPengetahuan::whereIn('k13_rencana_nilai_pengetahuan_id', $rencana_nilai_pengetahuan)->groupBy('k13_rencana_nilai_pengetahuan_id')->get();
                $nilai_keterampilan = K13NilaiKeterampilan::whereIn('k13_rencana_nilai_keterampilan_id', $rencana_nilai_keterampilan)->groupBy('k13_rencana_nilai_keterampilan_id')->get();
                $nilai_spiritual = K13NilaiSpiritual::whereIn('k13_rencana_nilai_spiritual_id', $rencana_nilai_spiritual)->groupBy('k13_rencana_nilai_spiritual_id')->get();
                $nilai_sosial = K13NilaiSosial::whereIn('k13_rencana_nilai_sosial_id', $rencana_nilai_sosial)->groupBy('k13_rencana_nilai_sosial_id')->get();

                if (count($rencana_nilai_pengetahuan) != count($nilai_pengetahuan) || count($rencana_nilai_keterampilan) != count($nilai_keterampilan) || count($rencana_nilai_spiritual) != count($nilai_spiritual) || count($rencana_nilai_sosial) != count($nilai_sosial)) {
                    return back()->with('toast_warning', 'Jumlah penilaian tidak sesuai dengan jumlah perencanaan');
                } else {
                    $data_nilai_pts_pas = K13NilaiPtsPas::where('pembelajaran_id', $pembelajaran->id)->get();

                    if (count($data_nilai_pts_pas) == 0) {
                        return back()->with('toast_warning', 'Nilai PTS & PAS tidak ditemukan');
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

                            // Olah Nilai Pengetahuan
                            $data_nilai_pengetahuan = K13NilaiPengetahuan::whereIn('k13_rencana_nilai_pengetahuan_id', $rencana_nilai_pengetahuan)->where('anggota_kelas_id', $anggota_kelas->id)->get();
                            foreach ($data_nilai_pengetahuan as $nilai) {
                                $bobot = K13RencanaNilaiPengetahuan::findorfail($nilai->k13_rencana_nilai_pengetahuan_id);
                                $nilai->nilai_pengetahuan = $nilai->nilai * $bobot->bobot_teknik_penilaian;
                                $nilai->bobot_penilaian = $bobot->bobot_teknik_penilaian;
                            }

                            $nilai_pts_pas = K13NilaiPtsPas::where('pembelajaran_id', $pembelajaran->id)->where('anggota_kelas_id', $anggota_kelas->id)->first();
                            $rencana_bobot_penilaian = K13RencanaBobotPenilaian::where('pembelajaran_id', $pembelajaran->id)->first();

                            $rata_nilai_pengetahuan = $data_nilai_pengetahuan->sum('nilai_pengetahuan') / $data_nilai_pengetahuan->sum('bobot_penilaian');
                            $nilai_akhir_pengetahuan = (($rata_nilai_pengetahuan * $rencana_bobot_penilaian->bobot_ph) + ($nilai_pts_pas->nilai_pts * $rencana_bobot_penilaian->bobot_pts) + ($nilai_pts_pas->nilai_pas * $rencana_bobot_penilaian->bobot_pas)) / ($rencana_bobot_penilaian->bobot_ph + $rencana_bobot_penilaian->bobot_pts + $rencana_bobot_penilaian->bobot_pas);
                            // Akhir Olah Nilai Pengetahuan

                            $nilai_keterampilan = K13NilaiKeterampilan::whereIn('k13_rencana_nilai_keterampilan_id', $rencana_nilai_keterampilan)->where('anggota_kelas_id', $anggota_kelas->id)->avg('nilai');
                            $nilai_spiritual = K13NilaiSpiritual::whereIn('k13_rencana_nilai_spiritual_id', $rencana_nilai_spiritual)->where('anggota_kelas_id', $anggota_kelas->id)->avg('nilai');
                            $nilai_sosial = K13NilaiSosial::whereIn('k13_rencana_nilai_sosial_id', $rencana_nilai_sosial)->where('anggota_kelas_id', $anggota_kelas->id)->avg('nilai');

                            $anggota_kelas->nilai_pengetahuan = round($nilai_akhir_pengetahuan, 0);
                            $anggota_kelas->nilai_keterampilan = round($nilai_keterampilan, 0);
                            $anggota_kelas->nilai_spiritual = round($nilai_spiritual, 0);
                            $anggota_kelas->nilai_sosial = round($nilai_sosial, 0);
                        }
                        return view('guru.k13.kirimnilaiakhir.create', compact('title', 'data_pembelajaran', 'pembelajaran', 'kkm', 'data_anggota_kelas'));
                    }
                }
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
                'nilai_pengetahuan'  => ltrim($request->nilai_pengetahuan[$cound_siswa]),
                'predikat_pengetahuan'  => $request->predikat_pengetahuan[$cound_siswa],
                'nilai_keterampilan'  => ltrim($request->nilai_keterampilan[$cound_siswa]),
                'predikat_keterampilan'  => $request->predikat_keterampilan[$cound_siswa],
                'nilai_spiritual'  => $request->nilai_spiritual[$cound_siswa],
                'nilai_sosial'  => $request->nilai_sosial[$cound_siswa],
                'created_at'  => Carbon::now(),
                'updated_at'  => Carbon::now(),
            );

            $cek_nilai = K13NilaiAkhirRaport::where('pembelajaran_id', $request->pembelajaran_id)->where('anggota_kelas_id', $request->anggota_kelas_id[$cound_siswa])->first();
            if (is_null($cek_nilai)) {
                K13NilaiAkhirRaport::insert($data_nilai);
            } else {
                $cek_nilai->update($data_nilai);
            }
        }
        return redirect('guru/kirimnilaiakhir')->with('toast_success', 'Nilai akhir raport berhasil dikirim');
    }
}
