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
              <h3 class="card-title"><i class="fas fa-trophy"></i> {{$title}}</h3>
              <div class="card-tools">
                <button type="button" class="btn btn-tool btn-sm" data-toggle="modal" data-target="#modal-tambah">
                  <i class="fas fa-plus"></i>
                </button>
              </div>
            </div>

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
                  <form action="{{ route('prestasi.store') }}" method="POST">
                    @csrf
                    <div class="modal-body">
                      <div class="form-group row">
                        <label for="anggota_kelas_id" class="col-sm-3 col-form-label">Siswa</label>
                        <div class="col-sm-9">
                          <select class="form-control select2" id="anggota_kelas_id" name="anggota_kelas_id" required>
                            <option value="">-- Pilih Siswa --</option>
                            @foreach($data_anggota_kelas as $anggota)
                            <option value="{{$anggota->id}}">{{$anggota->siswa->nis}} | {{$anggota->siswa->nisn}} | {{$anggota->siswa->nama_lengkap}}</option>
                            @endforeach
                          </select>
                        </div>
                      </div>

                      <div class="form-group row">
                        <label for="jenis_prestasi" class="col-sm-3 col-form-label">Jenis Prestasi</label>
                        <div class="col-sm-9 pt-1">
                          <label class="form-check-label mr-3"><input type="radio" name="jenis_prestasi" value="1" required> Akademik</label>
                          <label class="form-check-label mr-3"><input type="radio" name="jenis_prestasi" value="2" required> Non Akademik</label>
                        </div>
                      </div>
                      <div class="form-group row">
                        <label for="deskripsi" class="col-sm-3 col-form-label">Deskripsi</label>
                        <div class="col-sm-9">
                          <textarea class="form-control" name="deskripsi" placeholder="Deskripsi Prestasi" rows="3" minlength="20" maxlength="200" required oninvalid="this.setCustomValidity('Deskripsi harus berisi antara 20 s/d 100 karekter')" oninput="setCustomValidity('')"></textarea>
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
                <table id="example1" class="table table-valign-middle table-hover">
                  <thead>
                    <tr>
                      <th style="width: 5%;">No</th>
                      <th style="width: 5%;">NIS</th>
                      <th style="width: 20%;">Nama Siswa</th>
                      <th style="width: 5%;">L/P</th>
                      <th style="width: 5%;">Kelas</th>
                      <th style="width: 10%;">Jenis Prestasi</th>
                      <th>Deskripsi Prestasi</th>
                      <th style="width: 6%;">Hapus</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php $no = 0; ?>
                    @foreach($data_prestasi_siswa->sortBy('anggota_kelas.siswa.nama_lengkap') as $prestasi)
                    <?php $no++; ?>
                    <tr>
                      <td>{{$no}}</td>
                      <td>{{$prestasi->anggota_kelas->siswa->nis}}</td>
                      <td>{{$prestasi->anggota_kelas->siswa->nama_lengkap}}</td>
                      <td>{{$prestasi->anggota_kelas->siswa->jenis_kelamin}}</td>
                      <td>{{$prestasi->anggota_kelas->kelas->nama_kelas}}</td>
                      <td>
                        @if($prestasi->jenis_prestasi == 1)
                        Akademik
                        @else
                        Non Akademik
                        @endif
                      </td>
                      <td>{{$prestasi->deskripsi}}</td>
                      <td class="text-center">
                        <form action="{{ route('prestasi.destroy', $prestasi->id) }}" method="POST">
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