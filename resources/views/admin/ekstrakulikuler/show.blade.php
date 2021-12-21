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
            <li class="breadcrumb-item "><a href="{{ route('ekstrakulikuler.index') }}">Ekstrakulikuler</a></li>
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
              <h3 class="card-title"><i class="fas fa-users"></i> {{$title}} {{$ekstrakulikuler->nama_ekstrakulikuler}} {{$ekstrakulikuler->tapel->tahun_pelajaran}} Semester
                @if($ekstrakulikuler->tapel->semester ==1)
                Ganjil
                @else
                Genap
                @endif
              </h3>
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
                    <h5 class="modal-title">Tambah {{$title}}</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <form action="{{ route('ekstrakulikuler.anggota') }}" method="POST">
                    @csrf
                    <div class="modal-body">
                      <div class="row">
                        <div class="col-12">
                          <div class="form-group">
                            <div class="callout callout-info">
                              <label>
                                Ekstrakulikuler {{$ekstrakulikuler->nama_ekstrakulikuler}} {{$ekstrakulikuler->tapel->tahun_pelajaran}} Semester
                                @if($ekstrakulikuler->tapel->semester ==1)
                                Ganjil
                                @else
                                Genap
                                @endif
                              </label>
                              <p>Untuk menambahkan anggota ekstrakulikuler, silahkan pindahkan nama siswa ke kolom sebelah kanan lalu klik tombol simpan.</p>
                            </div>
                            <input type="hidden" name="ekstrakulikuler_id" value="{{$ekstrakulikuler->id}}">
                            <select class="duallistbox" multiple="multiple" name="anggota_kelas_id[]">
                              @foreach($siswa_belum_masuk_ekstrakulikuler as $belum_masuk_ekstrakulikuler)
                              <option value="{{$belum_masuk_ekstrakulikuler->id}}">{{$belum_masuk_ekstrakulikuler->siswa->nis}} | {{$belum_masuk_ekstrakulikuler->siswa->nisn}} | {{$belum_masuk_ekstrakulikuler->siswa->nama_lengkap}} ({{$belum_masuk_ekstrakulikuler->kelas->nama_kelas}})</option>
                              @endforeach
                            </select>
                          </div>
                          <!-- /.form-group -->
                        </div>
                        <!-- /.col -->
                      </div>
                      <!-- /.row -->
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
                      <th>NIS</th>
                      <th>NISN</th>
                      <th>Nama Siswa</th>
                      <th>L/P</th>
                      <th>Kelas</th>
                      <th>Hapus Anggota</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php $no = 0; ?>
                    @foreach($anggota_ekstrakulikuler->sortBy('anggota_kelas.siswa.nama_lengkap') as $anggota)
                    <?php $no++; ?>
                    <tr>
                      <td>{{$no}}</td>
                      <td>{{$anggota->anggota_kelas->siswa->nis}}</td>
                      <td>{{$anggota->anggota_kelas->siswa->nisn}}</td>
                      <td>{{$anggota->anggota_kelas->siswa->nama_lengkap}}</td>
                      <td>{{$anggota->anggota_kelas->siswa->jenis_kelamin}}</td>
                      <td>{{$anggota->anggota_kelas->kelas->nama_kelas}}</td>
                      <td>
                        <form action="{{ route('ekstrakulikuler.anggota.delete', $anggota->id) }}" method="POST">
                          @csrf
                          @method('DELETE')
                          <button type="submit" class="btn btn-danger btn-sm mt-1" onclick="return confirm('Hapus {{$title}} ?')">
                            <i class="fas fa-trash-alt"></i>
                          </button>
                        </form>
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