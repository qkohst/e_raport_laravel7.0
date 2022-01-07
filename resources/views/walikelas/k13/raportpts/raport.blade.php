<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8" />
  <title>{{$title}} | {{$anggota_kelas->siswa->nama_lengkap}} ({{$anggota_kelas->siswa->nis}})</title>
  <link href="./assets/invoice_raport.css" rel="stylesheet">
</head>

<body>
  <div class="invoice-box">
    <div class="header">
      <table>
        <tr>
          <td style="width: 19%;">Nama Sekolah</td>
          <td style="width: 52%;">: {{$sekolah->nama_sekolah}}</td>
          <td style="width: 16%;">Kelas</td>
          <td style="width: 13%;">: {{$anggota_kelas->kelas->nama_kelas}}</td>
        </tr>
        <tr>
          <td style="width: 19%;">Alamat</td>
          <td style="width: 52%;">: {{$sekolah->alamat}}</td>
          <td style="width: 16%;">Semester</td>
          <td style="width: 13%;">:
            @if($anggota_kelas->kelas->tapel->semester == 1)
            1 (Ganjil)
            @else
            2 (Genap)
            @endif
          </td>
        </tr>
        <tr>
          <td style="width: 19%;">Nama Peserta Didik</td>
          <td style="width: 52%;">: {{$anggota_kelas->siswa->nama_lengkap}} </td>
          <td style="width: 16%;">Tahun Pelajaran</td>
          <td style="width: 13%;">: {{$anggota_kelas->kelas->tapel->tahun_pelajaran}}</td>
        </tr>
        <tr>
          <td style="width: 19%;">Nomor Induk/NISN</td>
          <td style="width: 52%;">: {{$anggota_kelas->siswa->nis}} / {{$anggota_kelas->siswa->nisn}} </td>
        </tr>
      </table>
    </div>

    <div class="content">
      <h3>
        <strong>
          LAPORAN HASIL <br>
          PENILAIAN TENGAH SEMESTER
          @if($anggota_kelas->kelas->tapel->semester == 1)
          GANJIL
          @else
          GENAP
          @endif
          <br>
          TAHUN PELAJARAN {{$anggota_kelas->kelas->tapel->tahun_pelajaran}}
        </strong>
      </h3>
      <table cellspacing="0" style="padding-top: 5px;">
        <tr class="heading">
          <td rowspan="3" style="width: 5%;">NO</td>
          <td rowspan="3" style="width: 28%;">Mata Pelajaran</td>
          <td rowspan="3" style="width: 7%;">KKM</td>
          <td colspan="4" style="width: 40%;">Rata-Rata</td>
          <td rowspan="2" colspan="2" style="width: 20%;">Nilai PTS</td>
        </tr>
        <tr class="heading">
          <td colspan="2" style="width: 20%;">Pengetahuan</td>
          <td colspan="2" style="width: 20%;">Keterampilan</td>
        </tr>
        <tr class="heading">
          <td style="width: 8%;">Nilai</td>
          <td style="width: 12%;">Predikat</td>
          <td style="width: 8%;">Nilai</td>
          <td style="width: 12%;">Predikat</td>
          <td style="width: 8%;">Nilai</td>
          <td style="width: 12%;">Predikat</td>
        </tr>
        <!-- Nilai A  -->
        <tr class="nilai">
          <td colspan="9"><strong>Kelompok A</strong></td>
        </tr>

        <?php $no = 0; ?>
        @foreach($data_pembelajaran_a->sortBy('mapel.k13_mapping_mapel.nomor_urut') as $nilai_kelompok_a)
        <?php $no++; ?>
        <tr class="nilai">
          <td class="center">{{$no}}</td>
          <td>{{$nilai_kelompok_a->mapel->nama_mapel}}</td>
          <td class="center">{{$nilai_kelompok_a->kkm}}</td>
          <td class="center">{{$nilai_kelompok_a->rt_nilai_pengetahuan}}</td>
          <td class="center">
            @if($nilai_kelompok_a->rt_nilai_pengetahuan == 0 )
            -
            @elseif($nilai_kelompok_a->rt_nilai_pengetahuan < $nilai_kelompok_a->predikat_c )
              D
              @elseif($nilai_kelompok_a->rt_nilai_pengetahuan >= $nilai_kelompok_a->predikat_c && $nilai_kelompok_a->rt_nilai_pengetahuan < $nilai_kelompok_a->predikat_b)
                C
                @elseif($nilai_kelompok_a->rt_nilai_pengetahuan >= $nilai_kelompok_a->predikat_b && $nilai_kelompok_a->rt_nilai_pengetahuan < $nilai_kelompok_a->predikat_a)
                  B
                  @elseif($nilai_kelompok_a->rt_nilai_pengetahuan >= $nilai_kelompok_a->predikat_a)
                  A
                  @endif
          </td>
          <td class="center">{{$nilai_kelompok_a->rt_nilai_keterampilan}}</td>
          <td class="center">
            @if($nilai_kelompok_a->rt_nilai_keterampilan == 0 )
            -
            @elseif($nilai_kelompok_a->rt_nilai_keterampilan < $nilai_kelompok_a->predikat_c )
              D
              @elseif($nilai_kelompok_a->rt_nilai_keterampilan >= $nilai_kelompok_a->predikat_c && $nilai_kelompok_a->rt_nilai_keterampilan < $nilai_kelompok_a->predikat_b)
                C
                @elseif($nilai_kelompok_a->rt_nilai_keterampilan >= $nilai_kelompok_a->predikat_b && $nilai_kelompok_a->rt_nilai_keterampilan < $nilai_kelompok_a->predikat_a)
                  B
                  @elseif($nilai_kelompok_a->rt_nilai_keterampilan >= $nilai_kelompok_a->predikat_a)
                  A
                  @endif
          </td>
          <td class="center">{{$nilai_kelompok_a->nilai_pts}}</td>
          <td class="center">
            @if($nilai_kelompok_a->nilai_pts == 0 )
            -
            @elseif($nilai_kelompok_a->nilai_pts < $nilai_kelompok_a->predikat_c )
              D
              @elseif($nilai_kelompok_a->nilai_pts >= $nilai_kelompok_a->predikat_c && $nilai_kelompok_a->nilai_pts < $nilai_kelompok_a->predikat_b)
                C
                @elseif($nilai_kelompok_a->nilai_pts >= $nilai_kelompok_a->predikat_b && $nilai_kelompok_a->nilai_pts < $nilai_kelompok_a->predikat_a)
                  B
                  @elseif($nilai_kelompok_a->nilai_pts >= $nilai_kelompok_a->predikat_a)
                  A
                  @endif
          </td>
        </tr>
        @endforeach

        <!-- Nilai B  -->
        <tr class="nilai">
          <td colspan="9"><strong>Kelompok B</strong></td>
        </tr>
        <?php $no = 0; ?>
        @foreach($data_pembelajaran_b->sortBy('mapel.k13_mapping_mapel.nomor_urut') as $nilai_kelompok_b)
        <?php $no++; ?>
        <tr class="nilai">
          <td class="center">{{$no}}</td>
          <td>{{$nilai_kelompok_b->mapel->nama_mapel}}</td>
          <td class="center">{{$nilai_kelompok_b->kkm}}</td>
          <td class="center">{{$nilai_kelompok_b->rt_nilai_pengetahuan}}</td>
          <td class="center">
            @if($nilai_kelompok_b->rt_nilai_pengetahuan == 0 )
            -
            @elseif($nilai_kelompok_b->rt_nilai_pengetahuan < $nilai_kelompok_b->predikat_c )
              D
              @elseif($nilai_kelompok_b->rt_nilai_pengetahuan >= $nilai_kelompok_b->predikat_c && $nilai_kelompok_b->rt_nilai_pengetahuan < $nilai_kelompok_b->predikat_b)
                C
                @elseif($nilai_kelompok_b->rt_nilai_pengetahuan >= $nilai_kelompok_b->predikat_b && $nilai_kelompok_b->rt_nilai_pengetahuan < $nilai_kelompok_b->predikat_a)
                  B
                  @elseif($nilai_kelompok_b->rt_nilai_pengetahuan >= $nilai_kelompok_b->predikat_a)
                  A
                  @endif
          </td>
          <td class="center">{{$nilai_kelompok_b->rt_nilai_keterampilan}}</td>
          <td class="center">
            @if($nilai_kelompok_b->rt_nilai_keterampilan == 0 )
            -
            @elseif($nilai_kelompok_b->rt_nilai_keterampilan < $nilai_kelompok_b->predikat_c )
              D
              @elseif($nilai_kelompok_b->rt_nilai_keterampilan >= $nilai_kelompok_b->predikat_c && $nilai_kelompok_b->rt_nilai_keterampilan < $nilai_kelompok_b->predikat_b)
                C
                @elseif($nilai_kelompok_b->rt_nilai_keterampilan >= $nilai_kelompok_b->predikat_b && $nilai_kelompok_b->rt_nilai_keterampilan < $nilai_kelompok_b->predikat_a)
                  B
                  @elseif($nilai_kelompok_b->rt_nilai_keterampilan >= $nilai_kelompok_b->predikat_a)
                  A
                  @endif
          </td>
          <td class="center">{{$nilai_kelompok_b->nilai_pts}}</td>
          <td class="center">
            @if($nilai_kelompok_b->nilai_pts == 0 )
            -
            @elseif($nilai_kelompok_b->nilai_pts < $nilai_kelompok_b->predikat_c )
              D
              @elseif($nilai_kelompok_b->nilai_pts >= $nilai_kelompok_b->predikat_c && $nilai_kelompok_b->nilai_pts < $nilai_kelompok_b->predikat_b)
                C
                @elseif($nilai_kelompok_b->nilai_pts >= $nilai_kelompok_b->predikat_b && $nilai_kelompok_b->nilai_pts < $nilai_kelompok_b->predikat_a)
                  B
                  @elseif($nilai_kelompok_b->nilai_pts >= $nilai_kelompok_b->predikat_a)
                  A
                  @endif
          </td>
        </tr>
        @endforeach

      </table>
    </div>

    <div style="padding-left:60%; padding-top:1rem; font-family: 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;">
      {{$anggota_kelas->kelas->tapel->k13_tgl_raport->tempat_penerbitan}}, {{$anggota_kelas->kelas->tapel->k13_tgl_raport->tanggal_pembagian->isoFormat('D MMMM Y')}}<br>
      Wali Kelas, <br><br><br><br>
      <b><u>{{$anggota_kelas->kelas->guru->nama_lengkap}}, {{$anggota_kelas->kelas->guru->gelar}}</u></b><br>
      NIP. {{konversi_nip($anggota_kelas->kelas->guru->nip)}}
    </div>
    <div class="footer">
      <i>{{$anggota_kelas->kelas->nama_kelas}} | {{$anggota_kelas->siswa->nama_lengkap}} | {{$anggota_kelas->siswa->nis}}</i> <b style="float: right;"><i>Halaman 1</i></b>
    </div>
  </div>
</body>

</html>