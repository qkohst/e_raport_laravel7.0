<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Leger K13</title>
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
        <td colspan="9">Didownload oleh : {{Auth::user()->guru->nama_lengkap}} ({{Auth::user()->username}})</td>
      </tr>
    </thead>
    <tbody>
      <!-- siswa  -->
      <tr>
      </tr>
      <!-- Header -->

      <tr>
        <td rowspan="2" bgcolor="gray"><strong>NO</strong></td>
        <td rowspan=" 2" align="center" bgcolor="gray"><strong>NIS</strong></td>
        <td rowspan="2" align="center" bgcolor="gray"><strong>NAMA SISWA</strong></td>
        <td rowspan="2" align="center" bgcolor="gray"><strong>KELAS</strong></td>

        @foreach($data_mapel_kelompok_a->sortBy('pembelajaran.mapel.k13_mapping_mapel.nomor_urut') as $mapel_kelompok_a)
        <td colspan="4" align="center" bgcolor="gray"><strong>{{$mapel_kelompok_a->pembelajaran->mapel->ringkasan_mapel}}</strong></td>
        @endforeach

        @foreach($data_mapel_kelompok_b->sortBy('pembelajaran.mapel.k13_mapping_mapel.nomor_urut') as $mapel_kelompok_b)
        <td colspan="4" align="center" bgcolor="gray"><strong>{{$mapel_kelompok_b->pembelajaran->mapel->ringkasan_mapel}}</strong></td>
        @endforeach

        <td colspan="2" align="center" bgcolor="gray"><strong>Rata-Rata</strong></td>
        <td colspan="3" align="center" bgcolor="gray"><strong>Kehadiran</strong></td>
        <td colspan="{{$count_ekstrakulikuler}}" align="center" bgcolor="gray"><strong>Ekstrakulikuler</strong></td>
      </tr>

      <tr>
        @foreach($data_mapel_kelompok_a->sortBy('pembelajaran.mapel.k13_mapping_mapel.nomor_urut') as $mapel_kelompok_a)
        <td align="center" colspan="2" bgcolor="gray"><strong>Peng</strong></td>
        <td align="center" colspan="2" bgcolor="gray"><strong>Ket</strong></td>
        @endforeach

        @foreach($data_mapel_kelompok_b->sortBy('pembelajaran.mapel.k13_mapping_mapel.nomor_urut') as $mapel_kelompok_b)
        <td align="center" colspan="2" bgcolor="gray"><strong>Peng</strong></td>
        <td align="center" colspan="2" bgcolor="gray"><strong>Ket</strong></td>
        @endforeach

        <td align="center" bgcolor="gray"><strong>Peng</strong></td>
        <td align="center" bgcolor="gray"><strong>Ket</strong></td>

        <td align="center" bgcolor="gray"><strong>S</strong></td>
        <td align="center" bgcolor="gray"><strong>I</strong></td>
        <td align="center" bgcolor="gray"><strong>A</strong></td>
        @foreach($data_ekstrakulikuler->sortBy('id') as $ekstrakulikuler)
        <td align="center" bgcolor="gray"><strong>{{$ekstrakulikuler->nama_ekstrakulikuler}}</strong></td>
        @endforeach
      </tr>
      <!-- /Header -->

      <!-- Data  -->
      <?php $no = 0; ?>
      @foreach($data_anggota_kelas->sortBy('siswa.nama_lengkap') as $anggota_kelas)
      <?php $no++; ?>
      <tr>
        <td align="center">{{$no}}</td>
        <td align="center">{{$anggota_kelas->siswa->nis}}</td>
        <td>{{$anggota_kelas->siswa->nama_lengkap}}</td>
        <td align="center">{{$anggota_kelas->kelas->nama_kelas}}</td>

        @foreach($anggota_kelas->data_nilai_kelompok_a->sortBy('pembelajaran.mapel.k13_mapping_mapel.nomor_urut') as $nilai_kelompok_a)
        <td align="center">{{$nilai_kelompok_a->nilai_pengetahuan}}</td>
        <td align="center">{{$nilai_kelompok_a->predikat_pengetahuan}}</td>
        <td align="center">{{$nilai_kelompok_a->nilai_keterampilan}}</td>
        <td align="center">{{$nilai_kelompok_a->predikat_keterampilan}}</td>
        @endforeach

        @foreach($anggota_kelas->data_nilai_kelompok_b->sortBy('pembelajaran.mapel.k13_mapping_mapel.nomor_urut') as $nilai_kelompok_b)
        <td align="center">{{$nilai_kelompok_b->nilai_pengetahuan}}</td>
        <td align="center">{{$nilai_kelompok_b->predikat_pengetahuan}}</td>
        <td align="center">{{$nilai_kelompok_b->nilai_keterampilan}}</td>
        <td align="center">{{$nilai_kelompok_b->predikat_keterampilan}}</td>
        @endforeach

        <td align="center">{{$anggota_kelas->rata_rata_pengetahuan}}</td>
        <td align="center">{{$anggota_kelas->rata_rata_keterampilan}}</td>

        @if(!is_null($anggota_kelas->kehadiran_siswa))
        <td align="center">{{$anggota_kelas->kehadiran_siswa->sakit}}</td>
        <td align="center">{{$anggota_kelas->kehadiran_siswa->izin}}</td>
        <td align="center">{{$anggota_kelas->kehadiran_siswa->tanpa_keterangan}}</td>
        @else
        <td align="center">-</td>
        <td align="center">-</td>
        <td align="center">-</td>
        @endif

        @foreach($anggota_kelas->data_nilai_ekstrakulikuler as $nilai_ekstrakulikuler)
        @if($nilai_ekstrakulikuler->nilai == 1)
        <td align="center">Kurang</td>
        @elseif($nilai_ekstrakulikuler->nilai == 2)
        <td align="center">Cukup</td>
        @elseif($nilai_ekstrakulikuler->nilai == 3)
        <td align="center">Baik</td>
        @elseif($nilai_ekstrakulikuler->nilai == 4)
        <td align="center">Sangat Baik</td>
        @else
        <td align="center">-</td>
        @endif
        @endforeach
      </tr>
      @endforeach
      <!-- End Data  -->
    </tbody>
  </table>
</body>

</html>