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
            <li class="breadcrumb-item "><a href="{{ route('pembelajaran.index') }}">Data Pembelajaran</a></li>
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
              <h3 class="card-title"><i class="fas fa-cog"></i> {{$title}}</h3>
            </div>

            <div class="card-body">
              <div class="form-group row callout callout-info mx-1">
                <label for="kelas_id" class="col-sm-2 col-form-label">Kelas</label>
                <div class="col-sm-10">
                  <form action="{{ route('pembelajaran.settings') }}" method="POST">
                    @csrf
                    <select class="form-control select2" name="kelas_id" style="width: 100%;" required onchange="this.form.submit();">
                      <option value="" disabled> -- Pilih Kelas --</option>
                      <option value="" selected>{{$kelas->nama_kelas}} ( {{$kelas->tapel->tahun_pelajaran}}
                        @if($kelas->tapel->semester == 1)
                        Ganjil
                        @else
                        Genap
                        @endif)
                      </option>
                      @foreach($data_kelas as $d_kelas)
                      @if($d_kelas->id <> $kelas->id)
                        <option value="{{$d_kelas->id}}">{{$d_kelas->nama_kelas}} ( {{$d_kelas->tapel->tahun_pelajaran}}
                          @if($d_kelas->tapel->semester == 1)
                          Ganjil
                          @else
                          Genap
                          @endif)
                        </option>
                        @endif
                        @endforeach
                    </select>
                  </form>
                </div>
              </div>
              <form action="{{ route('pembelajaran.store') }}" method="POST">
                @csrf
                <div class="table-responsive">
                  <table class="table table-bordered table-hover">
                    <thead>
                      <tr>
                        <th>Kelas</th>
                        <th>Mata Pelajaran</th>
                        <th>Guru</th>
                        <th>Status</th>
                      </tr>
                    </thead>
                    <tbody>
                      @foreach($data_pembelajaran_kelas as $pembelajaran)
                      <tr>
                        <td>{{$pembelajaran->kelas->nama_kelas}} ( {{$d_kelas->tapel->tahun_pelajaran}}
                          @if($d_kelas->tapel->semester == 1)
                          Ganjil
                          @else
                          Genap
                          @endif)
                        </td>
                        <td>{{$pembelajaran->mapel->nama_mapel}}
                          <input type="hidden" name="pembelajaran_id[]" value="{{$pembelajaran->id}}">
                        </td>
                        <td>
                          <select class="form-control select2" name="update_guru_id[]" style="width: 100%;">
                            <option value="">-- Pilih Guru -- </option>
                            @foreach($data_guru as $guru)
                            <option value="{{$guru->id}}" @if($pembelajaran->guru->id == $guru->id) selected @endif>
                              {{$guru->nama_lengkap}}, {{$guru->gelar}}
                            </option>
                            @endforeach
                          </select>
                        </td>
                        <td>
                          <select class="form-control" name="update_status[]">
                            @if($pembelajaran->status == 1)
                            <option value="0">Tidak Aktif </option>
                            <option value="1" selected>Aktif </option>
                            @else
                            <option value="0" selected>Tidak Aktif </option>
                            <option value="1">Aktif </option>
                            @endif
                          </select>
                        </td>
                      </tr>
                      @endforeach

                      @foreach($data_mapel as $mapel)
                      <tr>
                        <td>{{$kelas->nama_kelas}} ( {{$d_kelas->tapel->tahun_pelajaran}}
                          @if($d_kelas->tapel->semester == 1)
                          Ganjil
                          @else
                          Genap
                          @endif)
                          <input type="hidden" name="kelas_id[]" value="{{$kelas->id}}">
                        </td>
                        <td>
                          {{$mapel->nama_mapel}}
                          <input type="hidden" name="mapel_id[]" value="{{$mapel->id}}">
                        </td>
                        <td>
                          <select class="form-control select2" name="guru_id[]" style="width: 100%;">
                            <option value="">-- Pilih Guru -- </option>
                            @foreach($data_guru as $guru)
                            <option value="{{$guru->id}}">{{$guru->nama_lengkap}}, {{$guru->gelar}}</option>
                            @endforeach
                          </select>
                        </td>
                        <td>
                          <select class="form-control" name="status[]">
                            <option value="0">Tidak Aktif </option>
                            <option value="1">Aktif </option>
                          </select>
                        </td>
                      </tr>
                      @endforeach
                    </tbody>
                  </table>
                </div>
            </div>

            <div class="card-footer clearfix">
              <button type="submit" class="btn btn-success float-right">Simpan</button>
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