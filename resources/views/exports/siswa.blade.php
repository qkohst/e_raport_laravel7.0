<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Siswa</title>
</head>

<body>
  <table>
    <thead>
      <tr>
        <td colspan="9"><strong>DATA SISWA</strong></td>
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
      <tr>
        <td align="center" style="border: 1px solid #000000; background-color: #d9ecd0;"><strong>NO</strong></td>
        <td align="center" style="border: 1px solid #000000; background-color: #d9ecd0;"><strong>NIS</strong></td>
        <td align="center" style="border: 1px solid #000000; background-color: #d9ecd0;"><strong>NISN</strong></td>
        <td align="center" style="border: 1px solid #000000; background-color: #d9ecd0;"><strong>NAMA LENGKAP</strong></td>
        <td align="center" style="border: 1px solid #000000; background-color: #d9ecd0;"><strong>TEMPAT LAHIR</strong></td>
        <td align="center" style="border: 1px solid #000000; background-color: #d9ecd0;"><strong>TANGGAL LAHIR</strong></td>
        <td align="center" style="border: 1px solid #000000; background-color: #d9ecd0;"><strong>JENIS KELAMIN</strong></td>
        <td align="center" style="border: 1px solid #000000; background-color: #d9ecd0;"><strong>KELAS</strong></td>
        <td align="center" style="border: 1px solid #000000; background-color: #d9ecd0;"><strong>JENIS PENDAFTARAN</strong></td>
        <td align="center" style="border: 1px solid #000000; background-color: #d9ecd0;"><strong>AGAMA</strong></td>
        <td align="center" style="border: 1px solid #000000; background-color: #d9ecd0;"><strong>STATUS DALAM KELUARGA</strong></td>
        <td align="center" style="border: 1px solid #000000; background-color: #d9ecd0;"><strong>ANAK KE</strong></td>
        <td align="center" style="border: 1px solid #000000; background-color: #d9ecd0;"><strong>ALAMAT</strong></td>
        <td align="center" style="border: 1px solid #000000; background-color: #d9ecd0;"><strong>NOMOR HP</strong></td>
        <td align="center" style="border: 1px solid #000000; background-color: #d9ecd0;"><strong>NAMA AYAH</strong></td>
        <td align="center" style="border: 1px solid #000000; background-color: #d9ecd0;"><strong>NAMA IBU</strong></td>
        <td align="center" style="border: 1px solid #000000; background-color: #d9ecd0;"><strong>PEKERJAAN AYAH</strong></td>
        <td align="center" style="border: 1px solid #000000; background-color: #d9ecd0;"><strong>PEKERJAAN IBU</strong></td>
        <td align="center" style="border: 1px solid #000000; background-color: #d9ecd0;"><strong>NAMA WALI</strong></td>
        <td align="center" style="border: 1px solid #000000; background-color: #d9ecd0;"><strong>PEKERJAAN WALI</strong></td>
        <td align="center" style="border: 1px solid #000000; background-color: #d9ecd0;"><strong>STATUS</strong></td>
      </tr>
      <?php $no = 0; ?>
      @foreach($data_siswa as $siswa)
      <?php $no++; ?>
      <tr>
        <td align="center" style="border: 1px solid #000000;">{{ $no }}</td>
        <td align="center" style="border: 1px solid #000000;">{{ $siswa->nis }}</td>
        <td align="center" style="border: 1px solid #000000;">{{ $siswa->nisn }}</td>
        <td style="border: 1px solid #000000;">{{ $siswa->nama_lengkap }}</td>
        <td style="border: 1px solid #000000;">{{ $siswa->tempat_lahir }}</td>
        <td style="border: 1px solid #000000;">{{ date('d-m-Y', strtotime($siswa->tanggal_lahir)) }}</td>
        <td style="border: 1px solid #000000;">
          @if($siswa->jenis_kelamin == 'L')
          Laki-Laki
          @else
          Perempuan
          @endif
        </td>
        <td align="center" style="border: 1px solid #000000;">
          @if(is_null($siswa->kelas_id))
          Null
          @else
          {{ $siswa->kelas->nama_kelas }}
          @endif
        </td>
        <td style="border: 1px solid #000000;">
          @if($siswa->jenis_pendaftaran == 1)
          Siswa Baru
          @else
          Pindahan
          @endif
        </td>
        <td style="border: 1px solid #000000;">
          @if($siswa->agama == 1)
          Islam
          @elseif($siswa->agama == 2)
          Protestan
          @elseif($siswa->agama == 3)
          Katolik
          @elseif($siswa->agama == 4)
          Hindu
          @elseif($siswa->agama == 5)
          Budha
          @elseif($siswa->agama == 6)
          Khonghucu
          @elseif($siswa->agama == 7)
          Kepercayaan
          @endif
        </td>
        <td style="border: 1px solid #000000;">
          @if($siswa->status_dalam_keluarga == 1)
          Anak Kandung
          @elseif($siswa->status_dalam_keluarga == 2)
          Anak Angkat
          @elseif($siswa->status_dalam_keluarga == 3)
          Anak Tiri
          @endif
        </td>
        <td align="center" style="border: 1px solid #000000;">{{ $siswa->anak_ke }}</td>
        <td style="border: 1px solid #000000;">{{ $siswa->alamat }}</td>
        <td style="border: 1px solid #000000;">{{ $siswa->nomor_hp }}</td>
        <td style="border: 1px solid #000000;">{{ $siswa->nama_ayah }}</td>
        <td style="border: 1px solid #000000;">{{ $siswa->nama_ibu }}</td>
        <td style="border: 1px solid #000000;">{{ $siswa->pekerjaan_ayah }}</td>
        <td style="border: 1px solid #000000;">{{ $siswa->pekerjaan_ibu }}</td>
        <td style="border: 1px solid #000000;">{{ $siswa->nama_wali }}</td>
        <td style="border: 1px solid #000000;">{{ $siswa->pekerjaan_wali }}</td>
        <td style="border: 1px solid #000000;">
          @if($siswa->status == 1)
          Aktif
          @elseif($siswa->status == 2)
          Keluar
          @elseif($siswa->status == 3)
          Lulus
          @endif
        </td>

      </tr>
      @endforeach
      <!-- End siswa  -->
    </tbody>
  </table>
</body>

</html>