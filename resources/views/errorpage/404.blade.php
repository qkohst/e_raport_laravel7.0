@include('layouts.auth.header')

<body class="hold-transition lockscreen">
  <div class="lockscreen-wrapper">
    <div class="error-content">
      <h1 class="headline text-warning text-center"> 404</h1>
      <h3 class="text-center"><i class="fas fa-exclamation-triangle text-warning"></i> Oops! Page not found.</h3>

      <p class="text-center">
        Kami tidak dapat menemukan halaman yang Anda cari
      </p>

      <div class="row mr-2 ml-2">
        <div class="col-12">
          <a href="{{ route('dashboard') }}" class="btn btn-primary btn-block">Kembali Ke Dashboard</a>
        </div>
      </div>
    </div>

    <div class="lockscreen-footer text-center">
      Copyright &copy; 2021 | <a href="https://qkohst.github.io/" target="_black">Qkoh St</a>.</strong>
      Theme by AdminLTE <br> <b>E</b>-Raport | Versi 1.0
    </div>
  </div>


  @include('layouts.auth.footer')