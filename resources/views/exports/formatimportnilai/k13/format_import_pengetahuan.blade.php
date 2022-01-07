<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>IMPORT PENGETAHUAN K13</title>
</head>

<body>
  <table>
    <thead>
      <tr>
        <td colspan="7" align="center">
          <strong>FORMAT IMPORT NILAI PENGETAHUAN</strong>
        </td>
      </tr>
      <tr>
        <td colspan="2">
          <strong>Kelas </strong>
        </td>
        <td colspan="5">
          <strong>: {{$pembelajaran->kelas->nama_kelas}} </strong>
        </td>
      </tr>
      <tr>
        <td colspan="2">
          <strong>Mata Pelajaran </strong>
        </td>
        <td colspan="5">
          <strong>: {{$pembelajaran->mapel->nama_mapel}} </strong>
        </td>
      </tr>
      <tr>
        <td colspan="2">
          <strong>Kurikulum </strong>
        </td>
        <td colspan="5">
          <strong>: 2013 </strong>
        </td>
      </tr>

      <tr>
        <td colspan="7"></td>
      </tr>

      <tr>
        <td colspan="7"><Strong>Catatan :</Strong></td>
      </tr>
      <tr>
        <td colspan="7">- Merubah format file akan menyebabkan error pada saat proses import data.</td>
      </tr>
      <tr>
        <td colspan="7">- Isikan Nilai dengan angka antara 0 s/d 100</td>
      </tr>
    </thead>
    <tbody>
      <!-- Pembelajaran  -->
      <tr>
        <td colspan="7"></td>
      </tr>
      <tr>
        <td align="center" style="border: 1px solid #000000; background-color: #d9ecd0;">
          <strong>NO</strong>
        </td>
        <td align="center" style="border: 1px solid #000000; background-color: #d9ecd0;">
          <strong>ID RENCANA PENILAIAN</strong>
        </td>
        <td align="center" style="border: 1px solid #000000; background-color: #d9ecd0;">
          <strong>ANGGOTA KELAS ID</strong>
        </td>
        <td align="center" style="border: 1px solid #000000; background-color: #d9ecd0;">
          <strong>NAMA SISWA</strong>
        </td>
        <td align="center" style="border: 1px solid #000000; background-color: #d9ecd0;">
          <strong>KODE PENILAIAN</strong>
        </td>
        <td align="center" style="border: 1px solid #000000; background-color: #d9ecd0;">
          <strong>NO. KD</strong>
        </td>
        <td align="center" style="border: 1px solid #000000; background-color: #d9ecd0;">
          <strong>NILAI</strong>
        </td>
      </tr>

      <?php $no = 0; ?>
      @foreach($data_rencana_penilaian as $rencana_penilaian)
      @foreach($data_anggota_kelas->sortBy('siswa.nama_lengkap') as $anggota_kelas)
      <?php $no++; ?>
      <tr>
        @if($no % 2 == 0)
        <td align=" center" style="border: 1px solid #000000; background-color: #e0eda4;">
          {{ $no }}
        </td>
        <td align="center" style="border: 1px solid #000000; background-color: #e0eda4;">
          {{$rencana_penilaian->id}}
        </td>
        <td align="center" style="border: 1px solid #000000; background-color: #e0eda4;">
          {{$anggota_kelas->id}}
        </td>
        <td style="border: 1px solid #000000; background-color: #e0eda4;">
          {{$anggota_kelas->siswa->nama_lengkap}}
        </td>
        <td align="center" style="border: 1px solid #000000; background-color: #e0eda4;">
          {{$rencana_penilaian->kode_penilaian}}
        </td>
        <td align="center" style="border: 1px solid #000000; background-color: #e0eda4;">
          KD : {{$rencana_penilaian->k13_kd_mapel->kode_kd}}
        </td>
        <td align="center" style="border: 1px solid #000000; background-color: #e0eda4;">
        </td>

        @else

        <td align=" center" style="border: 1px solid #000000;">
          {{ $no }}
        </td>
        <td align="center" style="border: 1px solid #000000;">
          {{$rencana_penilaian->id}}
        </td>
        <td align="center" style="border: 1px solid #000000;">
          {{$anggota_kelas->id}}
        </td>
        <td style="border: 1px solid #000000;">
          {{$anggota_kelas->siswa->nama_lengkap}}
        </td>
        <td align="center" style="border: 1px solid #000000;">
          {{$rencana_penilaian->kode_penilaian}}
        </td>
        <td align="center" style="border: 1px solid #000000;">
          KD : {{$rencana_penilaian->k13_kd_mapel->kode_kd}}
        </td>
        <td align="center" style="border: 1px solid #000000;">
        </td>
        @endif
      </tr>
      @endforeach

      @endforeach

      <!-- End Pembelajaran  -->
    </tbody>
  </table>

</body>

</html>