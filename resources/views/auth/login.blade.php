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
        <p class="login-box-msg">LOGIN</p>

        <form method="post" action="{{ route('login') }}">
          @csrf
          <div class="input-group mb-3">
            <input type="text" class="form-control" name="username" placeholder="Username">
            <div class="input-group-append">
              <div class="input-group-text">
                <span class="fas fa-user"></span>
              </div>
            </div>
          </div>
          <div class="input-group mb-3">
            <input type="password" class="form-control" name="password" placeholder="Password">
            <div class="input-group-append">
              <div class="input-group-text">
                <span class="fas fa-key"></span>
              </div>
            </div>
          </div>
          <div class="mb-3">
            <select class="form-control" name="kurikulum" style="width: 100%;">
              <option value="">-- Pilih Kurikulum Sekolah -- </option>
              <option value="2013">Kurikulum 2013 </option>
              <option value="2006">Kurikulum 2006 (KTSP) </option>
            </select>
          </div>
          <div class="mb-1">
            <select class="form-control" name="tahun_pelajaran" style="width: 100%;">
              <option value="" disabled>-- Pilih Tahun Pelajaran -- </option>
              <?php $no = 0; ?>
              @foreach($data_tapel as $tapel)
              <?php $no++; ?>
              <option value="{{$tapel->id}}" @if($no==1) selected @endif>{{$tapel->tahun_pelajaran}}
                @if($tapel->semester == 1)
                Ganjil
                @else
                Genap
                @endif
              </option>
              @endforeach
            </select>
          </div>
          <div class="form-check mt-2 mb-2">
            <input type="checkbox" class="form-check-input" id="exampleCheck2">
            <label class="form-check-label" for="exampleCheck2">Remember me</label>
          </div>
          <div class="row mb-2">
            <div class="col-12">
              <button type="submit" class="btn btn-primary btn-block">LOGIN</button>
            </div>
          </div>
        </form>

      </div>
      <!-- /.login-card-body -->
    </div>
  </div>
  <!-- /.login-box -->

  @include('layouts.auth.footer')