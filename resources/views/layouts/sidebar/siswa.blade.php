<!-- Main Sidebar Container -->
<aside class="main-sidebar sidebar-dark-primary elevation-4">
  <!-- Brand Logo -->
  <a href="{{ route('dashboard') }}" class="brand-link">
    <img src="/assets/dist/img/logo.png" alt="Logo" class="brand-image img-circle">
    <span class="brand-text font-weight-light">Aplikasi E-Raport</span>
  </a>

  <!-- Sidebar -->
  <div class="sidebar">
    <!-- Sidebar Menu -->
    <nav class="mt-2">
      <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
        <li class="nav-item">
          <a href="{{ route('dashboard') }}" class="nav-link">
            <i class="nav-icon fas fa-tachometer-alt"></i>
            <p>
              Dashboard
            </p>
          </a>
        </li>
        <li class="nav-item">
          <a href="{{ route('ekstra.index') }}" class="nav-link">
            <i class="nav-icon fas fa-book-reader"></i>
            <p>
              Ekstrakulikuler
            </p>
          </a>
        </li>
        <li class="nav-item">
          <a href="{{ route('presensi.index') }}" class="nav-link">
            <i class="nav-icon fas fa-user-check"></i>
            <p>
              Rekap Kehadiran
            </p>
          </a>
        </li>

        @if(Session::get('kurikulum') == '2013')

        <!-- Kurikulum 2013 -->

        <li class="nav-item">
          <a href="{{ route('nilaiakhir.index') }}" class="nav-link">
            <i class="nav-icon fas fa-table"></i>
            <p>
              Nilai Akhir Semester
            </p>
          </a>
        </li>

        <!-- End Kurikulum 2013 -->

        @elseif(Session::get('kurikulum') == '2006')

        <!-- Kurikulum 2006 -->
        <li class="nav-item">
          <a href="{{ route('nilaisemester.index') }}" class="nav-link">
            <i class="nav-icon fas fa-table"></i>
            <p>
              Nilai Akhir Semester
            </p>
          </a>
        </li>
        <!-- End Kurikulum 2006 -->

        @endif

        <li class="nav-item bg-danger mt-2">
          <a href="{{ route('logout') }}" class="nav-link" onclick="return confirm('Apakah anda yakin ingin keluar ?')">
            <i class="nav-icon fas fa-sign-out-alt"></i>
            <p>
              Keluar / Logout
            </p>
          </a>
        </li>
      </ul>
    </nav>
    <!-- /.sidebar-menu -->
  </div>
  <!-- /.sidebar -->
</aside>