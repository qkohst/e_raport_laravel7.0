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
          ULANGAN TENGAH SEMESTER
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
          <td rowspan="2" style="width: 5%;">NO</td>
          <td rowspan="2" style="width: 43%;">Mata Pelajaran</td>
          <td rowspan="2" style="width: 7%;">KKM</td>
          <td colspan="3" style="width: 45%;">Nilai</td>
        </tr>
        <tr class="heading">
          <td style="width: 15%;">Tugas</td>
          <td style="width: 15%;">UH</td>
          <td style="width: 15%;">UTS</td>
        </tr>

        <!-- Nilai Mapel Wajib  -->
        <tr class="nilai">
          <td colspan="6"><strong>Mapel Wajib</strong></td>
        </tr>

        <?php $no = 0; ?>
        @foreach($data_pembelajaran_wajib->sortBy('mapel.ktsp_mapping_mapel.nomor_urut') as $pembelajaran_wajib)
        <?php $no++; ?>
        <tr class="nilai">
          <td class="center">{{$no}}</td>
          <td>{{$pembelajaran_wajib->mapel->nama_mapel}}</td>
          <td class="center">{{$pembelajaran_wajib->kkm}}</td>
          <td class="center">{{$pembelajaran_wajib->nilai_tugas}}</td>
          <td class="center">{{$pembelajaran_wajib->nilai_uh}}</td>
          <td class="center">{{$pembelajaran_wajib->nilai_uts}}</td>
        </tr>
        @endforeach

        <!-- Nilai Mapel Pilihan  -->
        <tr class="nilai">
          <td colspan="6"><strong>Mapel Pilihan</strong></td>
        </tr>

        @if(count($data_pembelajaran_pilihan) == 0)
        <tr class="nilai">
          <td class="center">1</td>
          <td>-</td>
          <td class="center"></td>
          <td class="center"></td>
          <td class="center"></td>
          <td class="center"></td>
        </tr>
        @else

        <?php $no = 0; ?>
        @foreach($data_pembelajaran_pilihan->sortBy('mapel.ktsp_mapping_mapel.nomor_urut') as $pembelajaran_pilihan)
        <?php $no++; ?>
        <tr class="nilai">
          <td class="center">{{$no}}</td>
          <td>{{$pembelajaran_pilihan->mapel->nama_mapel}}</td>
          <td class="center">{{$pembelajaran_pilihan->kkm}}</td>
          <td class="center">{{$pembelajaran_pilihan->nilai_tugas}}</td>
          <td class="center">{{$pembelajaran_pilihan->nilai_uh}}</td>
          <td class="center">{{$pembelajaran_pilihan->nilai_uts}}</td>
        </tr>
        @endforeach

        @endif

        <!-- Nilai Muatan Lokal  -->
        <tr class="nilai">
          <td colspan="6"><strong>Muatan Lokal</strong></td>
        </tr>

        @if(count($data_pembelajaran_muatan_lokal) == 0)
        <tr class="nilai">
          <td class="center">1</td>
          <td>-</td>
          <td class="center"></td>
          <td class="center"></td>
          <td class="center"></td>
          <td class="center"></td>
        </tr>
        @else

        <?php $no = 0; ?>
        @foreach($data_pembelajaran_muatan_lokal->sortBy('mapel.ktsp_mapping_mapel.nomor_urut') as $pembelajaran_muatan_lokal)
        <?php $no++; ?>
        <tr class="nilai">
          <td class="center">{{$no}}</td>
          <td>{{$pembelajaran_muatan_lokal->mapel->nama_mapel}}</td>
          <td class="center">{{$pembelajaran_muatan_lokal->kkm}}</td>
          <td class="center">{{$pembelajaran_muatan_lokal->nilai_tugas}}</td>
          <td class="center">{{$pembelajaran_muatan_lokal->nilai_uh}}</td>
          <td class="center">{{$pembelajaran_muatan_lokal->nilai_uts}}</td>
        </tr>
        @endforeach

        @endif

      </table>
    </div>

    <div style="padding-left:60%; padding-top:1rem; font-family: 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;">
      {{$anggota_kelas->kelas->tapel->ktsp_tgl_raport->tempat_penerbitan}}, {{$anggota_kelas->kelas->tapel->ktsp_tgl_raport->tanggal_pembagian->isoFormat('D MMMM Y')}}<br>
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