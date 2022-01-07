<?php

namespace App\Http\Controllers;

use App\AnggotaEkstrakulikuler;
use App\AnggotaKelas;
use App\Ekstrakulikuler;
use App\Guru;
use App\K13DeskripsiNilaiSiswa;
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
use App\KtspBobotPenilaian;
use App\KtspDeskripsiNilaiSiswa;
use App\KtspKkmMapel;
use App\KtspNilaiAkhirRaport;
use App\KtspNilaiTugas;
use App\KtspNilaiUh;
use App\KtspNilaiUtsUas;
use App\Pembelajaran;
use App\Pengumuman;
use App\RiwayatLogin;
use App\Sekolah;
use App\Siswa;
use App\Tapel;
use Carbon\Carbon;
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
        $data_pengumuman = Pengumuman::all();
        $data_riwayat_login = RiwayatLogin::where('user_id', '!=', Auth::user()->id)->where('updated_at', '>=', Carbon::today())->orderBy('status_login', 'DESC')->orderBy('updated_at', 'DESC')->get();

        if (Auth::user()->role == 1) {
            $jumlah_guru = Guru::all()->count();
            $jumlah_siswa = Siswa::where('status', 1)->count();
            $jumlah_kelas = Kelas::where('tapel_id', $tapel->id)->count();
            $jumlah_ekstrakulikuler = Ekstrakulikuler::where('tapel_id', $tapel->id)->count();

            return view('dashboard.admin', compact(
                'title',
                'data_pengumuman',
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

            // Dashboard Guru Mapel
            if (session()->get('akses_sebagai') == 'Guru Mapel') {
                $id_kelas = Kelas::where('tapel_id', $tapel->id)->get('id');

                $jumlah_kelas_diampu = count(Pembelajaran::where('guru_id', $guru->id)->whereIn('kelas_id', $id_kelas)->where('status', 1)->groupBy('kelas_id')->get());
                $jumlah_mapel_diampu = count(Pembelajaran::where('guru_id', $guru->id)->whereIn('kelas_id', $id_kelas)->where('status', 1)->groupBy('mapel_id')->get());

                $id_kelas_diampu = Pembelajaran::where('guru_id', $guru->id)->whereIn('kelas_id', $id_kelas)->where('status', 1)->groupBy('kelas_id')->get('kelas_id');
                $jumlah_siswa_diampu = AnggotaKelas::whereIn('kelas_id', $id_kelas_diampu)->count();

                $jumlah_ekstrakulikuler_diampu = Ekstrakulikuler::where('pembina_id', $guru->id)->count();

                $data_capaian_penilaian = Pembelajaran::where('guru_id', $guru->id)->whereIn('kelas_id', $id_kelas)->where('status', 1)->get();

                // Capaian Penilaian K13 
                if (session()->get('kurikulum') == '2013') {
                    foreach ($data_capaian_penilaian as $penilaian) {
                        $kkm = K13KkmMapel::where('mapel_id', $penilaian->mapel->id)->where('kelas_id', $penilaian->kelas_id)->first();

                        $rencana_pengetahuan = K13RencanaNilaiPengetahuan::where('pembelajaran_id', $penilaian->id)->groupBy('kode_penilaian')->get();
                        $penilaian->jumlah_rencana_pengetahuan = count($rencana_pengetahuan);

                        $rencana_keterampilan = K13RencanaNilaiKeterampilan::where('pembelajaran_id', $penilaian->id)->groupBy('kode_penilaian')->get();
                        $penilaian->jumlah_rencana_keterampilan = count($rencana_keterampilan);

                        $rencana_spiritual = K13RencanaNilaiSpiritual::where('pembelajaran_id', $penilaian->id)->get();
                        $penilaian->jumlah_rencana_spiritual = count($rencana_spiritual);

                        $rencana_sosial = K13RencanaNilaiSosial::where('pembelajaran_id', $penilaian->id)->get();
                        $penilaian->jumlah_rencana_sosial = count($rencana_sosial);

                        $id_rencana_nilai_pengetahuan = K13RencanaNilaiPengetahuan::where('pembelajaran_id', $penilaian->id)->groupBy('kode_penilaian')->get('id');
                        $pengetahuan_telah_dinilai = K13NilaiPengetahuan::whereIn('k13_rencana_nilai_pengetahuan_id', $id_rencana_nilai_pengetahuan)->groupBy('k13_rencana_nilai_pengetahuan_id')->get();
                        $penilaian->jumlah_pengetahuan_telah_dinilai = count($pengetahuan_telah_dinilai);

                        $id_rencana_nilai_keterampilan = K13RencanaNilaiKeterampilan::where('pembelajaran_id', $penilaian->id)->groupBy('kode_penilaian')->get('id');
                        $keterampilan_telah_dinilai = K13NilaiKeterampilan::whereIn('k13_rencana_nilai_keterampilan_id', $id_rencana_nilai_keterampilan)->groupBy('k13_rencana_nilai_keterampilan_id')->get();
                        $penilaian->jumlah_keterampilan_telah_dinilai = count($keterampilan_telah_dinilai);

                        $id_rencana_nilai_spiritual = K13RencanaNilaiSpiritual::where('pembelajaran_id', $penilaian->id)->get('id');
                        $spiritual_telah_dinilai = K13NilaiSpiritual::whereIn('k13_rencana_nilai_spiritual_id', $id_rencana_nilai_spiritual)->groupBy('k13_rencana_nilai_spiritual_id')->get();
                        $penilaian->jumlah_spiritual_telah_dinilai = count($spiritual_telah_dinilai);

                        $id_rencana_nilai_sosial = K13RencanaNilaiSosial::where('pembelajaran_id', $penilaian->id)->get('id');
                        $sosial_telah_dinilai = K13NilaiSosial::whereIn('k13_rencana_nilai_sosial_id', $id_rencana_nilai_sosial)->groupBy('k13_rencana_nilai_sosial_id')->get();
                        $penilaian->jumlah_sosial_telah_dinilai = count($sosial_telah_dinilai);

                        $nilai_pts_pas = K13NilaiPtsPas::where('pembelajaran_id', $penilaian->id)->get();
                        $penilaian->nilai_pts_pas = count($nilai_pts_pas);

                        $nilai_akhir_raport = K13NilaiAkhirRaport::where('pembelajaran_id', $penilaian->id)->get();
                        $penilaian->kirim_nilai_raport = count($nilai_akhir_raport);

                        $deskripsi_nilai_akhir = K13DeskripsiNilaiSiswa::where('pembelajaran_id', $penilaian->id)->get();
                        $penilaian->proses_deskripsi = count($deskripsi_nilai_akhir);

                        $bobot = K13RencanaBobotPenilaian::where('pembelajaran_id', $penilaian->id)->first();
                        if (is_null($bobot)) {
                            $penilaian->bobot_ph = null;
                            $penilaian->bobot_pts = null;
                            $penilaian->bobot_pas = null;
                        } else {
                            $penilaian->bobot_ph = $bobot->bobot_ph;
                            $penilaian->bobot_pts = $bobot->bobot_pts;
                            $penilaian->bobot_pas = $bobot->bobot_pas;
                        }

                        if (is_null($kkm)) {
                            $penilaian->kkm = null;
                        } else {
                            $penilaian->kkm = $kkm->kkm;
                        }
                    }
                } elseif (session()->get('kurikulum') == '2006') {
                    // Capaian Penilaian KTSP
                    foreach ($data_capaian_penilaian as $penilaian) {
                        $kkm = KtspKkmMapel::where('mapel_id', $penilaian->mapel->id)->where('kelas_id', $penilaian->kelas_id)->first();

                        $nilai_tugas = KtspNilaiTugas::where('pembelajaran_id', $penilaian->id)->get();
                        $penilaian->nilai_tugas = count($nilai_tugas);

                        $nilai_uh = KtspNilaiUh::where('pembelajaran_id', $penilaian->id)->get();
                        $penilaian->nilai_uh = count($nilai_uh);

                        $nilai_uts_uas = KtspNilaiUtsUas::where('pembelajaran_id', $penilaian->id)->get();
                        $penilaian->nilai_uts_uas = count($nilai_uts_uas);

                        $kirim_nilai = KtspNilaiAkhirRaport::where('pembelajaran_id', $penilaian->id)->get();
                        $penilaian->kirim_nilai = count($kirim_nilai);

                        $deskripsi = KtspDeskripsiNilaiSiswa::where('pembelajaran_id', $penilaian->id)->get();
                        $penilaian->deskripsi = count($deskripsi);

                        $bobot = KtspBobotPenilaian::where('pembelajaran_id', $penilaian->id)->first();
                        if (is_null($bobot)) {
                            $penilaian->bobot_tugas = null;
                            $penilaian->bobot_uh = null;
                            $penilaian->bobot_uts = null;
                            $penilaian->bobot_uas = null;
                        } else {
                            $penilaian->bobot_tugas = $bobot->bobot_tugas;
                            $penilaian->bobot_uh = $bobot->bobot_uh;
                            $penilaian->bobot_uts = $bobot->bobot_uts;
                            $penilaian->bobot_uas = $bobot->bobot_uas;
                        }

                        if (is_null($kkm)) {
                            $penilaian->kkm = null;
                        } else {
                            $penilaian->kkm = $kkm->kkm;
                        }
                    }
                }

                return view('dashboard.guru', compact(
                    'title',
                    'data_pengumuman',
                    'data_riwayat_login',
                    'sekolah',
                    'tapel',
                    'jumlah_kelas_diampu',
                    'jumlah_mapel_diampu',
                    'jumlah_siswa_diampu',
                    'jumlah_ekstrakulikuler_diampu',
                    'data_capaian_penilaian',
                ));
            } elseif (session()->get('akses_sebagai') == 'Wali Kelas') {

                $id_kelas_diampu = Kelas::where('tapel_id', $tapel->id)->where('guru_id', $guru->id)->get('id');
                $jumlah_anggota_kelas = count(AnggotaKelas::whereIn('kelas_id', $id_kelas_diampu)->get());

                $id_pembelajaran_kelas = Pembelajaran::whereIn('kelas_id', $id_kelas_diampu)->where('status', 1)->get('id');
                if (session()->get('kurikulum') == '2013') {
                    $jumlah_kirim_nilai = count(K13NilaiAkhirRaport::whereIn('pembelajaran_id', $id_pembelajaran_kelas)->groupBy('pembelajaran_id')->get());
                    $jumlah_proses_deskripsi = count(K13DeskripsiNilaiSiswa::whereIn('pembelajaran_id', $id_pembelajaran_kelas)->groupBy('pembelajaran_id')->get());
                } elseif (session()->get('kurikulum') == '2006') {
                    $jumlah_kirim_nilai = count(KtspNilaiAkhirRaport::whereIn('pembelajaran_id', $id_pembelajaran_kelas)->groupBy('pembelajaran_id')->get());
                    $jumlah_proses_deskripsi = count(KtspDeskripsiNilaiSiswa::whereIn('pembelajaran_id', $id_pembelajaran_kelas)->groupBy('pembelajaran_id')->get());
                }

                // Dashboard Wali Kelas
                return view('dashboard.walikelas', compact(
                    'title',
                    'data_pengumuman',
                    'data_riwayat_login',
                    'sekolah',
                    'tapel',
                    'jumlah_anggota_kelas',
                    'jumlah_kirim_nilai',
                    'jumlah_proses_deskripsi',
                ));
            }
        } elseif (Auth::user()->role == 3) {

            $siswa = Siswa::where('user_id', Auth::user()->id)->first();

            $data_id_kelas = Kelas::where('tapel_id', $tapel->id)->get('id');
            $data_id_ekstrakulikuler = Ekstrakulikuler::where('tapel_id', $tapel->id)->get('id');

            $anggota_kelas = AnggotaKelas::whereIn('kelas_id', $data_id_kelas)->where('siswa_id', $siswa->id)->first();
            if (is_null($anggota_kelas)) {
                $jumlah_ekstrakulikuler = '-';
                $jumlah_mapel = '-';
            } else {
                $jumlah_ekstrakulikuler = AnggotaEkstrakulikuler::where('anggota_kelas_id', $anggota_kelas->id)->whereIn('ekstrakulikuler_id', $data_id_ekstrakulikuler)->count();
                $jumlah_mapel = Pembelajaran::where('kelas_id', $anggota_kelas->kelas->id)->where('status', 1)->count();
            }

            return view('dashboard.siswa', compact(
                'title',
                'data_pengumuman',
                'data_riwayat_login',
                'sekolah',
                'tapel',
                'jumlah_ekstrakulikuler',
                'jumlah_mapel',
            ));
        }
    }
}
