<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8" />
  <title>{{$title}} | {{$anggota_kelas->siswa->nama_lengkap}} ({{$anggota_kelas->siswa->nis}})</title>
  <link href="./assets/invoice_raport.css" rel="stylesheet">
</head>

<body>

  <!-- Page 1 Nilai -->
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
      <h3><strong>LAPORAN HASIL BELAJAR PESERTA DIDIK</strong></h3>
      <table cellspacing="0" style="padding-top: 5px;">
        <tr>
          <td colspan="6"><strong>A. NILAI AKHIR SEMESTER</strong></td>
        </tr>
        <tr class="heading">
          <td rowspan="2" style="width: 5%;">NO</td>
          <td rowspan="2" style="width: 35%;">Mata Pelajaran</td>
          <td rowspan="2" style="width: 10%;">KKM</td>
          <td colspan="2">Nilai</td>
          <td rowspan="2">Deskripsi</td>
        </tr>
        <tr class="heading">
          <td style="width: 10%;">Angka</td>
          <td style="width: 25%;">Huruf</td>
        </tr>

        <!-- Nilai Mapel Wajib  -->
        <tr class="nilai">
          <td colspan="6"><strong>Mapel Wajib </strong></td>
        </tr>

        <?php $no = 0; ?>
        @foreach($data_nilai_mapel_wajib->sortBy('pembelajaran.mapel.ktsp_mapping_mapel.nomor_urut') as $nilai_mapel_wajib)
        <?php $no++; ?>
        <tr class="nilai">
          <td class="center">{{$no}}</td>
          <td>{{$nilai_mapel_wajib->pembelajaran->mapel->nama_mapel}}</td>
          <td class="center">{{$nilai_mapel_wajib->kkm}}</td>
          <td class="center">{{$nilai_mapel_wajib->nilai_akhir}}</td>
          <td>{{terbilang($nilai_mapel_wajib->nilai_akhir)}}</td>
          <td>
            {!! nl2br($nilai_mapel_wajib->ktsp_deskripsi_nilai_siswa->deskripsi) !!}
          </td>
        </tr>
        @endforeach

        <!-- Nilai Mapel Pilihan  -->
        <tr class="nilai">
          <td colspan="6"><strong>Mapel Pilihan </strong></td>
        </tr>

        @if(is_null($data_nilai_mapel_pilihan))
        <tr class="nilai">
          <td class="center">1</td>
          <td>-</td>
          <td class="center"></td>
          <td class="center"></td>
          <td class="center"></td>
          <td class="description">
          </td>
        </tr>
        @else

        <?php $no = 0; ?>
        @foreach($data_nilai_mapel_pilihan->sortBy('pembelajaran.mapel.ktsp_mapping_mapel.nomor_urut') as $nilai_mapel_pilihan)
        <?php $no++; ?>
        <tr class="nilai">
          <td class="center">{{$no}}</td>
          <td>{{$nilai_mapel_pilihan->pembelajaran->mapel->nama_mapel}}</td>
          <td class="center">{{$nilai_mapel_pilihan->kkm}}</td>
          <td class="center">{{$nilai_mapel_pilihan->nilai_akhir}}</td>
          <td>{{terbilang($nilai_mapel_pilihan->nilai_akhir)}}</td>
          <td>
            {!! nl2br($nilai_mapel_pilihan->ktsp_deskripsi_nilai_siswa->deskripsi) !!}
          </td>
        </tr>
        @endforeach

        @endif

        <!-- Nilai Mapel Muatan Lokal  -->
        <tr class="nilai">
          <td colspan="6"><strong>Muatan Lokal </strong></td>
        </tr>

        @if(is_null($data_nilai_mapel_muatan_lokal))
        <tr class="nilai">
          <td class="center">1</td>
          <td>-</td>
          <td class="center"></td>
          <td class="center"></td>
          <td class="center"></td>
          <td class="description">
          </td>
        </tr>
        @else

        <?php $no = 0; ?>
        @foreach($data_nilai_mapel_muatan_lokal->sortBy('pembelajaran.mapel.ktsp_mapping_mapel.nomor_urut') as $nilai_muatan_lokal)
        <?php $no++; ?>
        <tr class="nilai">
          <td class="center">{{$no}}</td>
          <td>{{$nilai_muatan_lokal->pembelajaran->mapel->nama_mapel}}</td>
          <td class="center">{{$nilai_muatan_lokal->kkm}}</td>
          <td class="center">{{$nilai_muatan_lokal->nilai_akhir}}</td>
          <td>{{terbilang($nilai_muatan_lokal->nilai_akhir)}}</td>
          <td>
            {!! nl2br($nilai_muatan_lokal->ktsp_deskripsi_nilai_siswa->deskripsi) !!}
          </td>
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
  <div class="page-break"></div>

  <!-- Page 2 (Other) -->
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
      <table cellspacing="0">

        <!-- EkstraKulikuler  -->
        <tr>
          <td colspan="4" style="height: 25px;"><strong>B. EKSTRAKULIKULER</strong></td>
        </tr>
        <tr class="heading">
          <td style="width: 5%;">NO</td>
          <td style="width: 28%;">Kegiatan Ekstrakulikuler</td>
          <td style="width: 15%;">Predikat</td>
          <td>Keterangan</td>
        </tr>

        @if(count($data_anggota_ekstrakulikuler) == 0)
        <tr class="nilai">
          <td class="center">1</td>
          <td></td>
          <td class="center"></td>
          <td class="description">
            <span></span>
          </td>
        </tr>
        <tr class="nilai">
          <td class="center">2</td>
          <td></td>
          <td class="center"></td>
          <td class="description">
            <span></span>
          </td>
        </tr>
        @elseif(count($data_anggota_ekstrakulikuler) == 1)
        <?php $no = 0; ?>
        @foreach($data_anggota_ekstrakulikuler as $nilai_ekstra)
        <?php $no++; ?>
        <tr class="nilai">
          <td class="center">{{$no}}</td>
          <td>{{$nilai_ekstra->ekstrakulikuler->nama_ekstrakulikuler}}</td>
          <td class="center">
            @if($nilai_ekstra->nilai == 4)
            Sangat Baik
            @elseif($nilai_ekstra->nilai == 3)
            Baik
            @elseif($nilai_ekstra->nilai == 2)
            Cukup
            @elseif($nilai_ekstra->nilai == 1)
            Kurang
            @endif
          </td>
          <td class="description">
            <span>{!! nl2br($nilai_ekstra->deskripsi) !!}</span>
          </td>
        </tr>
        @endforeach
        <tr class="nilai">
          <td class="center">2</td>
          <td></td>
          <td class="center"></td>
          <td class="description">
            <span></span>
          </td>
        </tr>
        @else
        <?php $no = 0; ?>
        @foreach($data_anggota_ekstrakulikuler as $nilai_ekstra)
        <?php $no++; ?>
        <tr class="nilai">
          <td class="center">{{$no}}</td>
          <td>{{$nilai_ekstra->ekstrakulikuler->nama_ekstrakulikuler}}</td>
          <td class="center">
            @if($nilai_ekstra->nilai == 4)
            Sangat Baik
            @elseif($nilai_ekstra->nilai == 3)
            Baik
            @elseif($nilai_ekstra->nilai == 2)
            Cukup
            @elseif($nilai_ekstra->nilai == 1)
            Kurang
            @endif
          </td>
          <td class="description">
            <span>{!! nl2br($nilai_ekstra->deskripsi) !!}</span>
          </td>
        </tr>
        @endforeach
        @endif
        <!-- End Ekstrakulikuler  -->

        <!-- Prestasi -->
        <tr>
          <td colspan="4" style="height: 25px; padding-top: 5px"><strong>C. PRESTASI</strong></td>
        </tr>
        <tr class="heading">
          <td style="width: 5%;">NO</td>
          <td style="width: 28%;">Jenis Prestasi</td>
          <td colspan="2">Keterangan</td>
        </tr>
        @if(count($data_prestasi_siswa) == 0)
        <tr class="nilai">
          <td class="center">1</td>
          <td></td>
          <td colspan="2" class="description">
            <span></span>
          </td>
        </tr>
        <tr class="nilai">
          <td class="center">2</td>
          <td></td>
          <td colspan="2" class="description">
            <span></span>
          </td>
        </tr>
        @elseif(count($data_prestasi_siswa) == 1)
        <?php $no = 0; ?>
        @foreach($data_prestasi_siswa as $prestasi)
        <?php $no++; ?>
        <tr class="nilai">
          <td class="center">{{$no}}</td>
          <td>
            @if($prestasi->jenis_prestasi == 1)
            Akademik
            @elseif($prestasi->jenis_prestasi == 2)
            Non Akademik
            @endif
          </td>
          <td colspan="2" class="description">
            <span>{!! nl2br($prestasi->deskripsi) !!}</span>
          </td>
        </tr>
        @endforeach
        <tr class="nilai">
          <td class="center">2</td>
          <td></td>
          <td colspan="2" class="description">
            <span></span>
          </td>
        </tr>
        @else
        <?php $no = 0; ?>
        @foreach($data_prestasi_siswa as $prestasi)
        <?php $no++; ?>
        <tr class="nilai">
          <td class="center">{{$no}}</td>
          <td>
            @if($prestasi->jenis_prestasi == 1)
            Akademik
            @elseif($prestasi->jenis_prestasi == 2)
            Non Akademik
            @endif
          </td>
          <td colspan="2" class="description">
            <span>{!! nl2br($prestasi->deskripsi) !!}</span>
          </td>
        </tr>
        @endforeach
        @endif
        <!-- End Prestasi -->

        <!-- Ketidakhadiran  -->
        <tr>
          <td colspan="4" style="height: 25px; padding-top: 5px"><strong>D. KETIDAKHADIRAN</strong></td>
        </tr>
        @if(!is_null($kehadiran_siswa))
        <tr class="nilai">
          <td colspan="2" style="border-right:0 ;">Sakit</td>
          <td style="border-left:0 ;">: {{$kehadiran_siswa->sakit}} hari</td>
          <td class="false"></td>
        </tr>
        <tr class="nilai">
          <td colspan="2" style="border-right:0 ;">Izin</td>
          <td style="border-left:0 ;">: {{$kehadiran_siswa->izin}} hari</td>
          <td class="false"></td>
        </tr>
        <tr class="nilai">
          <td colspan="2" style="border-right:0 ;">Tanpa Keterangan</td>
          <td style="border-left:0 ;">: {{$kehadiran_siswa->tanpa_keterangan}} hari</td>
          <td class="false"></td>
        </tr>
        @else
        <tr class="nilai">
          <td colspan="4"><b>Data kehadiran belum diinput</b></td>
        </tr>
        @endif
        <!-- End Ketidakhadiran  -->

        <!-- Catatan Wali Kelas -->
        <tr>
          <td colspan="4" style="height: 25px; padding-top: 5px"><strong>E. CATATAN WALI KELAS</strong></td>
        </tr>
        <tr class="sikap">
          <td colspan="4" class="description" style="height: 50px;">
            @if(!is_null($catatan_wali_kelas))
            <i><b>{{$catatan_wali_kelas->catatan}}</b></i>
            @endif
          </td>
        </tr>
        <!-- End Catatan Wali Kelas -->

        <!-- Tanggapan ORANG TUA/WALI -->
        <tr>
          <td colspan="4" style="height: 25px; padding-top: 5px"><strong>F. TANGGAPAN ORANG TUA/WALI</strong></td>
        </tr>
        <tr class="sikap">
          <td colspan="4" class="description" style="height: 50px;">
          </td>
        </tr>
        <!-- End Tanggapan ORANG TUA/WALI -->

        <!-- Keputusan -->
        @if($anggota_kelas->kelas->tapel->semester == 2)
        <tr>
          <td colspan="4" style="height: 25px; padding-top: 5px"><strong>G. KEPUTUSAN</strong></td>
        </tr>
        <tr class="sikap">
          <td colspan="4" class="description" style="height: 45px;">
            Berdasarkan hasil yang dicapai pada semester 1 dan 2, Peserta didik ditetapkan : <br>
            @if(!is_null($anggota_kelas->kenaikan_kelas))
            <b>
              @if($anggota_kelas->kenaikan_kelas->keputusan == 1)
              NAIK KE KELAS : {{$anggota_kelas->kenaikan_kelas->kelas_tujuan}}
              @elseif($anggota_kelas->kenaikan_kelas->keputusan == 2)
              TINGGAL DI KELAS : {{$anggota_kelas->kenaikan_kelas->kelas_tujuan}}
              @elseif($anggota_kelas->kenaikan_kelas->keputusan == 3)
              LULUS
              @elseif($anggota_kelas->kenaikan_kelas->keputusan == 4)
              TIDAK LULUS
              @endif
            </b>
            @endif
          </td>
        </tr>
        @endif
        <!-- End Keputusan -->

      </table>
    </div>

    <div style="padding-top:1rem; font-family: 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;">
      <table>
        <tr>
          <td style="width: 30%;">
            Mengetahui <br>
            Orang Tua/Wali, <br><br><br><br>
            .............................
          </td>
          <td style="width: 35%;"></td>
          <td style="width: 35%;">
            {{$anggota_kelas->kelas->tapel->ktsp_tgl_raport->tempat_penerbitan}}, {{$anggota_kelas->kelas->tapel->ktsp_tgl_raport->tanggal_pembagian->isoFormat('D MMMM Y')}}<br>
            Wali Kelas, <br><br><br><br>
            <b><u>{{$anggota_kelas->kelas->guru->nama_lengkap}}, {{$anggota_kelas->kelas->guru->gelar}}</u></b><br>
            NIP. {{konversi_nip($anggota_kelas->kelas->guru->nip)}}
          </td>
        </tr>
        <tr>
          <td style="width: 30%;"></td>
          <td style="width: 35%;">
            Mengetahui <br>
            Kepala Sekolah, <br><br><br><br>
            <b><u>{{$sekolah->kepala_sekolah}}</u></b><br>
            NIP. {{konversi_nip($sekolah->nip_kepala_sekolah)}}
          </td>
          <td style="width: 35%;"></td>
        </tr>
      </table>
    </div>
    <div class="footer">
      <i>{{$anggota_kelas->kelas->nama_kelas}} | {{$anggota_kelas->siswa->nama_lengkap}} | {{$anggota_kelas->siswa->nis}}</i> <b style="float: right;"><i>Halaman 2</i></b>
    </div>
  </div>
</body>

</html>