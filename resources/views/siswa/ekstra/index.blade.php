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
                <table class="table table-bordered table-striped">
                  <thead class="bg-info">
                    <tr>
                      <th class="text-center" rowspan="2" style="width: 5%;">No</th>
                      <th class="text-center" rowspan="2" style="width: 25%;">Nama Ekstrakulikuler</th>
                      <th class="text-center" rowspan="2" style="width: 20%;">Pembina</th>
                      <th class="text-center" colspan="2" style="width: 50%;">Nilai Ekstrakulikuler</th>
                    </tr>
                    <tr>
                      <th class="text-center" style="width: 10%;">Nilai</th>
                      <th class="text-center" style="width: 40%;">Deskripsi</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php $no = 0; ?>
                    @foreach($data_anggota_ekstra->sortBy('ekstrakulikuler.nama_ekstrakulikuler') as $anggota_ekstra)
                    <?php $no++; ?>
                    <tr>
                      <td class="text-center">{{$no}}</td>
                      <td>{{$anggota_ekstra->ekstrakulikuler->nama_ekstrakulikuler}}</td>
                      <td>{{$anggota_ekstra->ekstrakulikuler->pembina->nama_lengkap}}, {{$anggota_ekstra->ekstrakulikuler->pembina->gelar}}</td>
                      @if(!is_null($anggota_ekstra->nilai))
                      <td class="text-center">
                        @if($anggota_ekstra->nilai->nilai == 4)
                        Sangat Baik
                        @elseif($anggota_ekstra->nilai->nilai == 3)
                        Baik
                        @elseif($anggota_ekstra->nilai->nilai == 2)
                        Cukup
                        @elseif($anggota_ekstra->nilai->nilai == 1)
                        Kurang
                        @endif
                      </td>
                      <td>{{$anggota_ekstra->nilai->deskripsi}}</td>
                      @else
                      <td class="text-center"></td>
                      <td></td>
                      @endif
                    </tr>
                    @endforeach
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