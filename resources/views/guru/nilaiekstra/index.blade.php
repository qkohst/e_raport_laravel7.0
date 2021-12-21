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
                      <select class="form-control select2" name="ekstrakulikuler_id" style="width: 100%;" required>
                        <option value="">-- Pilih Ekstrakulikuler --</option>
                        @foreach($data_ekstrakulikuler as $ekstrakulikuler)
                        <option value="{{$ekstrakulikuler->id}}">{{$ekstrakulikuler->nama_ekstrakulikuler}}</option>
                        @endforeach
                      </select>
                    </div>
                  </div>
                  <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Kelas</label>
                    <div class="col-sm-10">
                      <select class="form-control select2" name="kelas_id" style="width: 100%;" required onchange="this.form.submit();">
                        <!--  -->
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

<!-- ajax -->
<script type="text/javascript">
  $(document).ready(function() {
    $('select[name="ekstrakulikuler_id"]').on('change', function() {
      var ekstrakulikuler_id = $(this).val();
      if (ekstrakulikuler_id) {
        $.ajax({
          url: '/guru/getKelas/ekstra/' + ekstrakulikuler_id,
          type: "GET",
          dataType: "json",
          success: function(data) {
            $('select[name="kelas_id"').empty();

            $('select[name="kelas_id"]').append(
              '<option value="">-- Pilih Kelas --</option>'
            );

            $.each(data, function(i, data) {
              $('select[name="kelas_id"]').append(
                '<option value="' +
                data.id + '">' + data.nama_kelas + '</option>');
            });
          }
        });
      } else {
        $('select[name="kelas_id"').empty();
      }
    });
  });
</script>