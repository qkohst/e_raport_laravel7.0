<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>PEMBELAJARAN</title>
</head>

<body>
  <table>
    <thead>
      <tr>
        <td colspan="9"><strong>DATA PEMBELAJARAN</strong></td>
      </tr>
      <tr>
        <td colspan="9">Waktu download : {{$time_download}}</td>
      </tr>
      <tr>
        <td colspan="9">Didownload oleh : {{Auth::user()->admin->nama_lengkap}} ({{Auth::user()->username}})</td>
      </tr>
    </thead>
    <tbody>
      <!-- Pembelajaran  -->
      <tr>
      </tr>
      <tr>
        <td align="center" style="border: 1px solid #000000; background-color: #d9ecd0;"><strong>NO</strong></td>
        <td align="center" style="border: 1px solid #000000; background-color: #d9ecd0;"><strong>SEMESTER</strong></td>
        <td align="center" style="border: 1px solid #000000; background-color: #d9ecd0;"><strong>KELAS</strong></td>
        <td align="center" style="border: 1px solid #000000; background-color: #d9ecd0;"><strong>MATA PELAJARAN</strong></td>
        <td align="center" style="border: 1px solid #000000; background-color: #d9ecd0;"><strong>GURU</strong></td>
      </tr>
      <?php $no = 0; ?>
      @foreach($data_pembelajaran as $pembelajaran)
      <?php $no++; ?>
      <tr>
        <td align="center" style="border: 1px solid #000000;">{{ $no }}</td>
        <td align="center" style="border: 1px solid #000000;">{{$pembelajaran->kelas->tapel->tahun_pelajaran}}
          @if($pembelajaran->kelas->tapel->semester == 1)
          Ganjil
          @else
          Genap
          @endif
        </td>
        <td align="center" style="border: 1px solid #000000;">{{$pembelajaran->kelas->nama_kelas}}</td>
        <td style="border: 1px solid #000000;">{{$pembelajaran->mapel->nama_mapel}}</td>
        <td style="border: 1px solid #000000;">{{$pembelajaran->guru->nama_lengkap}}, {{$pembelajaran->guru->gelar}}</td>
      </tr>
      @endforeach
      <!-- End Pembelajaran  -->
    </tbody>
  </table>
</body>

</html>