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
          <a href="{{ route('pesertadidik.index') }}" class="nav-link">
            <i class="nav-icon fas fa-users"></i>
            <p>
              Data Peserta Didik
            </p>
          </a>
        </li>
        <li class="nav-item has-treeview">
          <a href="#" class="nav-link">
            <i class="nav-icon fas fa-clipboard-list"></i>
            <p>
              Input Data dan Nilai
              <i class="fas fa-angle-left right"></i>
            </p>
          </a>
          <ul class="nav nav-treeview bg-secondary">
            <li class="nav-item">
              <a href="{{ route('kehadiran.index') }}" class="nav-link">
                <i class="fas fa-user-check nav-icon"></i>
                <p>Input Kehadiran Siswa</p>
              </a>
            </li>
            <li class="nav-item">
              <a href="{{ route('nilaipengetahuan.index') }}" class="nav-link">
                <i class="fas fa-trophy nav-icon"></i>
                <p>Input Prestasi Siswa</p>
              </a>
            </li>
            <li class="nav-item">
              <a href="{{ route('nilaipengetahuan.index') }}" class="nav-link">
                <i class="fas fa-edit nav-icon"></i>
                <p>Catatan Wali Kelas</p>
              </a>
            </li>
          </ul>
        </li>

        @if(Session::get('kurikulum') == '2013')

        <!-- Kurikulum 2013 -->
        <li class="nav-item">
          <a href="{{ route('prosesdeskripsi.index') }}" class="nav-link">
            <i class="nav-icon fas fa-file-alt"></i>
            <p>
              Proses Deskripsi Siswa
            </p>
          </a>
        </li>
        <li class="nav-item">
          <a href="{{ route('prosesdeskripsi.index') }}" class="nav-link">
            <i class="nav-icon fas fa-check-circle"></i>
            <p>
              Status Penilaian
            </p>
          </a>
        </li>
        <li class="nav-item">
          <a href="{{ route('prosesdeskripsi.index') }}" class="nav-link">
            <i class="nav-icon fas fa-check-square"></i>
            <p>
              Hasil Pengelolaan Nilai
            </p>
          </a>
        </li>

        <li class="nav-item has-treeview">
          <a href="#" class="nav-link">
            <i class="nav-icon fas fa-table"></i>
            <p>
              Leger Nilai Siswa
              <i class="fas fa-angle-left right"></i>
            </p>
          </a>
          <ul class="nav nav-treeview bg-secondary">
            <li class="nav-item">
              <a href="pages/mailbox/mailbox.html" class="nav-link">
                <i class="fas fa-eye nav-icon"></i>
                <p>Lihat Leger</p>
              </a>
            </li>
            <li class="nav-item">
              <a href="pages/mailbox/mailbox.html" class="nav-link">
                <i class="fas fa-download nav-icon"></i>
                <p>Download Leger</p>
              </a>
            </li>
          </ul>
        </li>
        <li class="nav-item has-treeview">
          <a href="#" class="nav-link">
            <i class="nav-icon fas fa-print"></i>
            <p>
              Cetak Raport
              <i class="fas fa-angle-left right"></i>
            </p>
          </a>
          <ul class="nav nav-treeview bg-secondary">
            <li class="nav-item">
              <a href="{{ route('rencanapengetahuan.index') }}" class="nav-link">
                <i class="fas fa-print nav-icon"></i>
                <p>Raport Tengah Semester</p>
              </a>
            </li>
            <li class="nav-item">
              <a href="{{ route('rencanaketerampilan.index') }}" class="nav-link">
                <i class="fas fa-print nav-icon"></i>
                <p>Raport Semester</p>
              </a>
            </li>
          </ul>
        </li>

        <!-- End Kurikulum 2013 -->

        @elseif(Session::get('kurikulum') == '2006')

        <!-- Kurikulum 2006 -->
        <li class="nav-header">RAPORT KURIKULUM 2006</li>
        <li class="nav-item">
          <a href="#" class="nav-link">
            <i class="nav-icon fas fa-list-ol"></i>
            <p>
              Mapping Mapel
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