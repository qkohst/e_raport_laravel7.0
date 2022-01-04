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
        <td colspan="5"><strong>DATA USER E-RAPORT</strong></td>
      </tr>
      <tr>
        <td colspan="5">Waktu download : {{$time_download}}</td>
      </tr>
      <tr>
        <td colspan="5">Didownload oleh : {{Auth::user()->admin->nama_lengkap}} ({{Auth::user()->username}})</td>
      </tr>
      <tr>
        <td colspan="5">Password default : 123456</td>
      </tr>
    </thead>
    <tbody>
      <!-- User Admin  -->
      <tr>
      </tr>
      <tr>
        <td><strong>A.</strong></td>
        <td><strong>USER ADMINISTRATOR</strong></td>
      </tr>
      <tr>
        <td align="center" style="border: 1px solid #000000; background-color: #d9ecd0;"><strong>NO</strong></td>
        <td align="center" style="border: 1px solid #000000; background-color: #d9ecd0;"><strong>NAMA LENGKAP</strong></td>
        <td align="center" style="border: 1px solid #000000; background-color: #d9ecd0;"><strong>USERNAME</strong></td>
        <td align="center" style="border: 1px solid #000000; background-color: #d9ecd0;"><strong>LEVEL</strong></td>
        <td align="center" style="border: 1px solid #000000; background-color: #d9ecd0;"><strong>STATUS</strong></td>
      </tr>
      <?php $no = 0; ?>
      @foreach($data_user_admin as $admin)
      <?php $no++; ?>
      <tr>
        <td align="center" style="border: 1px solid #000000;">{{ $no }}</td>
        <td style="border: 1px solid #000000;">{{ $admin->admin->nama_lengkap }}</td>
        <td style="border: 1px solid #000000;">{{ $admin->username }}</td>
        <td style="border: 1px solid #000000;">Administrator</td>
        <td style="border: 1px solid #000000;">
          @if($admin->status == 1)
          Aktif
          @else
          Non Aktif
          @endif
        </td>
      </tr>
      @endforeach
      <!-- End User Admin  -->

      <!-- User Guru  -->
      <tr>
      </tr>
      <tr>
        <td><strong>B.</strong></td>
        <td><strong>USER GURU</strong></td>
      </tr>
      <tr>
        <td align="center" style="border: 1px solid #000000; background-color: #d9ecd0;"><strong>NO</strong></td>
        <td align="center" style="border: 1px solid #000000; background-color: #d9ecd0;"><strong>NAMA LENGKAP</strong></td>
        <td align="center" style="border: 1px solid #000000; background-color: #d9ecd0;"><strong>USERNAME</strong></td>
        <td align="center" style="border: 1px solid #000000; background-color: #d9ecd0;"><strong>LEVEL</strong></td>
        <td align="center" style="border: 1px solid #000000; background-color: #d9ecd0;"><strong>STATUS</strong></td>
      </tr>
      <?php $no = 0; ?>
      @foreach($data_user_guru as $guru)
      <?php $no++; ?>
      <tr>
        <td align="center" style="border: 1px solid #000000;">{{ $no }}</td>
        <td style="border: 1px solid #000000;">{{ $guru->guru->nama_lengkap }}</td>
        <td style="border: 1px solid #000000;">{{ $guru->username }}</td>
        <td style="border: 1px solid #000000;">Guru</td>
        <td style="border: 1px solid #000000;">
          @if($guru->status == 1)
          Aktif
          @else
          Non Aktif
          @endif
        </td>
      </tr>
      @endforeach
      <!-- End User Guru  -->

      <!-- User Siswa  -->
      <tr>
      </tr>
      <tr>
        <td><strong>C.</strong></td>
        <td><strong>USER SISWA</strong></td>
      </tr>
      <tr>
        <td align="center" style="border: 1px solid #000000; background-color: #d9ecd0;"><strong>NO</strong></td>
        <td align="center" style="border: 1px solid #000000; background-color: #d9ecd0;"><strong>NAMA LENGKAP</strong></td>
        <td align="center" style="border: 1px solid #000000; background-color: #d9ecd0;"><strong>USERNAME</strong></td>
        <td align="center" style="border: 1px solid #000000; background-color: #d9ecd0;"><strong>LEVEL</strong></td>
        <td align="center" style="border: 1px solid #000000; background-color: #d9ecd0;"><strong>STATUS</strong></td>
      </tr>
      <?php $no = 0; ?>
      @foreach($data_user_siswa as $siswa)
      <?php $no++; ?>
      <tr>
        <td align="center" style="border: 1px solid #000000;">{{ $no }}</td>
        <td style="border: 1px solid #000000;">{{ $siswa->siswa->nama_lengkap }}</td>
        <td style="border: 1px solid #000000;">{{ $siswa->username }}</td>
        <td style="border: 1px solid #000000;">Siswa</td>
        <td style="border: 1px solid #000000;">
          @if($siswa->status == 1)
          Aktif
          @else
          Non Aktif
          @endif
        </td>
      </tr>
      @endforeach
      <!-- End User Siswa  -->
    </tbody>
  </table>
</body>

</html>