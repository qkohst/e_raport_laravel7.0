@include('layouts.main.header')
@include('layouts.sidebar.siswa')

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
        <div class="col-12">
          <div class="card">
            <div class="card-header">
              <h3 class="card-title"><i class="fas fa-book-reader"></i> {{$title}}</h3>
            </div>
            <div class="card-body">
              <div class="callout callout-info">
                <div class="form-group row">
                  <div class="col-sm-3">
                    Nama Lengkap
                  </div>
                  <div class="col-sm-9">
                    : {{$siswa->nama_lengkap}}
                  </div>
                </div>
                <div class="form-group row">
                  <div class="col-sm-3">
                    Nomor Induk / NISN
                  </div>
                  <div class="col-sm-9">
                    : {{$siswa->nis}} / {{$siswa->nisn}}
                  </div>
                </div>
              </div>
              <div class="table-responsive">
                <table class="table table-bordered">
                  <thead class="bg-info">
                    <tr>
                      <th class="text-center" rowspan="2" style="width: 40%;">Kelas</th>
                      <th class="text-center" colspan="3" style="width: 60%;">Jumlah Ketidakhadiran</th>
                    </tr>
                    <tr>
                      <th class="text-center" style="width: 20%;">Sakit</th>
                      <th class="text-center" style="width: 20%;">Izin</th>
                      <th class="text-center" style="width: 20%;">Tanpa Keterangan</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      @if(is_null($kehadiran))
                      <td class="text-center text-danger" colspan="4">Data belum diinput</td>
                      @else
                      <td class="text-center">{{$kehadiran->anggota_kelas->kelas->nama_kelas}} {{$kehadiran->anggota_kelas->kelas->tapel->tahun_pelajaran}}
                        @if($kehadiran->anggota_kelas->kelas->tapel->semester == 1)
                        Ganjil
                        @else
                        Genap
                        @endif
                      </td>
                      <td class="text-center">{{$kehadiran->sakit}}</td>
                      <td class="text-center">{{$kehadiran->izin}}</td>
                      <td class="text-center">{{$kehadiran->tanpa_keterangan}}</td>
                      @endif
                    </tr>
                  </tbody>
                </table>
              </div>
              <!-- /.table-responsive -->
            </div>
            <!-- /.card-body -->
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