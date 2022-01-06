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
              <h3 class="card-title"><i class="fas fa-print"></i> {{$title}}</h3>
            </div>

            <div class="card-body">
              <div class="callout callout-info">
                <form action="{{ route('ktspraportuts.store') }}" method="POST">
                  @csrf
                  <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Ukuran Kertas</label>
                    <div class="col-sm-4">
                      <select class="form-control" name="paper_size" style="width: 100%;" required onchange="this.form.submit();">
                        <option value="" disabled>-- Pilih Ukuran Kertas --</option>
                        <option value="A4" @if($paper_size=='A4' ) selected @endif>A4 (21 cm x 29,7 cm)</option>
                        <option value="Folio" @if($paper_size=='Folio' ) selected @endif>Folio (21,59 cm x 33 cm)</option>
                      </select>
                    </div>
                    <label class="col-sm-2 col-form-label">Orientasi</label>
                    <div class="col-sm-4">
                      <select class="form-control" name="orientation" style="width: 100%;" required onchange="this.form.submit();">
                        <option value="" disabled>-- Pilih Orientasi --</option>
                        <option value="potrait" @if($orientation=='potrait' ) selected @endif>Potrait</option>
                        <option value="landscape" @if($orientation=='landscape' ) selected @endif>Landscape</option>
                      </select>
                    </div>
                  </div>
                  <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Kelas</label>
                    <div class="col-sm-10">
                      <select class="form-control select2" name="kelas_id" style="width: 100%;" required onchange="this.form.submit();">
                        <option value="" disabled>-- Pilih Kelas --</option>
                        @foreach($data_kelas->sortBy('tingkatan_kelas') as $kls)
                        <option value="{{$kls->id}}" @if($kls->id == $kelas->id) selected @endif>{{$kls->nama_kelas}}</option>
                        @endforeach
                      </select>
                    </div>
                  </div>
                </form>
              </div>

              <div class="table-responsive">
                <table class="table table-bordered table-striped table-hover">
                  <thead class="bg-info">
                    <tr>
                      <th class="text-center" style="width: 5%;">No</th>
                      <th class="text-center" style="width: 5%;">NIS</th>
                      <th class="text-center">Nama Siswa</th>
                      <th class="text-center" style="width: 5%;">L/P</th>
                      <th class="text-center" style="width: 15%;">Raport Tengah Semester</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php $no = 0; ?>
                    @foreach($data_anggota_kelas->sortBy('siswa.nama_lengkap') as $anggota_kelas)
                    <?php $no++; ?>
                    <tr>
                      <input type="hidden" name="anggota_kelas_id[]" value="{{$anggota_kelas->id}}">
                      <td class="text-center">{{$no}}</td>
                      <td class="text-center">{{$anggota_kelas->siswa->nis}}</td>
                      <td>{{$anggota_kelas->siswa->nama_lengkap}}</td>
                      <td class="text-center">{{$anggota_kelas->siswa->jenis_kelamin}}</td>
                      <td class="text-center">
                        <form action="{{ route('ktspraportuts.show', $anggota_kelas->id) }}" target="_black" method="GET">
                          @csrf
                          <input type="hidden" name="paper_size" value="{{$paper_size}}">
                          <input type="hidden" name="orientation" value="{{$orientation}}">
                          <button type="submit" class="btn btn-primary btn-sm">
                            <i class="fas fa-print"></i> Raport UTS
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