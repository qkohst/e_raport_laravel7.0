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
                        <button type="button" class="btn btn-sm btn-primary" data-toggle="modal" data-target="#modal-tambah{{$penilaian->id}}">
                          <i class="fas fa-plus"></i>
                        </button>
                        @else
                        <a href="{{ route('rencanaketerampilan.show', $penilaian->id) }}" class="btn btn-sm btn-success"><i class="fas fa-eye"></i></a>
                        <button type="button" class="btn btn-sm btn-warning" data-toggle="modal" data-target="#modal-edit{{$penilaian->id}}">
                          <i class="fas fa-pencil-alt"></i>
                        </button>
                        @endif
                      </td>
                    </tr>

                    <!-- Modal tambah  -->
                    <div class="modal fade" id="modal-tambah{{$penilaian->id}}">
                      <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                          <div class="modal-header">
                            <h5 class="modal-title">Tambah {{$title}}</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                              <span aria-hidden="true">&times;</span>
                            </button>
                          </div>
                          <div class="modal-body">
                            <form action="{{ route('rencanaketerampilan.create') }}" method="GET">
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
                                <label for="jumlah_penilaian" class="col-sm-3 col-form-label">Jumlah Penilaian</label>
                                <div class="col-sm-9">
                                  <select class="form-control select2" name="jumlah_penilaian" style="width: 100%;" required onchange="this.form.submit();">
                                    <option value="">-- Pilih Jumlah Penilaian --</option>
                                    @for ($i = 1; $i <= 20; $i++) <option value="{{$i}}">{{$i}}</option> @endfor
                                  </select>
                                </div>
                              </div>
                            </form>
                          </div>
                        </div>
                      </div>
                    </div>
                    <!-- End Modal tambah -->

                    <!-- Modal edit  -->
                    <div class="modal fade" id="modal-edit{{$penilaian->id}}">
                      <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                          <div class="modal-header">
                            <h5 class="modal-title">Edit {{$title}}</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                              <span aria-hidden="true">&times;</span>
                            </button>
                          </div>
                          <div class="modal-body">
                            <div class="alert alert-warning alert-dismissible">
                              <h5><i class="icon fas fa-exclamation-triangle"></i> Perhatian</h5>
                              <span>Proses edit perencanaan penilaian otomatis akan menghapus data perencanaan lama yang telah tersimpan di aplikasi.</span>
                            </div>
                            <form action="{{ route('rencanaketerampilan.edit', $penilaian->id) }}" method="GET">
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
                                <label for="jumlah_penilaian" class="col-sm-3 col-form-label">Jumlah Penilaian</label>
                                <div class="col-sm-9">
                                  <select class="form-control select2" name="jumlah_penilaian" style="width: 100%;" required onchange="this.form.submit();">
                                    <option value="">-- Pilih Jumlah Penilaian --</option>
                                    @for ($i = 1; $i <= 20; $i++) <option value="{{$i}}">{{$i}}</option> @endfor
                                  </select>
                                </div>
                              </div>
                            </form>
                          </div>
                        </div>
                      </div>
                    </div>
                    <!-- End Modal edit -->
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