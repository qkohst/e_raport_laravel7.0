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
                      <th class="text-center" rowspan="2" style="width: 38%;">Mata Pelajaran</th>
                      <th class="text-center" rowspan="2" style="width: 7%;">KKM</th>
                      <th class="text-center" colspan="3" style="width: 50%;">Nilai Akhir Semester</th>
                    </tr>
                    <tr>
                      <th class="text-center">Angka</th>
                      <th class="text-center">Huruf</th>
                      <th class="text-center" style="width: 8%;">Predikat</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php $no = 0; ?>
                    @foreach($data_pembelajaran->sortBy('mapel.nama_mapel') as $pembelajaran)
                    <?php $no++; ?>
                    <tr>
                      <td class="text-center">{{$no}}</td>
                      <td>{{$pembelajaran->mapel->nama_mapel}}</td>
                      @if(!is_null($pembelajaran->nilai))
                      <td class="text-center">{{$pembelajaran->nilai->kkm}}</td>
                      <td class="text-center">{{$pembelajaran->nilai->nilai_akhir}}</td>
                      <td>{{terbilang($pembelajaran->nilai->nilai_akhir)}}</td>
                      <td class="text-center">
                        @if($pembelajaran->nilai->predikat == 'A')
                        Sangat Baik
                        @elseif($pembelajaran->nilai->predikat == 'B')
                        Baik
                        @elseif($pembelajaran->nilai->predikat == 'C')
                        Cukup
                        @elseif($pembelajaran->nilai->predikat == D)
                        Kurang
                        @endif
                      </td>

                      @else
                      <td class="text-center"></td>
                      <td class="text-center"></td>
                      <td class="text-center"></td>
                      <td class="text-center"></td>
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