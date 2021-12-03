@include('layouts.main.header')
@include('layouts.sidebar.guru')

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
            <li class="breadcrumb-item "><a href="{{ route('rencanapengetahuan.index') }}">Rencana Nilai Pengetahuan</a></li>
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
              <h3 class="card-title"><i class="fas fa-list-alt"></i> {{$title}}</h3>
            </div>

            <div class="card-body">
              <div class="callout callout-info">
                <div class="form-group row">
                  <label for="pembelajaran_id" class="col-sm-2 col-form-label">Mata Pelajaran</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" value="{{$pembelajaran->mapel->nama_mapel}} {{$pembelajaran->kelas->nama_kelas}}" readonly>
                  </div>
                </div>
              </div>

              <div class="table-responsive">
                <table class="table table-bordered table-striped">
                  <thead class="bg-primary">
                    <tr>
                      <th class="text-center">No</th>
                      <th class="text-center">Kompetensi Dasar</th>
                      <th class="text-center">Kode Penilaian</th>
                      <th class="text-center">Kelompok/Teknik Penilaian</th>
                      <th class="text-center">Bobot Teknik Penilaian</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php $no = 0; ?>
                    @foreach($data_rencana_penilaian as $rencana_penilaian)
                    <?php $no++; ?>
                    <tr>
                      <td class="text-center">{{$no}}</td>
                      <td><b>{{$rencana_penilaian->k13_kd_mapel->kode_kd}}</b> {{$rencana_penilaian->k13_kd_mapel->ringkasan_kompetensi}}</td>
                      <td class="text-center">{{$rencana_penilaian->kode_penilaian}}</td>
                      <td class="text-center">
                        @if($rencana_penilaian->teknik_penilaian == 1)
                        Tes Tulis
                        @elseif($rencana_penilaian->teknik_penilaian == 2)
                        Tes Lisan
                        @elseif($rencana_penilaian->teknik_penilaian == 3)
                        Penugasan
                        @endif
                      </td>
                      <td class="text-center">{{$rencana_penilaian->bobot_teknik_penilaian}}</td>
                    </tr>
                    @endforeach
                  </tbody>
                </table>
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