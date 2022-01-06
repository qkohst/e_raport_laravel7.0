<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Leger KTSP</title>
</head>

<body>
  <table>
    <thead>
      <tr>
        <td colspan="9"><strong>LEGER NILAI SISWA</strong></td>
      </tr>
      <tr>
        <td colspan="9"><strong>{{$sekolah->nama_sekolah}}</strong></td>
      </tr>
      <tr>
        <td colspan="9">Waktu download : {{$time_download}}</td>
      </tr>
      <tr>
        <td colspan="9">Didownload oleh : {{Auth::user()->admin->nama_lengkap}} ({{Auth::user()->username}})</td>
      </tr>
    </thead>
    <tbody>
      <!-- siswa  -->
      <tr>
      </tr>
      <!-- Header -->

      <tr>
        <td rowspan="2" style="border: 1px solid #000000; background-color: #d9ecd0;"><strong>NO</strong></td>
        <td rowspan=" 2" align="center" style="border: 1px solid #000000; background-color: #d9ecd0;"><strong>NIS</strong></td>
        <td rowspan="2" align="center" style="border: 1px solid #000000; background-color: #d9ecd0;"><strong>NAMA SISWA</strong></td>
        <td rowspan="2" align="center" style="border: 1px solid #000000; background-color: #d9ecd0;"><strong>KELAS</strong></td>
        <td colspan="{{count($data_mapel_wajib)+count($data_mapel_pilihan)+count($data_mapel_muatan_lokal)}}" align="center" style="border: 1px solid #000000; background-color: #d9ecd0;"><strong>Nilai</strong></td>

        <td rowspan="2" align="center" style="border: 1px solid #000000; background-color: #d9ecd0;"><strong>Jumlah</strong></td>
        <td rowspan="2" align="center" style="border: 1px solid #000000; background-color: #d9ecd0;"><strong>Rata-Rata</strong></td>
        <td colspan="3" align="center" style="border: 1px solid #000000; background-color: #d9ecd0;"><strong>Kehadiran</strong></td>
        <td colspan="{{$count_ekstrakulikuler}}" align="center" style="border: 1px solid #000000; background-color: #d9ecd0;"><strong>Ekstrakulikuler</strong></td>
      </tr>

      <tr>
        @foreach($data_mapel_wajib->sortBy('pembelajaran.mapel.ktsp_mapping_mapel.nomor_urut') as $mapel_wajib)
        <th align="center" style="border: 1px solid #000000; background-color: #d9ecd0;"><strong>{{$mapel_wajib->pembelajaran->mapel->ringkasan_mapel}}</strong></th>
        @endforeach

        @foreach($data_mapel_pilihan->sortBy('pembelajaran.mapel.ktsp_mapping_mapel.nomor_urut') as $mapel_pilihan)
        <th align="center" style="border: 1px solid #000000; background-color: #d9ecd0;"><strong>{{$mapel_pilihan->pembelajaran->mapel->ringkasan_mapel}}</strong></th>
        @endforeach

        @foreach($data_mapel_muatan_lokal->sortBy('pembelajaran.mapel.ktsp_mapping_mapel.nomor_urut') as $muatan_lokal)
        <th align="center" style="border: 1px solid #000000; background-color: #d9ecd0;"><strong>{{$muatan_lokal->pembelajaran->mapel->ringkasan_mapel}}</strong></th>
        @endforeach

        @if(count($data_mapel_wajib)+count($data_mapel_pilihan)+count($data_mapel_muatan_lokal) == 0)
        <td align="center" style="border: 1px solid #000000; background-color: #d9ecd0;">-</td>
        @endif

        <td align="center" style="border: 1px solid #000000; background-color: #d9ecd0;"><strong>S</strong></td>
        <td align="center" style="border: 1px solid #000000; background-color: #d9ecd0;"><strong>I</strong></td>
        <td align="center" style="border: 1px solid #000000; background-color: #d9ecd0;"><strong>A</strong></td>
        @foreach($data_ekstrakulikuler->sortBy('id') as $ekstrakulikuler)
        <td align="center" style="border: 1px solid #000000; background-color: #d9ecd0;"><strong>{{$ekstrakulikuler->nama_ekstrakulikuler}}</strong></td>
        @endforeach
      </tr>
      <!-- /Header -->

      <!-- Data  -->
      <?php $no = 0; ?>
      @foreach($data_anggota_kelas->sortBy('siswa.nama_lengkap') as $anggota_kelas)
      <?php $no++; ?>
      <tr>
        <td align="center" style="border: 1px solid #000000;">{{$no}}</td>
        <td align="center" style="border: 1px solid #000000;">{{$anggota_kelas->siswa->nis}}</td>
        <td style="border: 1px solid #000000;">{{$anggota_kelas->siswa->nama_lengkap}}</td>
        <td align="center" style="border: 1px solid #000000;">{{$anggota_kelas->kelas->nama_kelas}}</td>

        @foreach($anggota_kelas->data_nilai_mapel_wajib->sortBy('pembelajaran.mapel.ktsp_mapping_mapel.nomor_urut') as $nilai_mapel_wajib)
        <td align="center" style="border: 1px solid #000000;">{{$nilai_mapel_wajib->nilai_akhir}}</td>
        @endforeach

        @foreach($anggota_kelas->data_nilai_mapel_pilihan->sortBy('pembelajaran.mapel.ktsp_mapping_mapel.nomor_urut') as $nilai_mapel_pilihan)
        <td align="center" style="border: 1px solid #000000;">{{$nilai_mapel_pilihan->nilai_akhir}}</td>
        @endforeach

        @foreach($anggota_kelas->data_nilai_mapel_muatan_lokal->sortBy('pembelajaran.mapel.ktsp_mapping_mapel.nomor_urut') as $nilai_muatan_lokal)
        <td align="center" style="border: 1px solid #000000;">{{$nilai_muatan_lokal->nilai_akhir}}</td>
        @endforeach

        @if(count($data_mapel_wajib)+count($data_mapel_pilihan)+count($data_mapel_muatan_lokal) == 0)
        <td align="center" style="border: 1px solid #000000;">-</td>
        @endif

        <td align="center" style="border: 1px solid #000000;">{{$anggota_kelas->jumlah_nilai}}</td>
        <td align="center" style="border: 1px solid #000000;">{{$anggota_kelas->rt_nilai}}</td>

        @if(!is_null($anggota_kelas->kehadiran_siswa))
        <td align="center" style="border: 1px solid #000000;">{{$anggota_kelas->kehadiran_siswa->sakit}}</td>
        <td align="center" style="border: 1px solid #000000;">{{$anggota_kelas->kehadiran_siswa->izin}}</td>
        <td align="center" style="border: 1px solid #000000;">{{$anggota_kelas->kehadiran_siswa->tanpa_keterangan}}</td>
        @else
        <td align="center" style="border: 1px solid #000000;">-</td>
        <td align="center" style="border: 1px solid #000000;">-</td>
        <td align="center" style="border: 1px solid #000000;">-</td>
        @endif

        @foreach($anggota_kelas->data_nilai_ekstrakulikuler as $nilai_ekstrakulikuler)
        @if($nilai_ekstrakulikuler->nilai == 1)
        <td align="center" style="border: 1px solid #000000;">Kurang</td>
        @elseif($nilai_ekstrakulikuler->nilai == 2)
        <td align="center" style="border: 1px solid #000000;">Cukup</td>
        @elseif($nilai_ekstrakulikuler->nilai == 3)
        <td align="center" style="border: 1px solid #000000;">Baik</td>
        @elseif($nilai_ekstrakulikuler->nilai == 4)
        <td align="center" style="border: 1px solid #000000;">Sangat Baik</td>
        @else
        <td align="center" style="border: 1px solid #000000;">-</td>
        @endif
        @endforeach
      </tr>
      @endforeach
      <!-- End Data  -->
    </tbody>
  </table>
</body>

</html>