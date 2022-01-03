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
              <h3 class="card-title"><i class="fas fa-balance-scale"></i> {{$title}}</h3>
            </div>

            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered table-hover">
                  <thead class="bg-success">
                    <tr>
                      <th rowspan="2" class="text-center" style="width: 100px;">No</th>
                      <th rowspan="2" class="text-center">Mata Pelajaran</th>
                      <th rowspan="2" class="text-center">Kelas</th>
                      <th colspan="4" class="text-center" style="width: 300px">Bobot Penilaian</th>
                      <th rowspan="2" class="text-center" style="width: 100px;">Aksi</th>
                    </tr>
                    <tr>
                      <th class="text-center" style="width: 100px;">TUGAS</th>
                      <th class="text-center" style="width: 100px;">UH</th>
                      <th class="text-center" style="width: 100px;">UTS</th>
                      <th class="text-center" style="width: 100px;">UAS</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php $no = 0; ?>
                    @foreach($data_bobot_penilaian as $bobot_nilai)
                    <?php $no++; ?>
                    <tr>
                      <td class="text-center">{{$no}}</td>
                      <td>{{$bobot_nilai->mapel->nama_mapel}}</td>
                      <td class="text-center">{{$bobot_nilai->kelas->nama_kelas}}</td>

                      @if(is_null($bobot_nilai->bobot_uh))
                      <td class="text-center">
                        <span class="badge badge-danger">0</span>
                      </td>
                      <td class="text-center">
                        <span class="badge badge-danger">0</span>
                      </td>
                      <td class="text-center">
                        <span class="badge badge-danger">0</span>
                      </td>
                      <td class="text-center">
                        <span class="badge badge-danger">0</span>
                      </td>
                      @else
                      <td class="text-center">
                        <span class="badge badge-success">{{$bobot_nilai->bobot_tugas}}</span>
                      </td>
                      <td class="text-center">
                        <span class="badge badge-success">{{$bobot_nilai->bobot_uh}}</span>
                      </td>
                      <td class="text-center">
                        <span class="badge badge-success">{{$bobot_nilai->bobot_uts}}</span>
                      </td>
                      <td class="text-center">
                        <span class="badge badge-success">{{$bobot_nilai->bobot_uas}}</span>
                      </td>
                      @endif

                      @if(is_null($bobot_nilai->bobot_uh))
                      <td class="text-center">
                        <button type="button" class="btn btn-sm btn-primary" data-toggle="modal" data-target="#modal-tambah{{$bobot_nilai->id}}">
                          <i class="fas fa-plus"></i>
                        </button>
                      </td>
                      <!-- Modal tambah  -->
                      <div class="modal fade" id="modal-tambah{{$bobot_nilai->id}}">
                        <div class="modal-dialog modal-xl">
                          <div class="modal-content">
                            <div class="modal-header">
                              <h5 class="modal-title">Setting Bobot Penilaian</h5>
                              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                              </button>
                            </div>
                            <form action="{{ route('bobot.store') }}" method="POST">
                              @csrf
                              <div class="modal-body">
                                <input type="hidden" name="pembelajaran_id" value="{{$bobot_nilai->id}}">
                                <div class="row">
                                  <div class="col-sm-3">
                                    <div class="form-group">
                                      <label>Tugas</label>
                                      <input type="number" class="form-control" name="bobot_tugas" value="1">
                                    </div>
                                  </div>
                                  <div class="col-sm-3">
                                    <div class="form-group">
                                      <label>Ulangan Harian (UH)</label>
                                      <input type="number" class="form-control" name="bobot_uh" value="2">
                                    </div>
                                  </div>
                                  <div class="col-sm-3">
                                    <div class="form-group">
                                      <label>Ulangan Tengah Semester (UTS)</label>
                                      <input type="number" class="form-control" name="bobot_uts" value="1">
                                    </div>
                                  </div>
                                  <div class="col-sm-3">
                                    <div class="form-group">
                                      <label>Ulangan Akhir Semester (UAS)</label>
                                      <input type="number" class="form-control" name="bobot_uas" value="1">
                                    </div>
                                  </div>
                                </div>
                              </div>
                              <div class="modal-footer justify-content-end">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Batal</button>
                                <button type="submit" class="btn btn-primary">Simpan</button>
                              </div>
                            </form>
                          </div>
                        </div>
                      </div>
                      <!-- End Modal tambah -->

                      @else
                      <td class="text-center">
                        <button type="button" class="btn btn-sm btn-warning" data-toggle="modal" data-target="#modal-edit{{$bobot_nilai->id}}">
                          <i class="fas fa-pencil-alt"></i>
                        </button>
                      </td>

                      <!-- Modal edit  -->
                      <div class="modal fade" id="modal-edit{{$bobot_nilai->id}}">
                        <div class="modal-dialog modal-xl">
                          <div class="modal-content">
                            <div class="modal-header">
                              <h5 class="modal-title">Edit Bobot Penilaian</h5>
                              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                              </button>
                            </div>

                            <form action="{{ route('bobot.update', $bobot_nilai->id) }}" method="POST">
                              {{ method_field('PATCH') }}
                              @csrf

                              <div class="modal-body">
                                <div class="row">
                                  <div class="col-sm-3">
                                    <div class="form-group">
                                      <label>Tugas</label>
                                      <input type="number" class="form-control" name="bobot_tugas" value="{{$bobot_nilai->bobot_tugas}}">
                                    </div>
                                  </div>
                                  <div class="col-sm-3">
                                    <div class="form-group">
                                      <label>Ulangan Harian (UH)</label>
                                      <input type="number" class="form-control" name="bobot_uh" value="{{$bobot_nilai->bobot_uh}}">
                                    </div>
                                  </div>
                                  <div class="col-sm-3">
                                    <div class="form-group">
                                      <label>Ulangan Tengah Semester (UTS)</label>
                                      <input type="number" class="form-control" name="bobot_uts" value="{{$bobot_nilai->bobot_uts}}">
                                    </div>
                                  </div>
                                  <div class="col-sm-3">
                                    <div class="form-group">
                                      <label>Ulangan Akhir Semester (UAS)</label>
                                      <input type="number" class="form-control" name="bobot_uas" value="{{$bobot_nilai->bobot_uas}}">
                                    </div>
                                  </div>
                                </div>
                              </div>
                              <div class="modal-footer justify-content-end">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Batal</button>
                                <button type="submit" class="btn btn-primary">Simpan</button>
                              </div>
                            </form>
                          </div>
                        </div>
                      </div>
                      <!-- End Modal edit -->

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