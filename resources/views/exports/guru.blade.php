<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>User</title>
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
        <td><strong>NO</strong></td>
        <td align="center"><strong>NAMA LENGKAP</strong></td>
        <td align="center"><strong>GELAR</strong></td>
        <td align="center"><strong>NIP</strong></td>
        <td align="center"><strong>NUPTK</strong></td>
        <td align="center"><strong>TEMPAT LAHIR</strong></td>
        <td align="center"><strong>TANGGAL LAHIR</strong></td>
        <td align="center"><strong>JENIS KELAMIN</strong></td>
        <td align="center"><strong>ALAMAT</strong></td>
      </tr>
      <?php $no = 0; ?>
      @foreach($data_guru as $guru)
      <?php $no++; ?>
      <tr>
        <td align="center">{{ $no }}</td>
        <td>{{ $guru->nama_lengkap }}</td>
        <td>{{ $guru->gelar }}</td>
        <td>{{ $guru->nip }}</td>
        <td>{{ $guru->nuptk }}</td>
        <td>{{ $guru->tempat_lahir }}</td>
        <td>{{ $guru->tanggal_lahir }}</td>
        <td>
          @if($guru->jenis_kelamin == 'L')
          Laki-Laki
          @else
          Perempuan
          @endif
        </td>
        <td>{{ $guru->alamat }}</td>
      </tr>
      @endforeach
      <!-- End Guru  -->
    </tbody>
  </table>
</body>

</html>