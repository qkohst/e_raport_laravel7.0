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
        <p class="login-box-msg">GANTI PASSWORD</p>

        <form method="post" action="{{ route('gantipassword') }}">
          @csrf
          <div class="form-group mb-3">
            <input type="password" class="form-control" name="password_lama" placeholder="Password Lama">
          </div>
          <div class="form-group mb-3">
            <input type="password" class="form-control" name="password_baru" placeholder="Password Baru">
          </div>
          <div class="form-group mb-3">
            <input type="password" class="form-control" name="konfirmasi_password" placeholder="Konfirmasi Password">
          </div>
          <div class="row mb-2">
            <div class="col-12">
              <button type="submit" class="btn btn-primary btn-block">GANTI PASSWORD</button>
            </div>
          </div>
        </form>

        <p class="mb-1">
          <a href="{{ route('dashboard') }}">Kembali ke Dashboard</a>
        </p>
      </div>
      <!-- /.login-card-body -->
    </div>
  </div>
  <!-- /.login-box -->

  @include('layouts.auth.footer')