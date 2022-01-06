@include('layouts.auth.header')

<body class="hold-transition login-page">
  <div class="login-box">
    <div class="login-logo">
      <img src="/assets/dist/img/logo.png" alt="Logo" class="brand-image img-circle">
      <p class="login-box-msg">Aplikasi <b>E</b>-Raport</p>
    </div>
    <!-- /.login-logo -->
    <div class="card">
      <div class="card-body login-card-body">
        <p class="login-box-msg">REGISTRASI</p>

        <form method="post" action="{{ route('setting.tapel') }}">
          @csrf
          <div class="input-group mb-3">
            <input type="text" class="form-control" id="tahun_pelajaran" name="tahun_pelajaran" placeholder="Tahun Pelajaran" value="{{old('tahun_pelajaran')}}">
            <div class="input-group-append">
              <div class="input-group-text">
                <span class="fas fa-calendar"></span>
              </div>
            </div>
          </div>
          <div class="mb-3">
            <select class="form-control" name="semester" style="width: 100%;">
              <option value="">-- Pilih Semester -- </option>
              <option value="1">Semester Ganjil </option>
              <option value="2">Semester Genap </option>
            </select>
          </div>
          <div class="row mb-2">
            <div class="col-12">
              <button type="submit" class="btn btn-primary btn-block">REGISTRASI</button>
            </div>
          </div>
        </form>
      </div>
      <!-- /.login-card-body -->
    </div>
  </div>
  <!-- /.login-box -->

  @include('layouts.auth.footer')