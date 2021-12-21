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
            <li class="breadcrumb-item "><a href="{{ route('nilaipengetahuan.index') }}">Nilai Pengetahuan</a></li>
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
              <div class="callout callout-info">
                <form action="{{ route('nilaipengetahuan.create') }}" method="GET">
                  @csrf
                  <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Mata Pelajaran</label>
                    <div class="col-sm-10">
                      <select class="form-control" name="pembelajaran_id" style="width: 100%;" aria-readonly="true">
                        <option value="{{$pembelajaran->id}}" selected>{{$pembelajaran->mapel->nama_mapel}} {{$pembelajaran->kelas->nama_kelas}}</option>
                      </select>
                    </div>
                  </div>
                  <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Kode Penilaian</label>
                    <div class="col-sm-10">
                      <select class="form-control select2" name="kode_penilaian" style="width: 100%;" required onchange="this.form.submit();">
                        <option value="" disabled>-- Pilih Penilaian --</option>
                        @foreach($data_kode_penilaian as $kode_nilai)
                        <option value="{{$kode_nilai->kode_penilaian}}" @if($kode_penilaian==$kode_nilai->kode_penilaian) selected @endif>{{$kode_nilai->kode_penilaian}}</option>
                        @endforeach
                      </select>
                    </div>
                  </div>

                </form>
              </div>

              <form action="{{ route('nilaipengetahuan.update', $pembelajaran->id) }}" method="POST">
                {{ method_field('PATCH') }}
                @csrf

                <div class="table-responsive">
                  <table class="table table-bordered table-hover">
                    <thead class="bg-primary">
                      <tr>
                        <th rowspan="2" class="text-center" style="width: 100px;">No</th>
                        <th rowspan="2" class="text-center">Nama Siswa</th>
                        <th colspan="{{$count_kd_nilai}}" class="text-center">Kompetensi Dasar</th>
                      </tr>
                      <tr>
                        @foreach($data_kd_nilai as $kd_nilai)
                        <input type="hidden" name="k13_rencana_nilai_pengetahuan_id[]" value="{{$kd_nilai->k13_rencana_nilai_pengetahuan_id}}">
                        <td style="width: 300px;"><small><b>{{$kd_nilai->k13_rencana_nilai_pengetahuan->k13_kd_mapel->kode_kd}}</b> {{$kd_nilai->k13_rencana_nilai_pengetahuan->k13_kd_mapel->ringkasan_kompetensi}}</small></td>
                        @endforeach
                      </tr>
                    </thead>
                    <tbody>
                      <?php $no = 0; ?>
                      @foreach($data_anggota_kelas->sortBy('siswa.nama_lengkap') as $anggota_kelas)
                      <?php $no++; ?>
                      <tr>
                        <td class="text-center">{{$no}}</td>
                        <td>{{$anggota_kelas->siswa->nama_lengkap}}</td>
                        <input type="hidden" name="anggota_kelas_id[]" value="{{$anggota_kelas->id}}">

                        <?php $i = -1; ?>
                        @foreach($anggota_kelas->data_nilai as $nilai)
                        <?php $i++; ?>
                        <td>
                          <input type="number" class="form-control" name="nilai[{{$i}}][]" min="0" max="100" value="{{$nilai->nilai}}" required oninvalid="this.setCustomValidity('Nilai harus berisi antara 0 s/d 100')" oninput="setCustomValidity('')">
                        </td>
                        @endforeach

                      </tr>
                      @endforeach
                    </tbody>
                  </table>
                </div>
                <p id="demo"></p>
            </div>

            <div class="card-footer clearfix">
              <button type="submit" class="btn btn-primary float-right">Simpan</button>
              <a href="{{ route('nilaipengetahuan.index') }}" class="btn btn-default float-right mr-2">Batal</a>
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

</body>

</html>