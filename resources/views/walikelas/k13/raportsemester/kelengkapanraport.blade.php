<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8" />
  <title>{{$title}} | {{$anggota_kelas->siswa->nama_lengkap}} ({{$anggota_kelas->siswa->nis}})</title>
  <link href="./assets/invoice_raport.css" rel="stylesheet">
</head>

<body>
  <!-- Page 1 Sampul -->
  <div class="invoice-box">
    <div class="content">
      <div style="text-align: center; padding-bottom: 10px;">
        <img src="assets/images/logo/logo.png" alt="Logo" height="160px">
      </div>
      <h1><strong>LAPORAN</strong></h1>
      <h1><strong>HASIL BELAJAR SISWA</strong></h1>
    </div>
    <div style="text-align: center; padding-top: 150px;">
      <h3>NAMA PESERTA DIDIK</h3>
      <table>
        <tr>
          <td style="width: 15%;"></td>
          <td style="width: 70%; border: 1px solid #333; height: 35px; text-align: center; font-size: 18px;"><b>{{$anggota_kelas->siswa->nama_lengkap}}</b></td>
          <td style="width: 15%;"></td>
        </tr>
      </table>
    </div>
    <div style="text-align: center; padding-top: 25px;">
      <h3>NISN / NIS</h3>
      <table>
        <tr>
          <td style="width: 20%;"></td>
          <td style="width: 60%; border: 1px solid #333; height: 35px; text-align: center; font-size: 18px;"><b>{{$anggota_kelas->siswa->nisn}} / {{$anggota_kelas->siswa->nis}}</b></td>
          <td style="width: 20%;"></td>
        </tr>
      </table>
    </div>
    <div style="text-align: center; padding-top: 140px;">
      <h1><strong>{{$sekolah->nama_sekolah}}</strong></h1>
      <p style="font-size: 16px; line-height: 20px;">NPSN : {{$sekolah->npsn}} | NSS : {{$sekolah->nss}} <br>
        Alamat : {{$sekolah->alamat}} <br>
        Telepon : {{$sekolah->nomor_telpon}} | Kode Pos : {{$sekolah->kode_pos}} <br>
        Email : {{$sekolah->email}}
      </p>
    </div>
    <div class="footer">
      <i>{{$anggota_kelas->siswa->nama_lengkap}} | {{$anggota_kelas->siswa->nis}}</i> <b style="float: right;"><i>Halaman 1</i></b>
    </div>
  </div>
  <div class="page-break"></div>

  <!-- Page 2 Identitas Sekolah -->
  <div class="invoice-box">
    <div style="text-align: center;">
      <h2><strong>IDENTITAS SEKOLAH</strong></h2>
    </div>
    <div style="padding-top: 15px;   font-size: 15px;">
      <table>
        <tr>
          <td style="width: 20%;">Nama Sekolah</td>
          <td style="width: 2%;">:</td>
          <td style="width: 78%;">{{$sekolah->nama_sekolah}}</td>
        </tr>
        <tr style="line-height: 30px;">
          <td style="width: 20%;">NPSN</td>
          <td style="width: 2%;">:</td>
          <td style="width: 78%;">{{$sekolah->npsn}}</td>
        </tr>
        <tr style="line-height: 30px;">
          <td style="width: 20%;">NIS/NSS/NDS</td>
          <td style="width: 2%;">:</td>
          <td style="width: 78%;">{{$sekolah->nss}}</td>
        </tr>
        <tr style="line-height: 30px;">
          <td style="width: 20%;">Alamat</td>
          <td style="width: 2%;">:</td>
          <td style="width: 78%;">{{$sekolah->alamat}}</td>
        </tr>
        <tr style="line-height: 30px;">
          <td style="width: 20%;">Kode Pos</td>
          <td style="width: 2%;">:</td>
          <td style="width: 78%;">{{$sekolah->kode_pos}}</td>
        </tr>
        <tr style="line-height: 30px;">
          <td style="width: 20%;">Website</td>
          <td style="width: 2%;">:</td>
          <td style="width: 78%;">http://{{$sekolah->website}}</td>
        </tr>
        <tr style="line-height: 30px;">
          <td style="width: 20%;">Email</td>
          <td style="width: 2%;">:</td>
          <td style="width: 78%;">{{$sekolah->email}}</td>
        </tr>
        <tr style="line-height: 30px;">
          <td style="width: 20%;">Telepon</td>
          <td style="width: 2%;">:</td>
          <td style="width: 78%;">{{$sekolah->nomor_telpon}}</td>
        </tr>
      </table>
    </div>
    <div class="footer">
      <i>{{$anggota_kelas->siswa->nama_lengkap}} | {{$anggota_kelas->siswa->nis}}</i> <b style="float: right;"><i>Halaman 2</i></b>
    </div>
  </div>
  <div class="page-break"></div>

  <!-- Page 3 Identitas Peserta Didik -->
  <div class="invoice-box">
    <div style="text-align: center;">
      <h2><strong>KETERANGAN TENTANG DIRI PESERTA DIDIK</strong></h2>
    </div>
    <div style="padding-top: 15px; font-size: 15px;">
      <table>
        <tr>
          <td style="width: 4%;">1</td>
          <td style="width: 25%;">Nama Peserta Didik</td>
          <td style="width: 2%;">:</td>
          <td>{{$anggota_kelas->siswa->nama_lengkap}}</td>
        </tr>
        <tr style="line-height: 25px;">
          <td style="width: 4%;">2</td>
          <td style="width: 25%;">Nomor Induk / NISN</td>
          <td style="width: 2%;">:</td>
          <td>{{$anggota_kelas->siswa->nis}} / {{$anggota_kelas->siswa->nisn}}</td>
        </tr>
        <tr style="line-height: 25px;">
          <td style="width: 4%;">3</td>
          <td style="width: 25%;">Tempat, Tanggal Lahir</td>
          <td style="width: 2%;">:</td>
          <td>{{$anggota_kelas->siswa->tempat_lahir}}, {{$anggota_kelas->siswa->tanggal_lahir->isoFormat('D MMMM Y')}}</td>
        </tr>
        <tr style="line-height: 25px;">
          <td style="width: 4%;">4</td>
          <td style="width: 25%;">Jenis Kelamin</td>
          <td style="width: 2%;">:</td>
          <td>
            @if($anggota_kelas->siswa->jenis_kelamin == 'L')
            Laki-Laki
            @else
            Perempuan
            @endif
          </td>
        </tr>
        <tr style="line-height: 25px;">
          <td style="width: 4%;">5</td>
          <td style="width: 25%;">Agama</td>
          <td style="width: 2%;">:</td>
          <td>
            @if($anggota_kelas->siswa->agama == 1)
            Islam
            @elseif($anggota_kelas->siswa->agama == 2)
            Protestan
            @elseif($anggota_kelas->siswa->agama == 3)
            Katolik
            @elseif($anggota_kelas->siswa->agama == 4)
            Hindu
            @elseif($anggota_kelas->siswa->agama == 5)
            Budha
            @elseif($anggota_kelas->siswa->agama == 6)
            Khonghucu
            @elseif($anggota_kelas->siswa->agama == 7)
            Kepercayaan
            @endif
          </td>
        </tr>
        <tr style="line-height: 25px;">
          <td style="width: 4%;">6</td>
          <td style="width: 25%;">Status Dalam Keluarga</td>
          <td style="width: 2%;">:</td>
          <td>
            @if($anggota_kelas->siswa->status_dalam_keluarga == 1)
            Anak Kandung
            @elseif($anggota_kelas->siswa->status_dalam_keluarga == 2)
            Anak Angkat
            @elseif($anggota_kelas->siswa->status_dalam_keluarga == 3)
            Anak Tiri
            @endif
          </td>
        </tr>
        <tr style="line-height: 25px;">
          <td style="width: 4%;">7</td>
          <td style="width: 25%;">Anak Ke</td>
          <td style="width: 2%;">:</td>
          <td>{{$anggota_kelas->siswa->anak_ke}}</td>
        </tr>
        <tr style="line-height: 25px;">
          <td style="width: 4%;">8</td>
          <td style="width: 25%;">Alamat Peserta Didik</td>
          <td style="width: 2%;">:</td>
          <td>{{$anggota_kelas->siswa->alamat}}</td>
        </tr>
        <tr style="line-height: 25px;">
          <td style="width: 4%;">9</td>
          <td style="width: 25%;">Nomor HP</td>
          <td style="width: 2%;">:</td>
          <td>{{$anggota_kelas->siswa->nomor_hp}}</td>
        </tr>
        <tr style="line-height: 25px;">
          <td style="width: 4%;">10</td>
          <td style="width: 25%;">Diterima di sekolah ini</td>
          <td style="width: 2%;"></td>
          <td></td>
        </tr>
        <tr style="line-height: 25px;">
          <td style="width: 4%;"></td>
          <td style="width: 25%;">Di Kelas</td>
          <td style="width: 2%;">:</td>
          <td>{{$anggota_kelas->kelas->nama_kelas}}</td>
        </tr>
        <tr style="line-height: 25px;">
          <td style="width: 4%;"></td>
          <td style="width: 25%;">Pada Tanggal</td>
          <td style="width: 2%;">:</td>
          <td>{{$anggota_kelas->siswa->created_at->isoFormat('D MMMM Y')}}</td>
        </tr>
        <tr style="line-height: 25px;">
          <td style="width: 4%;"></td>
          <td style="width: 25%;">Sebagai</td>
          <td style="width: 2%;">:</td>
          <td>
            @if($anggota_kelas->siswa->jenis_pendaftaran == 1)
            Siswa Baru
            @elseif($anggota_kelas->siswa->jenis_pendaftaran == 2)
            Pindahan
            @endif
          </td>
        </tr>
        <tr style="line-height: 25px;">
          <td style="width: 4%;">11</td>
          <td style="width: 25%;">Nama Orang Tua</td>
          <td style="width: 2%;"></td>
          <td></td>
        </tr>
        <tr style="line-height: 25px;">
          <td style="width: 4%;"></td>
          <td style="width: 25%;">a. Ayah</td>
          <td style="width: 2%;">:</td>
          <td>{{$anggota_kelas->siswa->nama_ayah}}</td>
        </tr>
        <tr style="line-height: 25px;">
          <td style="width: 4%;"></td>
          <td style="width: 25%;">b. Ibu</td>
          <td style="width: 2%;">:</td>
          <td>{{$anggota_kelas->siswa->nama_ibu}}</td>
        </tr>
        <tr style="line-height: 25px;">
          <td style="width: 4%;">12</td>
          <td style="width: 25%;">Pekerjaan Orang Tua</td>
          <td style="width: 2%;"></td>
          <td></td>
        </tr>
        <tr style="line-height: 25px;">
          <td style="width: 4%;"></td>
          <td style="width: 25%;">a. Ayah</td>
          <td style="width: 2%;">:</td>
          <td>{{$anggota_kelas->siswa->pekerjaan_ayah}}</td>
        </tr>
        <tr style="line-height: 25px;">
          <td style="width: 4%;"></td>
          <td style="width: 25%;">b. Ibu</td>
          <td style="width: 2%;">:</td>
          <td>{{$anggota_kelas->siswa->pekerjaan_ibu}}</td>
        </tr>
        <tr style="line-height: 25px;">
          <td style="width: 4%;">13</td>
          <td style="width: 25%;">Nama Wali Siswa</td>
          <td style="width: 2%;">:</td>
          <td>{{$anggota_kelas->siswa->nama_wali}}</td>
        </tr>
        <tr style="line-height: 25px;">
          <td style="width: 4%;">14</td>
          <td style="width: 25%;">Pekerjaan Wali Siswa</td>
          <td style="width: 2%;">:</td>
          <td>{{$anggota_kelas->siswa->pekerjaan_wali}}</td>
        </tr>
      </table>
      <table style="padding-top: 30px;">
        <tr>
          <td style="width: 38%;"></td>
          <td style="width: 22%;">
            <div style="border: 1px solid #333; width: 25mm; height: 35mm; text-align: center; font-size: 12px;">
              <br><br><br>
              Foto Siswa <br>
              3x4
            </div>
          </td>
          <td style="width: 40%; font-size: 15px;">
            @if(!is_null($anggota_kelas->kelas->tapel->k13_tgl_raport))
            {{$anggota_kelas->kelas->tapel->k13_tgl_raport->tempat_penerbitan}},
            @endif
            {{$anggota_kelas->siswa->created_at->isoFormat('D MMMM Y')}}<br>
            Kepala Sekolah, <br><br><br><br>
            <b><u>{{$sekolah->kepala_sekolah}}</u></b><br>
            NIP. {{konversi_nip($sekolah->nip_kepala_sekolah)}}
          </td>
        </tr>
      </table>
    </div>
    <div class="footer">
      <i>{{$anggota_kelas->siswa->nama_lengkap}} | {{$anggota_kelas->siswa->nis}}</i> <b style="float: right;"><i>Halaman 3</i></b>
    </div>
  </div>

</body>

</html>