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
              <div class="table-responsive">
                <table id="example1" class="table table-striped table-valign-middle table-hover">
                  <thead>
                    <tr>
                      <th>No</th>
                      <th>Mata Pelajaran</th>
                      <th>Kelas</th>
                      <th>Jumlah Rencana Penilaian</th>
                      <th>Aksi</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php $no = 0; ?>
                    @foreach($data_rencana_penilaian as $penilaian)
                    <?php $no++; ?>
                    <tr>
                      <td>{{$no}}</td>
                      <td>{{$penilaian->mapel->nama_mapel}}</td>
                      <td>{{$penilaian->kelas->nama_kelas}}</td>
                      <td>
                        @if($penilaian->jumlah_rencana_penilaian == 0)
                        <span class="badge badge-danger">Belum ada rencana penilaian</span>
                        @else
                        <span class="badge badge-success"><b>{{$penilaian->jumlah_rencana_penilaian}}</b> penilaian</span>
                        @endif
                      </td>
                      <td>
                        @if($penilaian->jumlah_rencana_penilaian == 0)
                        <form action="{{ route('rencanaspiritual.create') }}" method="GET">
                          @csrf
                          <input type="hidden" name="pembelajaran_id" value="{{$penilaian->id}}">
                          <button type="submit" class="btn btn-sm btn-primary"><i class="fas fa-plus"></i></button>
                        </form>
                        @else
                        <a href="{{ route('rencanaspiritual.show', $penilaian->id) }}" class="btn btn-sm btn-success"><i class="fas fa-eye"></i></a>
                        <a href="{{ route('rencanaspiritual.edit', $penilaian->id) }}" class="btn btn-sm btn-primary"><i class="fas fa-pencil-alt"></i></a>
                        @endif
                      </td>
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