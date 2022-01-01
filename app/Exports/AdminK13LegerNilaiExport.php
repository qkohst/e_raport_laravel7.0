<?php

namespace App\Exports;

use App\AnggotaEkstrakulikuler;
use App\AnggotaKelas;
use App\Ekstrakulikuler;
use App\Guru;
use App\K13DeskripsiSikapSiswa;
use App\K13MappingMapel;
use App\K13NilaiAkhirRaport;
use App\Kelas;
use App\Mapel;
use App\NilaiEkstrakulikuler;
use App\Pembelajaran;
use App\Sekolah;
use App\Tapel;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;

class AdminK13LegerNilaiExport implements FromView, ShouldAutoSize
{
    protected $id;

    function __construct($id)
    {
        $this->id = $id;
    }

    public function view(): View
    {
        $time_download = date('Y-m-d H:i:s');

        $sekolah = Sekolah::first();
        $tapel = Tapel::findorfail(session()->get('tapel_id'));
        $kelas = Kelas::findorfail($this->id);

        $data_id_mapel_semester_ini = Mapel::where('tapel_id', $tapel->id)->get('id');

        $data_id_mapel_kelompok_a = K13MappingMapel::whereIn('mapel_id', $data_id_mapel_semester_ini)->where('kelompok', 'A')->get('mapel_id');
        $data_id_mapel_kelompok_b = K13MappingMapel::whereIn('mapel_id', $data_id_mapel_semester_ini)->where('kelompok', 'B')->get('mapel_id');

        $data_id_pembelajaran_all = Pembelajaran::where('kelas_id', $kelas->id)->get('id');
        $data_id_pembelajaran_a = Pembelajaran::where('kelas_id', $kelas->id)->whereIn('mapel_id', $data_id_mapel_kelompok_a)->get('id');
        $data_id_pembelajaran_b = Pembelajaran::where('kelas_id', $kelas->id)->whereIn('mapel_id', $data_id_mapel_kelompok_b)->get('id');

        $data_mapel_kelompok_a = K13NilaiAkhirRaport::whereIn('pembelajaran_id', $data_id_pembelajaran_a)->groupBy('pembelajaran_id')->get();
        $data_mapel_kelompok_b = K13NilaiAkhirRaport::whereIn('pembelajaran_id', $data_id_pembelajaran_b)->groupBy('pembelajaran_id')->get();

        $data_ekstrakulikuler = Ekstrakulikuler::where('tapel_id', $tapel->id)->get();
        $count_ekstrakulikuler = count($data_ekstrakulikuler);

        $data_anggota_kelas = AnggotaKelas::where('kelas_id', $kelas->id)->get();
        foreach ($data_anggota_kelas as $anggota_kelas) {

            $data_nilai_kelompok_a = K13NilaiAkhirRaport::whereIn('pembelajaran_id', $data_id_pembelajaran_a)->where('anggota_kelas_id', $anggota_kelas->id)->get();
            $data_nilai_kelompok_b = K13NilaiAkhirRaport::whereIn('pembelajaran_id', $data_id_pembelajaran_b)->where('anggota_kelas_id', $anggota_kelas->id)->get();

            $anggota_kelas->data_nilai_kelompok_a = $data_nilai_kelompok_a;
            $anggota_kelas->data_nilai_kelompok_b = $data_nilai_kelompok_b;

            $rt_pengetahuan = K13NilaiAkhirRaport::whereIn('pembelajaran_id', $data_id_pembelajaran_all)->where('anggota_kelas_id', $anggota_kelas->id)->avg('nilai_pengetahuan');
            $rt_keterampilan = K13NilaiAkhirRaport::whereIn('pembelajaran_id', $data_id_pembelajaran_all)->where('anggota_kelas_id', $anggota_kelas->id)->avg('nilai_keterampilan');

            $anggota_kelas->rata_rata_pengetahuan = round($rt_pengetahuan, 0);
            $anggota_kelas->rata_rata_keterampilan = round($rt_keterampilan, 0);

            $cek_deskripsi_sikap = K13DeskripsiSikapSiswa::where('anggota_kelas_id', $anggota_kelas->id)->first();
            if (is_null($cek_deskripsi_sikap)) {
                $anggota_kelas->nilai_spiritual = '-';
                $anggota_kelas->nilai_sosial = '-';
            } else {
                $anggota_kelas->nilai_spiritual = $cek_deskripsi_sikap->nilai_spiritual;
                $anggota_kelas->nilai_sosial = $cek_deskripsi_sikap->nilai_sosial;
            }

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

        return view('exports.admin.k13.legernilai', compact('time_download', 'sekolah', 'kelas', 'data_mapel_kelompok_a', 'data_mapel_kelompok_b', 'data_ekstrakulikuler', 'count_ekstrakulikuler', 'data_anggota_kelas'));
    }
}
