@include('layouts.main.header')
@include('layouts.sidebar.admin')

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0 text-dark">{{$title}}</h1>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item "><a href="{{ route('dashboard') }}">Dashboard</a></li>
            <li class="breadcrumb-item active">{{$title}}</li>
          </ol>
        </div><!-- /.col -->
      </div><!-- /.row -->
    </div><!-- /.container-fluid -->
  </div>
  <!-- /.content-header -->

  <!-- Main content -->
  <section class="content">
    <div class="container-fluid">
      <!-- ./row -->
      <div class="row">
        <div class="col-md-6">
          <div class="card card-default">
            <div class="card-header">
              <h3 class="card-title"><i class="fas fa-server"></i> {{$title}} Master</h3>
            </div>

            <div class="card-body">
              <div class="callout callout-success">
                <h5>Sekolah</h5>
                <p class="text-success"><i class="icon fas fa-check"></i> Seluruh data sekolah valid.</p>
              </div>
              <div class="callout callout-success">
                <h5>Guru</h5>
                @if($count_guru == 0)
                <span class="text-danger"><i class="icon fas fa-ban"></i> Belum ditemukan data guru.</span>
                @else
                <span class="text-success"><i class="icon fas fa-check"></i> Seluruh data guru valid.</span>
                @endif
              </div>
              <div class="callout callout-success">
                <h5>Mata Pelajaran</h5>
                @if($count_mapel == 0)
                <span class="text-danger"><i class="icon fas fa-ban"></i> Belum ditemukan data mata pelajaran.</span>
                @else
                <span class="text-success"><i class="icon fas fa-check"></i> Seluruh data mata pelajaran valid.</span>
                @endif
              </div>
              <div class="callout callout-success">
                <h5>Kelas & Wali</h5>
                @if($count_kelas == 0)
                <span class="text-danger"><i class="icon fas fa-ban"></i> Belum ditemukan data kelas.</span>
                @endif

                @foreach($data_kelas as $kelas)
                @if($kelas->jumlah_anggota == 0)
                <span class="text-danger"><i class="icon fas fa-ban"></i> Belum ditemukan <b>anggota kelas</b> pada <b>{{$kelas->nama_kelas}}</b></span><br>
                @else
                <span class="text-success"><i class="icon fas fa-check"></i> Data kelas & wali {{$kelas->nama_kelas}} valid.</span><br>
                @endif
                @endforeach
              </div>
              <div class="callout callout-success">
                <h5>Siswa</h5>
                @if($count_siswa == 0)
                <span class="text-danger"><i class="icon fas fa-ban"></i> Belum ditemukan data siswa.</span>
                @elseif($count_siswa_invalid != 0)
                <span class="text-danger"><i class="icon fas fa-ban"></i> Terdapat <b>{{$count_siswa_invalid}} siswa</b> belum masuk anggota kelas</span><br>
                @else
                <span class="text-success"><i class="icon fas fa-check"></i> Seluruh data siswa valid.</span>
                @endif
              </div>
              <div class="callout callout-success">
                <h5>Pembelajaran</h5>
                @foreach($data_kelas as $kelas)
                @if($kelas->jumlah_pembelajaran == 0)
                <span class="text-danger"><i class="icon fas fa-ban"></i> Belum ditemukan <b>pembelajaran</b> pada <b>{{$kelas->nama_kelas}}</b></span><br>
                @else
                <span class="text-success"><i class="icon fas fa-check"></i> Data pembelajaran {{$kelas->nama_kelas}} valid.</span><br>
                @endif
                @endforeach
              </div>
              <div class="callout callout-success">
                <h5>Ekstrakulikuler</h5>
                @if($count_ekstrakulikuler == 0)
                <span class="text-warning"><i class="icon fas fa-exclamation-triangle"></i> Belum ditemukan data ekstrakulikuler.</span>
                @endif

                @foreach($data_ekstrakulikuler as $ekstrakulikuler)
                @if($ekstrakulikuler->jumlah_anggota == 0)
                <span class="text-danger"><i class="icon fas fa-ban"></i> Belum ditemukan <b>anggota ekstrakulikuler</b> pada ekstrakulikuler <b>{{$ekstrakulikuler->nama_ekstrakulikuler}}</b></span><br>
                @else
                <span class="text-success"><i class="icon fas fa-check"></i> Data ekstrakulikuler {{$ekstrakulikuler->nama_ekstrakulikuler}} valid.</span><br>
                @endif
                @endforeach
              </div>
            </div>
          </div>
          <!-- /.card -->
        </div>

        <div class="col-md-6">
          <div class="card card-default">
            <div class="card-header">
              <h3 class="card-title"><i class="fas fa-cogs"></i> Validasi Setting Raport</h3>
            </div>
            <div class="card-body">
              <div class="callout callout-success">
                <h5>Mapping Mapel</h5>
                @if($count_mapel_belum_mapping == 0)
                <span class="text-success"><i class="icon fas fa-check"></i> Seluruh mata pelajaran telah dilakukan mapping.</span>
                @else
                @foreach($mapel_belum_mapping as $mapel)
                <span class="text-danger"><i class="icon fas fa-ban"></i> Mata pelajaran <b>{{$mapel->nama_mapel}}</b> belum dilakukan mapping</span><br>
                @endforeach
                @endif
              </div>
              <div class="callout callout-success">
                <h5>KKM Mapel</h5>
                @if($count_pembelajaran == 0)
                <span class="text-danger"><i class="icon fas fa-ban"></i> Belum ditemukan data KKM mapel.</span>
                @elseif($count_pembelajaran == $count_kkm)
                <span class="text-success"><i class="icon fas fa-check"></i> Seluruh data KKM mapel valid.</span>
                @else
                <span class="text-danger"><i class="icon fas fa-ban"></i> Terdapat {{$count_pembelajaran-$count_kkm}} pembelajaran belum ditentukan KKM.</span>
                @endif
              </div>
              <div class="callout callout-success">
                <h5>Butir-Butir Sikap</h5>
                @if($count_sikap_spiritual == 0 && $count_sikap_sosial == 0)
                <span class="text-danger"><i class="icon fas fa-ban"></i> Belum ditemukan data butir-butir sikap.</span>
                @elseif($count_sikap_spiritual == 0 || $count_sikap_sosial == 0)

                @if($count_sikap_spiritual == 0)
                <span class="text-danger"><i class="icon fas fa-ban"></i> Belum ditemukan data butir-butir <b>sikap spiritual</b>.</span>
                @elseif($count_sikap_sosial == 0)
                <span class="text-danger"><i class="icon fas fa-ban"></i> Belum ditemukan data butir-butir <b>sikap sosial</b>.</span>
                @endif

                @else
                <span class="text-success"><i class="icon fas fa-check"></i> Seluruh data butir-butir sikap valid.</span>
                @endif
              </div>
              <div class="callout callout-success">
                <h5>Kompetensi Dasar</h5>
                @if($count_data_kd == 0)
                <span class="text-danger"><i class="icon fas fa-ban"></i> Belum ditemukan data kompetensi dasar.</span>
                @else

                @foreach($data_kd as $kd)
                @if($kd->jumlah_kd_mapel == 0)
                <span class="text-warning"><i class="icon fas fa-exclamation-triangle"></i> Belum ditemukan data Kompetensi Dasar pada mapel <b>{{$kd->nama_mapel}}</b></span><br>
                @else
                <span class="text-success"><i class="icon fas fa-check"></i> Kompetensi Dasar mata pelajaran <b>{{$kd->nama_mapel}}</b> valid</span><br>
                @endif
                @endforeach
                @endif
              </div>
              <div class="callout callout-success">
                <h5>Tanggal Raport</h5>
                @if($count_tgl_raport == 0)
                <span class="text-danger"><i class="icon fas fa-ban"></i> Belum ditemukan data tanggal raport.</span>
                @else
                <span class="text-success"><i class="icon fas fa-check"></i> Data tanggal raport valid.</span><br>
                @endif
              </div>
            </div>
          </div>
          <!-- /.card -->
        </div>

      </div>
      <!-- /.row -->
    </div>
    <!--/. container-fluid -->
  </section>
  <!-- /.content -->
</div>
<!-- /.content-wrapper -->

@include('layouts.main.footer')