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
            <li class="breadcrumb-item "><a href="{{ route('nilaispiritual.index') }}">Nilai Spiritual</a></li>
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
                <div class="form-group row">
                  <label class="col-sm-2 col-form-label">Mata Pelajaran</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" value="{{$pembelajaran->mapel->nama_mapel}} {{$pembelajaran->kelas->nama_kelas}}" readonly>
                  </div>
                </div>
              </div>

              <form action="{{ route('nilaispiritual.update', $pembelajaran->id) }}" method="POST">
                {{ method_field('PATCH') }}
                @csrf

                <div class="table-responsive">
                  <table class="table table-bordered table-hover">
                    <thead class="bg-primary">
                      <tr>
                        <th rowspan="2" class="text-center" style="width: 100px;">No</th>
                        <th rowspan="2" class="text-center">Nama Siswa</th>
                        <th colspan="{{$count_kd_nilai}}" class="text-center">Kompetensi Dasar / Indikator Sikap Spiritual</th>
                      </tr>
                      <tr>
                        @foreach($data_kd_nilai as $kd_nilai)
                        <input type="hidden" name="k13_rencana_nilai_spiritual_id[]" value="{{$kd_nilai->k13_rencana_nilai_spiritual_id}}">
                        <td style="width: 300px;"><small><b>{{$kd_nilai->k13_rencana_nilai_spiritual->k13_butir_sikap->kode}}</b> {{$kd_nilai->k13_rencana_nilai_spiritual->k13_butir_sikap->butir_sikap}}</small></td>
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
                          <select class="form-control" name="nilai[{{$i}}][]" style="width: 100%;" required oninvalid="this.setCustomValidity('silakan pilih item dalam daftar')" oninput="setCustomValidity('')">
                            <option value="4" @if($nilai->nilai==4) selected @endif>Sangat Baik</option>
                            <option value="3" @if($nilai->nilai==3) selected @endif>Baik</option>
                            <option value="1" @if($nilai->nilai==1) selected @endif>Cukup</option>
                            <option value="1" @if($nilai->nilai==1) selected @endif>Kurang</option>
                          </select> </td>
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
              <a href="{{ route('nilaispiritual.index') }}" class="btn btn-default float-right mr-2">Batal</a>
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