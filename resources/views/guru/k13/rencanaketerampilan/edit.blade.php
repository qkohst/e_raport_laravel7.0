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
            <li class="breadcrumb-item "><a href="{{ route('rencanaketerampilan.index') }}">Rencana Nilai Keterampilan</a></li>
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
              <div class="callout callout-info">
                <form action="{{ route('rencanaketerampilan.create') }}" method="GET">
                  @csrf
                  <div class="form-group row">
                    <label for="pembelajaran_id" class="col-sm-2 col-form-label">Mata Pelajaran</label>
                    <div class="col-sm-10">
                      <input type="hidden" name="pembelajaran_id" value="{{$pembelajaran->id}}">
                      <input type="text" class="form-control" value="{{$pembelajaran->mapel->nama_mapel}} {{$pembelajaran->kelas->nama_kelas}}" readonly>
                    </div>
                  </div>
                  <div class="form-group row">
                    <label for="jumlah_penilaian" class="col-sm-2 col-form-label">Jumlah Penilaian</label>
                    <div class="col-sm-10">
                      <select class="form-control select2" name="jumlah_penilaian" style="width: 100%;" required onchange="this.form.submit();">
                        <option value="" disabled>-- Pilih Jumlah Penilaian --</option>
                        @for ($i = 1; $i <= 20; $i++) <option value="{{$i}}" @if($i==$jumlah_penilaian) selected @endif>{{$i}}</option> @endfor
                      </select>
                    </div>
                  </div>
                </form>
              </div>

              <form action="{{ route('rencanaketerampilan.update', $pembelajaran->id) }}" method="POST">
                {{ method_field('PATCH') }}
                @csrf

                <input type="hidden" name="pembelajaran_id" value="{{$pembelajaran->id}}">
                <div class="table-responsive">
                  <table class="table table-bordered table-hover">
                    <thead class="bg-primary">
                      <tr>
                        <th>Penilaian</th>
                        @for ($i = 1; $i <= $jumlah_penilaian; $i++) <th class="text-center">P.{{$i}}</th> @endfor
                      </tr>
                    </thead>
                    <tbody>
                      <tr class="bg-primary">
                        <td>Kelompok/Teknik Penilaian</td>
                        @for ($i = 1; $i <= $jumlah_penilaian; $i++) <td>
                          <select class="form-control" name="teknik_penilaian[]" style="width: 100%;" required oninvalid="this.setCustomValidity('silakan pilih item dalam daftar')" oninput="setCustomValidity('')">
                            <option value="">-- Teknik Penilaian --</option>
                            <option value="1">Praktik</option>
                            <option value="2">Projek</option>
                            <option value="3">Produk</option>
                            <option value="4">Teknik 1</option>
                            <option value="5">Teknik 2</option>
                          </select>
                          </td>
                          @endfor
                      </tr>

                      <tr class="bg-primary">
                        <td>Kode Penilaian</td>
                        @for ($i = 1; $i <= $jumlah_penilaian; $i++) <td>
                          <input type="text" class="form-control" name="kode_penilaian[]" value="P{{$i}}" required oninvalid="this.setCustomValidity('data tidak boleh kosong')" oninput="setCustomValidity('')">
                          </td>
                          @endfor
                      </tr>

                      <tr class="bg-primary">
                        <th>Kompetensi Dasar</th>
                        @for ($i = 1; $i <= $jumlah_penilaian; $i++) <td>
                          </td>@endfor
                      </tr>
                      @foreach($data_kd as $kd)
                      <tr>
                        <td><small><b>{{$kd->kode_kd}}</b> {{$kd->ringkasan_kompetensi}}</small></td>
                        @for ($i = 0; $i < $jumlah_penilaian; $i++) <td class="text-center">
                          <input type="checkbox" name="k13_kd_mapel_id[{{$i}}][]" value="{{$kd->id}}" class="form-check-input mx-0">
                          </td>
                          @endfor
                      </tr>
                      @endforeach
                    </tbody>
                  </table>
                </div>

                <div class="alert alert-warning alert-dismissible">
                  <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                  <h5><i class="icon fas fa-exclamation-triangle"></i> Perhatian</h5>
                  <p>Jika KD yang tampil tidak sesuai, silahkan cek dan lakukan mapping semester pada menu <a href="{{ route('kdk13.index') }}">Data Kompetensi Dasar</a></p>
                </div>
            </div>

            <div class="card-footer clearfix">
              <button type="submit" class="btn btn-primary float-right">Simpan</button>
              <a href="{{ route('rencanaketerampilan.index') }}" class="btn btn-default float-right mr-2">Batal</a>
            </div>
            </form>
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