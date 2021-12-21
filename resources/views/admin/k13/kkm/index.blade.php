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
        <div class="col-12">
          <div class="card">
            <div class="card-header">
              <h3 class="card-title"><i class="fas fa-greater-than-equal"></i> {{$title}}</h3>
              <div class="card-tools">
                <button type="button" class="btn btn-tool btn-sm" data-toggle="modal" data-target="#modal-tambah">
                  <i class="fas fa-plus"></i>
                </button>
                <button type="button" class="btn btn-tool btn-sm" data-toggle="modal" data-target="#modal-import">
                  <i class="fas fa-upload"></i>
                </button>
              </div>
            </div>

            <!-- Modal import  -->
            <div class="modal fade" id="modal-import">
              <div class="modal-dialog modal-lg">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title">Import {{$title}}</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <form name="contact-form" action="{{ route('k13kkm.import') }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="modal-body">
                      <div class="callout callout-info">
                        <h5>Download format import</h5>
                        <p>Silahkan download file format import melalui tombol dibawah ini.</p>
                        <a href="{{ route('k13kkm.format_import') }}" class="btn btn-primary text-white" style="text-decoration:none"><i class="fas fa-file-download"></i> Download</a>
                      </div>
                      <div class="form-group row pt-2">
                        <label for="file_import" class="col-sm-2 col-form-label">File Import</label>
                        <div class="col-sm-10">
                          <div class="custom-file">
                            <input type="file" class="custom-file-input" name="file_import" id="customFile" accept="application/vnd.ms-excel">
                            <label class="custom-file-label" for="customFile">Pilih file</label>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="modal-footer justify-content-end">
                      <button type="button" class="btn btn-default" data-dismiss="modal">Batal</button>
                      <button type="submit" class="btn btn-primary">Import</button>
                    </div>
                  </form>
                </div>
              </div>
            </div>
            <!-- End Modal import -->

            <!-- Modal tambah  -->
            <div class="modal fade" id="modal-tambah">
              <div class="modal-dialog modal-lg">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title">Tambah {{$title}}</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <form action="{{ route('k13kkm.store') }}" method="POST">
                    @csrf
                    <div class="modal-body">
                      <div class="form-group row">
                        <label for="mapel_id" class="col-sm-3 col-form-label">Mata Pelajaran</label>
                        <div class="col-sm-9">
                          <select class="form-control select2" name="mapel_id" style="width: 100%;" required>
                            <option value="">-- Pilih Mata Pelajaran -- </option>
                            @foreach($data_mapel as $mapel)
                            <option value="{{$mapel->id}}"> {{$mapel->nama_mapel}}</option>
                            @endforeach
                          </select> </div>
                      </div>
                      <div class="form-group row">
                        <label for="kelas_id" class="col-sm-3 col-form-label">Kelas</label>
                        <div class="col-sm-9">
                          <select class="form-control select2" name="kelas_id" style="width: 100%;" required>
                            <!--  -->
                          </select>
                        </div>
                      </div>
                      <div class="form-group row">
                        <label for="kkm" class="col-sm-3 col-form-label">KKM</label>
                        <div class="col-sm-9">
                          <input type="number" class="form-control" id="kkm" name="kkm">
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

            <div class="card-body">
              <div class="table-responsive">
                <table id="example1" class="table table-striped table-valign-middle table-hover">
                  <thead>
                    <tr>
                      <th>No</th>
                      <th>Mata Pelajaran</th>
                      <th>Semester</th>
                      <th>Kelas</th>
                      <th>KKM</th>
                      <th>Aksi</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php $no = 0; ?>
                    @foreach($data_kkm as $kkm)
                    <?php $no++; ?>
                    <tr>
                      <td>{{$no}}</td>
                      <td>{{$kkm->mapel->nama_mapel}}</td>
                      <td>{{$kkm->kelas->tapel->tahun_pelajaran}}
                        @if($kkm->kelas->tapel->semester == 1)
                        Ganjil
                        @else
                        Genap
                        @endif
                      </td>
                      <td>Tingkat {{$kkm->kelas->tingkatan_kelas}} {{$kkm->kelas->nama_kelas}}</td>
                      <td>{{$kkm->kkm}}</td>
                      <td>
                        <form action="{{ route('k13kkm.destroy', $kkm->id) }}" method="POST">
                          @csrf
                          @method('DELETE')
                          <button type="button" class="btn btn-warning btn-sm mt-1" data-toggle="modal" data-target="#modal-edit{{$kkm->id}}">
                            <i class="fas fa-pencil-alt"></i>
                          </button>
                          <button type="submit" class="btn btn-danger btn-sm mt-1" onclick="return confirm('Hapus {{$title}} ?')">
                            <i class="fas fa-trash-alt"></i>
                          </button>
                        </form>
                      </td>
                    </tr>

                    <!-- Modal edit  -->
                    <div class="modal fade" id="modal-edit{{$kkm->id}}">
                      <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                          <div class="modal-header">
                            <h5 class="modal-title">Edit {{$title}}</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                              <span aria-hidden="true">&times;</span>
                            </button>
                          </div>
                          <form action="{{ route('k13kkm.update', $kkm->id) }}" method="POST">
                            {{ method_field('PATCH') }}
                            @csrf
                            <div class="modal-body">
                              <div class="form-group row">
                                <label for="mapel_id" class="col-sm-3 col-form-label">Mata Pelajaran</label>
                                <div class="col-sm-9">
                                  <input type="text" class="form-control" id="mapel_id" value="{{$kkm->mapel->nama_mapel}}" readonly>
                                </div>
                              </div>
                              <div class="form-group row">
                                <label for="kelas_id" class="col-sm-3 col-form-label">Kelas</label>
                                <div class="col-sm-9">
                                  <input type="text" class="form-control" id="kelas_id" value="{{$kkm->kelas->nama_kelas}}" readonly>
                                </div>
                              </div>
                              <div class="form-group row">
                                <label for="kkm" class="col-sm-3 col-form-label">KKM</label>
                                <div class="col-sm-9">
                                  <input type="number" class="form-control" id="kkm" name="kkm" value="{{$kkm->kkm}}">
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

<!-- end ajax -->
@include('layouts.main.footer')

<!-- ajax -->
<script type="text/javascript">
  $(document).ready(function() {
    $('select[name="mapel_id"]').on('change', function() {
      var mapel_id = $(this).val();
      if (mapel_id) {
        $.ajax({
          url: '/admin/getKelas/ajax/' + mapel_id,
          type: "GET",
          dataType: "json",
          success: function(data) {
            $('select[name="kelas_id"').empty();

            $('select[name="kelas_id"]').append(
              '<option value="">-- Pilih Kelas --</option>'
            );
            
            $.each(data, function(i, data) {
              $('select[name="kelas_id"]').append(
                '<option value="' +
                data.kelas_id + '">' + data.nama_kelas + '</option>');
            });
          }
        });
      } else {
        $('select[name="kelas_id"').empty();
      }
    });
  });
</script>