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
              <h3 class="card-title"><i class="fas fa-list-ol"></i> {{$title}}</h3>
            </div>

            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered table-hover">
                  <thead class="bg-success">
                    <tr>
                      <th rowspan="2" class="text-center" style="width: 100px;">No</th>
                      <th rowspan="2" class="text-center">Mata Pelajaran</th>
                      <th rowspan="2" class="text-center">Kelas</th>
                      <th colspan="2" class="text-center" style="width: 200px;">Jumlah</th>
                      <th rowspan="2" class="text-center" style="width: 100px;">Input Nilai</th>
                    </tr>
                    <tr>
                      <th class="text-center" style="width: 100px;">Rencana Penilaian</th>
                      <th class="text-center" style="width: 100px;">Telah Dinilai</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php $no = 0; ?>
                    @foreach($data_penilaian as $penilaian)
                    <?php $no++; ?>
                    <tr>
                      <td class="text-center">{{$no}}</td>
                      <td>{{$penilaian->mapel->nama_mapel}}</td>
                      <td>{{$penilaian->kelas->nama_kelas}}</td>

                      @if($penilaian->jumlah_rencana_penilaian == 0)
                      <td class="text-danger text-center"><b>0</b></td>
                      @else
                      <td class="text-success text-center"><b>{{$penilaian->jumlah_rencana_penilaian}}</b></td>
                      @endif

                      @if($penilaian->jumlah_telah_dinilai == 0)
                      <td class="text-danger text-center"><b>0</b></td>
                      @elseif($penilaian->jumlah_telah_dinilai == $penilaian->jumlah_rencana_penilaian)
                      <td class="text-success text-center"><b>{{$penilaian->jumlah_telah_dinilai}}</b></td>
                      @else
                      <td class="text-warning text-center"><b>{{$penilaian->jumlah_telah_dinilai}}</b></td>
                      @endif

                      @if($penilaian->jumlah_rencana_penilaian != 0)
                      <td class="text-center">
                        <button type="button" class="btn btn-sm btn-primary" data-toggle="modal" data-target="#modal-tambah{{$penilaian->id}}">
                          <i class="fas fa-plus"></i>
                        </button>
                      </td>
                      <!-- Modal tambah  -->
                      <div class="modal fade" id="modal-tambah{{$penilaian->id}}">
                        <div class="modal-dialog modal-lg">
                          <div class="modal-content">
                            <div class="modal-header">
                              <h5 class="modal-title">Input {{$title}}</h5>
                              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                              </button>
                            </div>
                            <div class="modal-body">
                              <form action="{{ route('nilaipengetahuan.create') }}" method="GET">
                                @csrf
                                <div class="form-group row">
                                  <label for="pembelajaran_id" class="col-sm-3 col-form-label">Mata Pelajaran</label>
                                  <div class="col-sm-9">
                                    <select class="form-control" name="pembelajaran_id" style="width: 100%;" aria-readonly="true">
                                      <option value="{{$penilaian->id}}" selected>{{$penilaian->mapel->nama_mapel}} {{$penilaian->kelas->nama_kelas}}</option>
                                    </select>
                                  </div>
                                </div>
                                <div class="form-group row">
                                  <label for="kode_penilaian" class="col-sm-3 col-form-label">Kode Penilaian</label>
                                  <div class="col-sm-9">
                                    <select class="form-control select2" name="kode_penilaian" style="width: 100%;" required onchange="this.form.submit();">
                                      <option value="">-- Pilih Penilaian --</option>
                                      @foreach($penilaian->data_rencana_nilai as $kode_penilaian)
                                      <option value="{{$kode_penilaian->kode_penilaian}}">{{$kode_penilaian->kode_penilaian}}</option>
                                      @endforeach
                                    </select>
                                  </div>
                                </div>
                              </form>
                            </div>
                          </div>
                        </div>
                      </div>
                      <!-- End Modal tambah -->
                      @else
                      <td></td>
                      @endif
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