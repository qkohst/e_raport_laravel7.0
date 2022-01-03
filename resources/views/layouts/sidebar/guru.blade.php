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

        @if(Session::get('kurikulum') == '2013')

        <!-- Kurikulum 2013 -->
        <li class="nav-header">RAPORT K-2013</li>
        <li class="nav-item">
          <a href="{{ route('kdk13.index') }}" class="nav-link">
            <i class="nav-icon fas fa-clipboard-list"></i>
            <p>
              Data Kompetensi Dasar
            </p>
          </a>
        </li>
        <li class="nav-item has-treeview">
          <a href="#" class="nav-link">
            <i class="nav-icon fas fa-list-alt"></i>
            <p>
              Rencana Penilaian
              <i class="fas fa-angle-left right"></i>
            </p>
          </a>
          <ul class="nav nav-treeview bg-secondary">
            <li class="nav-item">
              <a href="{{ route('rencanapengetahuan.index') }}" class="nav-link">
                <i class="fas fa-check-circle nav-icon"></i>
                <p>Nilai Pengetahuan</p>
              </a>
            </li>
            <li class="nav-item">
              <a href="{{ route('rencanaketerampilan.index') }}" class="nav-link">
                <i class="fas fa-check-circle nav-icon"></i>
                <p>Nilai Keterampilan</p>
              </a>
            </li>
            <li class="nav-item">
              <a href="{{ route('rencanaspiritual.index') }}" class="nav-link">
                <i class="fas fa-check-circle nav-icon"></i>
                <p>Pilih KD/Butir Spiritual </p>
              </a>
            </li>
            <li class="nav-item">
              <a href="{{ route('rencanasosial.index') }}" class="nav-link">
                <i class="fas fa-check-circle nav-icon"></i>
                <p>Pilih KD/Butir Sosial </p>
              </a>
            </li>
            <li class="nav-item">
              <a href="{{ route('bobotnilai.index') }}" class="nav-link">
                <i class="fas fa-check-circle nav-icon"></i>
                <p>Bobot PH PTS dan PAS </p>
              </a>
            </li>
          </ul>
        </li>

        <li class="nav-item has-treeview">
          <a href="#" class="nav-link">
            <i class="nav-icon fas fa-list-ol"></i>
            <p>
              Input Nilai
              <i class="fas fa-angle-left right"></i>
            </p>
          </a>
          <ul class="nav nav-treeview bg-secondary">
            <li class="nav-item">
              <a href="{{ route('nilaipengetahuan.index') }}" class="nav-link">
                <i class="fas fa-edit nav-icon"></i>
                <p>Nilai Pengetahuan</p>
              </a>
            </li>
            <li class="nav-item">
              <a href="{{ route('nilaiketerampilan.index') }}" class="nav-link">
                <i class="fas fa-edit nav-icon"></i>
                <p>Nilai Keterampilan</p>
              </a>
            </li>
            <li class="nav-item">
              <a href="{{ route('nilaispiritual.index') }}" class="nav-link">
                <i class="fas fa-edit nav-icon"></i>
                <p>Nilai Sikap Spiritual </p>
              </a>
            </li>
            <li class="nav-item">
              <a href="{{ route('nilaisosial.index') }}" class="nav-link">
                <i class="fas fa-edit nav-icon"></i>
                <p>Nilai Sikap Sosial </p>
              </a>
            </li>
            <li class="nav-item">
              <a href="{{ route('nilaiptspas.index') }}" class="nav-link">
                <i class="fas fa-edit nav-icon"></i>
                <p>Nilai PTS dan PAS </p>
              </a>
            </li>
          </ul>
        </li>

        <li class="nav-item">
          <a href="{{ route('nilaiekstra.index') }}" class="nav-link">
            <i class="nav-icon fas fa-book-reader"></i>
            <p>
              Input Nilai Ekstrakulikuler
            </p>
          </a>
        </li>

        <li class="nav-item has-treeview">
          <a href="#" class="nav-link">
            <i class="nav-icon fas fa-clipboard-check"></i>
            <p>
              Nilai Akhir Raport
              <i class="fas fa-angle-left right"></i>
            </p>
          </a>
          <ul class="nav nav-treeview bg-secondary">
            <li class="nav-item">
              <a href="{{ route('kirimnilaiakhir.index') }}" class="nav-link">
                <i class="fas fa-paper-plane nav-icon"></i>
                <p>Kirim Nilai Akhir</p>
              </a>
            </li>
            <li class="nav-item">
              <a href="{{ route('nilaiterkirim.index') }}" class="nav-link">
                <i class="fas fa-eye nav-icon"></i>
                <p>Lihat Nilai Terkirim</p>
              </a>
            </li>
          </ul>
        </li>

        <li class="nav-item">
          <a href="{{ route('prosesdeskripsi.index') }}" class="nav-link">
            <i class="nav-icon fas fa-file-alt"></i>
            <p>
              Proses Deskripsi Siswa
            </p>
          </a>
        </li>



        <!-- End Kurikulum 2013 -->

        @elseif(Session::get('kurikulum') == '2006')

        <!-- Kurikulum 2006 -->
        <li class="nav-header">RAPORT KURIKULUM 2006</li>
        <li class="nav-item">
          <a href="{{ route('bobot.index') }}" class="nav-link">
            <i class="nav-icon fas fa-balance-scale"></i>
            <p>
              Bobot Penilaian
            </p>
          </a>
        </li>
        <li class="nav-item has-treeview">
          <a href="#" class="nav-link">
            <i class="nav-icon fas fa-list-ol"></i>
            <p>
              Input Nilai
              <i class="fas fa-angle-left right"></i>
            </p>
          </a>
          <ul class="nav nav-treeview bg-secondary">
            <li class="nav-item">
              <a href="{{ route('nilaitugas.index') }}" class="nav-link">
                <i class="fas fa-edit nav-icon"></i>
                <p>Rata-Rata Tugas</p>
              </a>
            </li>
            <li class="nav-item">
              <a href="{{ route('nilaiuh.index') }}" class="nav-link">
                <i class="fas fa-edit nav-icon"></i>
                <p>Rata-Rata UH</p>
              </a>
            </li>
            <li class="nav-item">
              <a href="{{ route('nilaiutsuas.index') }}" class="nav-link">
                <i class="fas fa-edit nav-icon"></i>
                <p>Nilai UTS & UAS</p>
              </a>
            </li>
          </ul>
        </li>
        <li class="nav-item">
          <a href="{{ route('nilaiekstra.index') }}" class="nav-link">
            <i class="nav-icon fas fa-book-reader"></i>
            <p>
              Input Nilai Ekstrakulikuler
            </p>
          </a>
        </li>
        <li class="nav-item has-treeview">
          <a href="#" class="nav-link">
            <i class="nav-icon fas fa-clipboard-check"></i>
            <p>
              Nilai Akhir Raport
              <i class="fas fa-angle-left right"></i>
            </p>
          </a>
          <ul class="nav nav-treeview bg-secondary">
            <li class="nav-item">
              <a href="{{ route('kirimnilai.index') }}" class="nav-link">
                <i class="fas fa-paper-plane nav-icon"></i>
                <p>Kirim Nilai Akhir</p>
              </a>
            </li>
            <li class="nav-item">
              <a href="{{ route('lihatnilai.index') }}" class="nav-link">
                <i class="fas fa-eye nav-icon"></i>
                <p>Lihat Nilai Terkirim</p>
              </a>
            </li>
          </ul>
        </li>
        <li class="nav-item">
          <a href="{{ route('inputdeskripsi.index') }}" class="nav-link">
            <i class="nav-icon fas fa-file-alt"></i>
            <p>
              Input Deskripsi Siswa
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