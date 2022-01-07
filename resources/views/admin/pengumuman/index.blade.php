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
              <h3 class="card-title"><i class="fas fa-bullhorn"></i> {{$title}}</h3>
              <div class="card-tools">
                <button type="button" class="btn btn-tool btn-sm" data-toggle="modal" data-target="#modal-tambah">
                  <i class="fas fa-plus"></i>
                </button>
              </div>
            </div>

            <!-- Modal tambah  -->
            <div class="modal fade" id="modal-tambah">
              <div class="modal-dialog modal-xl">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title">Posting Pengumuman Baru</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <form action="{{ route('pengumuman.store') }}" method="POST">
                    @csrf
                    <div class="modal-body">
                      <div class="form-group">
                        <label>Judul Pengumuman</label>
                        <input type="text" class="form-control" name="judul" required>
                      </div>
                      <div class="form-group">
                        <label>Isi Pengumuman</label>
                        <textarea class="textarea" name="isi" style="width: 100%; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 5px;" required></textarea>
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
              <div class="timeline timeline-inverse">
                <!-- timeline time label -->
                <div class="time-label">
                  <span class="bg-success">
                    Pengumuman Terakhir
                  </span>
                </div>
                <!-- /.timeline-label -->
                <!-- timeline item -->
                @foreach($data_pengumuman->sortByDesc('created_at') as $pengumuman)
                <div>
                  <i class="fas fa-envelope bg-primary"></i>
                  <div class="timeline-item">
                    <span class="time"><i class="far fa-clock"></i> {{$pengumuman->created_at}}</span>

                    <h3 class="timeline-header"><a href="#">{{$pengumuman->user->admin->nama_lengkap}}</a> {{$pengumuman->judul}} @if($pengumuman->created_at != $pengumuman->updated_at)<small><i>edited</i></small>@endif</h3>

                    <div class="timeline-body">
                      {!! $pengumuman->isi !!}
                    </div>
                    @if(Auth::user()->id == $pengumuman->user_id)
                    <div class="timeline-footer">
                      <form action="{{ route('pengumuman.destroy', $pengumuman->id) }}" method="POST">
                        @csrf
                        @method('DELETE')
                        <button type="button" class="btn btn-primary btn-sm mt-1" data-toggle="modal" data-target="#modal-edit{{$pengumuman->id}}">
                          <i class="fas fa-pencil-alt"></i> Edit
                        </button>
                        <button type="submit" class="btn btn-danger btn-sm mt-1" onclick="return confirm('Hapus pengumuman ?')">
                          <i class="fas fa-trash-alt"></i> Hapus
                        </button>
                      </form>
                    </div>
                    @endif
                  </div>
                  <!-- Modal edit  -->
                  <div class="modal fade" id="modal-edit{{$pengumuman->id}}">
                    <div class="modal-dialog modal-xl">
                      <div class="modal-content">
                        <div class="modal-header">
                          <h5 class="modal-title">Edit {{$title}}</h5>
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                          </button>
                        </div>
                        <form action="{{ route('pengumuman.update', $pengumuman->id) }}" method="POST">
                          {{ method_field('PATCH') }}
                          @csrf
                          <div class="modal-body">
                            <div class="form-group">
                              <label>Judul Pengumuman</label>
                              <input type="text" class="form-control" name="judul" value="{{$pengumuman->judul}}" readonly>
                            </div>
                            <div class="form-group">
                              <label>Isi Pengumuman</label>
                              <textarea class="textarea" name="isi" style="width: 100%; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 5px;" required>{!! $pengumuman->isi !!}</textarea>
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
                </div>
                @endforeach
                <!-- END timeline item -->



                <div>
                  <i class="far fa-clock bg-gray"></i>
                </div>
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

<!-- Summernote -->
<script src="/assets/plugins/summernote/summernote-bs4.min.js"></script>
<script>
  $(function() {
    // Summernote
    $('.textarea').summernote()
  })
</script>