<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Guru</title>
</head>

<body>
  <table>
    <thead>
      <tr>
        <td colspan="9"><strong>DATA GURU</strong></td>
      </tr>
      <tr>
        <td colspan="9">Waktu download : {{$time_download}}</td>
      </tr>
      <tr>
        <td colspan="9">Didownload oleh : {{Auth::user()->admin->nama_lengkap}} ({{Auth::user()->username}})</td>
      </tr>
    </thead>
    <tbody>
      <!-- Guru  -->
      <tr>
      </tr>
      <tr>
        <td align="center" style="border: 1px solid #000000; background-color: #d9ecd0;"><strong>NO</strong></td>
        <td align="center" style="border: 1px solid #000000; background-color: #d9ecd0;"><strong>NAMA LENGKAP</strong></td>
        <td align="center" style="border: 1px solid #000000; background-color: #d9ecd0;"><strong>GELAR</strong></td>
        <td align="center" style="border: 1px solid #000000; background-color: #d9ecd0;"><strong>NIP</strong></td>
        <td align="center" style="border: 1px solid #000000; background-color: #d9ecd0;"><strong>NUPTK</strong></td>
        <td align="center" style="border: 1px solid #000000; background-color: #d9ecd0;"><strong>TEMPAT LAHIR</strong></td>
        <td align="center" style="border: 1px solid #000000; background-color: #d9ecd0;"><strong>TANGGAL LAHIR</strong></td>
        <td align="center" style="border: 1px solid #000000; background-color: #d9ecd0;"><strong>JENIS KELAMIN</strong></td>
        <td align="center" style="border: 1px solid #000000; background-color: #d9ecd0;"><strong>ALAMAT</strong></td>
      </tr>
      <?php $no = 0; ?>
      @foreach($data_guru as $guru)
      <?php $no++; ?>
      <tr>
        <td align="center" style="border: 1px solid #000000;">{{ $no }}</td>
        <td style="border: 1px solid #000000;">{{ $guru->nama_lengkap }}</td>
        <td style="border: 1px solid #000000;">{{ $guru->gelar }}</td>
        <td style="border: 1px solid #000000;">{{ $guru->nip }}</td>
        <td style="border: 1px solid #000000;">{{ $guru->nuptk }}</td>
        <td style="border: 1px solid #000000;">{{ $guru->tempat_lahir }}</td>
        <td style="border: 1px solid #000000;">{{ $guru->tanggal_lahir }}</td>
        <td style="border: 1px solid #000000;">
          @if($guru->jenis_kelamin == 'L')
          Laki-Laki
          @else
          Perempuan
          @endif
        </td>
        <td style="border: 1px solid #000000;">{{ $guru->alamat }}</td>
      </tr>
      @endforeach
      <!-- End Guru  -->
    </tbody>
  </table>
</body>

</html>