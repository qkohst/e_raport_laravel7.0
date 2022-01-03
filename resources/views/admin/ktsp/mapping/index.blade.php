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
              <h3 class="card-title"><i class="fas fa-list-ol"></i> {{$title}}</h3>
            </div>

            <div class="card-body">

              <form action="{{ route('mapping.store') }}" method="POST">
                @csrf
                <div class="table-responsive">
                  <table class="table table-bordered table-striped table-hover">
                    <thead class="bg-info">
                      <tr>
                        <th class="text-center">No</th>
                        <th class="text-center">Mata Pelajaran</th>
                        <th class="text-center">Kelompok</th>
                        <th class="text-center">No Urut Raport</th>
                      </tr>
                    </thead>
                    <tbody>
                      <?php $no = 0; ?>
                      @foreach($data_mapel as $mapel)
                      <?php $no++; ?>
                      <tr>
                        <td class="text-center">{{$no}}</td>
                        <td>{{$mapel->nama_mapel}}
                          <input type="hidden" name="mapel_id[]" value="{{$mapel->id}}">
                        </td>
                        <td>
                          <select class="form-control" name="kelompok[]" style="width: 100%;" required>
                            <option value="">-- Pilih Kelompok Mapel-- </option>
                            <option value="1" @if($mapel->kelompok == 1) selected @endif>Mapel Wajib </option>
                            <option value="2" @if($mapel->kelompok == 2) selected @endif>Pilihan </option>
                            <option value="3" @if($mapel->kelompok == 3) selected @endif>Muatan Lokal </option>
                          </select>
                        </td>
                        <td>
                          <input type="number" class="form-control" name="nomor_urut[]" value="{{$mapel->nomor_urut}}" required>
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