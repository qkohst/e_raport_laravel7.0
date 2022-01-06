<?php

namespace App\Http\Controllers\Admin\KTSP;

use App\AnggotaEkstrakulikuler;
use App\AnggotaKelas;
use App\Ekstrakulikuler;
use App\Exports\AdminKTSPLegerNilaiExport;
use App\Http\Controllers\Controller;
use App\Kelas;
use App\KtspMappingMapel;
use App\KtspNilaiAkhirRaport;
use App\Mapel;
use App\NilaiEkstrakulikuler;
use App\Pembelajaran;
use App\Tapel;
use Illuminate\Http\Request;
use Excel;

class LegerNilaiSiswaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $title = 'Leger Nilai Siswa';
        $data_kelas = Kelas::where('tapel_id', session()->get('tapel_id'))->get();
        return view('admin.ktsp.legernilai.pilihkelas', compact('title', 'data_kelas'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $title = 'Leger Nilai Siswa';
        $tapel = Tapel::findorfail(session()->get('tapel_id'));
        $kelas = Kelas::findorfail($request->kelas_id);
        $data_kelas = Kelas::where('tapel_id', session()->get('tapel_id'))->get();

        $data_id_mapel_semester_ini = Mapel::where('tapel_id', $tapel->id)->get('id');
        $data_id_mapel_wajib = KtspMappingMapel::whereIn('mapel_id', $data_id_mapel_semester_ini)->where('kelompok', 1)->get('mapel_id');
        $data_id_mapel_pilihan = KtspMappingMapel::whereIn('mapel_id', $data_id_mapel_semester_ini)->where('kelompok', 2)->get('mapel_id');
        $data_id_mapel_muatan_lokal = KtspMappingMapel::whereIn('mapel_id', $data_id_mapel_semester_ini)->where('kelompok', 3)->get('mapel_id');

        $data_id_pembelajaran_all = Pembelajaran::where('kelas_id', $kelas->id)->get('id');
        $data_id_pembelajaran_mapel_wajib = Pembelajaran::where('kelas_id', $kelas->id)->whereIn('mapel_id', $data_id_mapel_wajib)->get('id');
        $data_id_pembelajaran_mapel_pilihan = Pembelajaran::where('kelas_id', $kelas->id)->whereIn('mapel_id', $data_id_mapel_pilihan)->get('id');
        $data_id_pembelajaran_mapel_muatan_lokal = Pembelajaran::where('kelas_id', $kelas->id)->whereIn('mapel_id', $data_id_mapel_muatan_lokal)->get('id');

        $data_mapel_wajib = KtspNilaiAkhirRaport::whereIn('pembelajaran_id', $data_id_pembelajaran_mapel_wajib)->groupBy('pembelajaran_id')->get();
        $data_mapel_pilihan = KtspNilaiAkhirRaport::whereIn('pembelajaran_id', $data_id_pembelajaran_mapel_pilihan)->groupBy('pembelajaran_id')->get();
        $data_mapel_muatan_lokal = KtspNilaiAkhirRaport::whereIn('pembelajaran_id', $data_id_pembelajaran_mapel_muatan_lokal)->groupBy('pembelajaran_id')->get();

        $data_ekstrakulikuler = Ekstrakulikuler::where('tapel_id', $tapel->id)->get();
        $count_ekstrakulikuler = count($data_ekstrakulikuler);

        $data_anggota_kelas = AnggotaKelas::where('kelas_id', $kelas->id)->get();
        foreach ($data_anggota_kelas as $anggota_kelas) {
            $data_nilai_mapel_wajib = KtspNilaiAkhirRaport::whereIn('pembelajaran_id', $data_id_pembelajaran_mapel_wajib)->where('anggota_kelas_id', $anggota_kelas->id)->get();
            $data_nilai_mapel_pilihan = KtspNilaiAkhirRaport::whereIn('pembelajaran_id', $data_id_pembelajaran_mapel_pilihan)->where('anggota_kelas_id', $anggota_kelas->id)->get();
            $data_nilai_mapel_muatan_lokal = KtspNilaiAkhirRaport::whereIn('pembelajaran_id', $data_id_pembelajaran_mapel_muatan_lokal)->where('anggota_kelas_id', $anggota_kelas->id)->get();

            $anggota_kelas->data_nilai_mapel_wajib = $data_nilai_mapel_wajib;
            $anggota_kelas->data_nilai_mapel_pilihan = $data_nilai_mapel_pilihan;
            $anggota_kelas->data_nilai_mapel_muatan_lokal = $data_nilai_mapel_muatan_lokal;

            $jumlah_nilai = KtspNilaiAkhirRaport::where('anggota_kelas_id', $anggota_kelas->id)->sum('nilai_akhir');
            $rt_nilai = KtspNilaiAkhirRaport::where('anggota_kelas_id', $anggota_kelas->id)->avg('nilai_akhir');

            $anggota_kelas->jumlah_nilai = round($jumlah_nilai, 0);
            $anggota_kelas->rt_nilai = round($rt_nilai, 0);

            $anggota_kelas->data_nilai_ekstrakulikuler = Ekstrakulikuler::where('tapel_id', $tapel->id)->get();

            foreach ($anggota_kelas->data_nilai_ekstrakulikuler as $data_nilai_ekstrakulikuler) {
                $cek_anggota_ekstra = AnggotaEkstrakulikuler::where('ekstrakulikuler_id', $data_nilai_ekstrakulikuler->id)->where('anggota_kelas_id', $anggota_kelas->id)->first();
                if (is_null($cek_anggota_ekstra)) {
                    $data_nilai_ekstrakulikuler->nilai = '-';
                } else {
                    $cek_nilai_ekstra = NilaiEkstrakulikuler::where('ekstrakulikuler_id', $data_nilai_ekstrakulikuler->id)->where('anggota_ekstrakulikuler_id', $cek_anggota_ekstra->id)->first();
                    if (is_null($cek_nilai_ekstra)) {
                        $data_nilai_ekstrakulikuler->nilai = '-';
                    } else {
                        $data_nilai_ekstrakulikuler->nilai = $cek_nilai_ekstra->nilai;
                    }
                }
            }
        }

        return view('admin.ktsp.legernilai.index', compact('title', 'kelas', 'data_kelas', 'data_mapel_wajib', 'data_mapel_pilihan', 'data_mapel_muatan_lokal', 'data_ekstrakulikuler', 'count_ekstrakulikuler', 'data_anggota_kelas'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $kelas = Kelas::findorfail($id);
        $filename = 'leger_nilai_ktsp_siswa_kelas ' . $kelas->nama_kelas . ' ' . date('Y-m-d H_i_s') . '.xls';
        return Excel::download(new AdminKTSPLegerNilaiExport($id), $filename);
    }
}
