<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>FORMAT IMPORT KKM K13</title>
</head>

<body>
  <table>
    <thead>
      <tr>
        <td colspan="6">
          <strong>FORMAT IMPORT KKM MATA PELAJARAN TAHUN PELAJARAN {{$tapel->tahun_pelajaran}}
            @if($tapel->semester == 1)
            GANJIL
            @else
            GENAP
            @endif
          </strong>
        </td>
      </tr>
      <tr>
        <td colspan="6">Waktu download : {{$time_download}}</td>
      </tr>
      <tr>
        <td colspan="6">Didownload oleh : {{Auth::user()->admin->nama_lengkap}} ({{Auth::user()->username}})</td>
      </tr>
      <tr></tr>
      <tr>
        <td colspan="6"><Strong>Catatan :</Strong></td>
      </tr>
      <tr>
        <td colspan="6">- Merubah format file akan menyebabkan error pada saat proses import data.</td>
      </tr>
      <tr>
        <td colspan="6">- Isikan KKM dengan angka antara 0 s/d 100</td>
      </tr>
    </thead>
    <tbody>
      <!-- Pembelajaran  -->
      <tr>
      </tr>
      <tr>
        <td align="center" style="border: 1px solid #000000; background-color: #d9ecd0;">
          <strong>NO</strong>
        </td>
        <td align="center" style="border: 1px solid #000000; background-color: #d9ecd0;">
          <strong>MAPEL ID</strong>
        </td>
        <td align="center" style="border: 1px solid #000000; background-color: #d9ecd0;">
          <strong>KELAS ID</strong>
        </td>
        <td align="center" style="border: 1px solid #000000; background-color: #d9ecd0;">
          <strong>MATA PELAJARAN</strong>
        </td>
        <td align="center" style="border: 1px solid #000000; background-color: #d9ecd0;">
          <strong>KELAS</strong>
        </td>
        <td align="center" style="border: 1px solid #000000; background-color: #d9ecd0;">
          <strong>TINGKAT</strong>
        </td>
        <td align="center" style="border: 1px solid #000000; background-color: #d9ecd0;">
          <strong>KKM</strong>
        </td>
      </tr>
      <?php $no = 0; ?>
      @foreach($data_pembelajaran as $pembelajaran)
      <?php $no++; ?>
      <tr>
        <td align="center" style="border: 1px solid #000000;">
          {{ $no }}
        </td>
        <td align="center" style="border: 1px solid #000000;">
          {{$pembelajaran->mapel->id}}
        </td>
        <td align="center" style="border: 1px solid #000000;">
          {{$pembelajaran->kelas->id}}
        </td>
        <td style="border: 1px solid #000000;">
          {{$pembelajaran->mapel->nama_mapel}}
        </td>
        <td style="border: 1px solid #000000;">
          {{$pembelajaran->kelas->nama_kelas}}
        </td>
        <td align="center" style="border: 1px solid #000000;">
          {{$pembelajaran->kelas->tingkatan_kelas}}
        </td>
        <td style="border: 1px solid #000000; width: 12px">

        </td>
      </tr>
      @endforeach
      <!-- End Pembelajaran  -->
    </tbody>
  </table>

</body>

</html>