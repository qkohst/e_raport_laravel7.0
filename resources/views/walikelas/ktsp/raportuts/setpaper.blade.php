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
              <h3 class="card-title"><i class="fas fa-print"></i> {{$title}}</h3>
            </div>

            <div class="card-body">
              <div class="callout callout-info">
                <form action="{{ route('raportuts.store') }}" method="POST">
                  @csrf
                  <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Ukuran Kertas</label>
                    <div class="col-sm-4">
                      <select class="form-control" name="paper_size" style="width: 100%;" required>
                        <option value="A4">A4 (21 cm x 29,7 cm)</option>
                        <option value="Folio">Folio (21,59 cm x 33 cm)</option>
                      </select>
                    </div>
                    <label class="col-sm-2 col-form-label">Orientasi</label>
                    <div class="col-sm-4">
                      <select class="form-control" name="orientation" style="width: 100%;" required onchange="this.form.submit();">
                        <option value="">-- Pilih Orientasi --</option>
                        <option value="potrait">Potrait</option>
                        <option value="landscape">Landscape</option>
                      </select>
                    </div>
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