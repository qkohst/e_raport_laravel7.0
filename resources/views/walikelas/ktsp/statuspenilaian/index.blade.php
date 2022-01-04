@include('layouts.main.header')
@include('layouts.sidebar.walikelas')

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
              <h3 class="card-title"><i class="fas fa-check-circle"></i> {{$title}}</h3>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered table-striped">
                  <thead class="bg-info">
                    <tr>
                      <th rowspan="2" class="text-center">No</th>
                      <th rowspan="2" class="text-center">Mata Pelajaran</th>
                      <th rowspan="2" class="text-center">Kelas</th>
                      <th rowspan="2" class="text-center">Nama Guru</th>
                      <th rowspan="2" class="text-center" style="width: 50px;">Bobot</th>
                      <th colspan="4" class="text-center" style="width: 200px;">Status Penilaian</th>
                      <th colspan="2" class="text-center" style="width: 100px;">Status Nilai Raport</th>
                    </tr>
                    <tr>
                      <th class="text-center" style="width: 50px;">Tugas</th>
                      <th class="text-center" style="width: 50px;">UH</th>
                      <th class="text-center" style="width: 50px;">UTS</th>
                      <th class="text-center" style="width: 50px;">UAS</th>

                      <th class="text-center" style="width: 50px;">Kirim Nilai</th>
                      <th class="text-center" style="width: 50px;">Input Deskripsi</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php $no = 0; ?>
                    @foreach($data_pembelajaran_kelas as $pembelajaran)
                    <?php $no++; ?>
                    <tr>
                      <td class="text-center">{{$no}}</td>
                      <td>{{$pembelajaran->mapel->nama_mapel}}</td>
                      <td class="text-center">{{$pembelajaran->kelas->nama_kelas}}</td>
                      <td>{{$pembelajaran->guru->nama_lengkap}}</td>

                      @if($pembelajaran->bobot == 0)
                      <td class="text-center bg-danger"><i class="fas fa-times"></i></td>
                      @else
                      <td class="text-center bg-success"><i class="fas fa-check"></i></td>
                      @endif

                      @if($pembelajaran->nilai_tugas == 0)
                      <td class="text-center bg-danger"><i class="fas fa-times"></i></td>
                      @else
                      <td class="text-center bg-success"><i class="fas fa-check"></i></td>
                      @endif

                      @if($pembelajaran->nilai_uh == 0)
                      <td class="text-center bg-danger"><i class="fas fa-times"></i></td>
                      @else
                      <td class="text-center bg-success"><i class="fas fa-check"></i></td>
                      @endif

                      @if($pembelajaran->uts_uas == 0)
                      <td class="text-center bg-danger"><i class="fas fa-times"></i></td>
                      <td class="text-center bg-danger"><i class="fas fa-times"></i></td>
                      @else
                      <td class="text-center bg-success"><i class="fas fa-check"></i></td>
                      <td class="text-center bg-success"><i class="fas fa-check"></i></td>
                      @endif

                      @if($pembelajaran->nilai_akhir == 0)
                      <td class="text-center bg-danger"><i class="fas fa-times"></i></td>
                      @else
                      <td class="text-center bg-success"><i class="fas fa-check"></i></td>
                      @endif

                      @if($pembelajaran->deskripsi == 0)
                      <td class="text-center bg-danger"><i class="fas fa-times"></i></td>
                      @else
                      <td class="text-center bg-success"><i class="fas fa-check"></i></td>
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