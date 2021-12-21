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
              <h3 class="card-title"><i class="fas fa-book-reader"></i> {{$title}}</h3>
            </div>

            <div class="card-body">
              <div class="callout callout-info">
                <form action="{{ route('nilaiekstra.create') }}" method="GET">
                  @csrf
                  <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Ekstrakulikuler</label>
                    <div class="col-sm-10">
                      <select class="form-control select2" name="ekstrakulikuler_id" style="width: 100%;" required onchange="this.form.submit();">
                        <option value="" disabled>-- Pilih Ekstrakulikuler --</option>
                        @foreach($data_ekstrakulikuler as $ekstra)
                        <option value="{{$ekstra->id}}" @if($ekstrakulikuler->id == $ekstra->id) selected @endif>{{$ekstra->nama_ekstrakulikuler}}</option>
                        @endforeach
                      </select>
                    </div>
                  </div>
                </form>
              </div>

              <!-- Nilai -->

              <div class="card">
                <div class="card-header bg-primary">
                  <h3 class="card-title"><i class="fas fa-book-reader"></i> Nilai Ekstrakulikuler {{$ekstrakulikuler->nama_ekstrakulikuler}}</h3>
                </div>
                <form action="{{ route('nilaiekstra.store') }}" method="POST">
                  @csrf
                  <div class="card-body">
                    <div class="table-responsive">
                      <table class="table table-bordered table-striped">
                        <thead class="bg-info">
                          <tr>
                            <th class="text-center" style="width: 50px;">No</th>
                            <th class="text-center">Nama Siswa</th>
                            <th class="text-center" style="width: 50px;">L/P</th>
                            <th class="text-center" style="width: 100px;">Kelas</th>
                            <th class="text-center" style="width: 150px;">Nilai</th>
                            <th class="text-center">Deskripsi</th>
                          </tr>
                        </thead>
                        <tbody>
                          <input type="hidden" name="ekstrakulikuler_id" value="{{$ekstrakulikuler->id}}">

                          <?php $no = 0; ?>
                          @foreach($data_anggota_ekstrakulikuler as $anggota_ekstrakulikuler)
                          <?php $no++; ?>
                          <input type="hidden" name="anggota_ekstrakulikuler_id[]" value="{{$anggota_ekstrakulikuler->id}}">
                          <tr>
                            <td class="text-center">{{$no}}</td>
                            <td>{{$anggota_ekstrakulikuler->anggota_kelas->siswa->nama_lengkap}}</td>
                            <td class="text-center">{{$anggota_ekstrakulikuler->anggota_kelas->siswa->jenis_kelamin}}</td>
                            <td class="text-center">{{$anggota_ekstrakulikuler->anggota_kelas->kelas->nama_kelas}}</td>
                            <td>
                              <select class="form-control" name="nilai[]" style="width: 100%;" required oninvalid="this.setCustomValidity('silakan pilih item dalam daftar')" oninput="setCustomValidity('')">
                                <option value="4">Sangat Baik</option>
                                <option value="3" selected>Baik</option>
                                <option value="2">Cukup</option>
                                <option value="1">Kurang</option>
                              </select>
                            </td>
                            <td>
                              <textarea class="form-control" name="deskripsi[]" rows="2" minlength="30" maxlength="200" required oninvalid="this.setCustomValidity('Deskripsi harus berisi antara 20 s/d 100 karekter')" oninput="setCustomValidity('')"></textarea>
                            </td>
                          </tr>
                          @endforeach
                        </tbody>
                      </table>
                    </div>
                  </div>
                  <div class="card-footer clearfix">
                    <button type="submit" class="btn btn-primary float-right">Simpan</button>
                    <a href="{{ route('nilaiekstra.index') }}" class="btn btn-default float-right mr-2">Batal</a>
                  </div>
                </form>
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

</body>

</html>