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
            <!-- <li class="breadcrumb-item "><a href="{{ route('dashboard') }}">{{$title}}</a></li> -->
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

      <!-- Info -->
      <div class="callout callout-success">
        <h5>{{$sekolah->nama_sekolah}}</h5>
        <p>Tahun Pelajaran {{$tapel->tahun_pelajaran}}
          @if($tapel->semester == 1)
          Semester Ganjil
          @else
          Semester Genap
          @endif
        </p>
      </div>
      <!-- End Info  -->

      <!-- Info boxes -->
      <div class="row">
        <div class="col-12 col-sm-6 col-md-3">
          <div class="info-box">
            <span class="info-box-icon bg-info elevation-1"><i class="fas fa-layer-group"></i></span>

            <div class="info-box-content">
              <span class="info-box-text">Jumlah Kelas</span>
              <span class="info-box-number">{{$jumlah_kelas_diampu}} <small>kelas diampu</small></span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- /.col -->
        <div class="col-12 col-sm-6 col-md-3">
          <div class="info-box mb-3">
            <span class="info-box-icon bg-danger elevation-1"><i class="fas fa-book"></i></span>

            <div class="info-box-content">
              <span class="info-box-text">Jumlah Mapel</span>
              <span class="info-box-number">{{$jumlah_mapel_diampu}} <small>mapel diampu</small></span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- /.col -->

        <!-- fix for small devices only -->
        <div class="clearfix hidden-md-up"></div>

        <div class="col-12 col-sm-6 col-md-3">
          <div class="info-box mb-3">
            <span class="info-box-icon bg-success elevation-1"><i class="fas fa-users"></i></span>

            <div class="info-box-content">
              <span class="info-box-text">Jumlah Siswa</span>
              <span class="info-box-number">{{$jumlah_siswa_diampu}} <small>siswa diampu</small></span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- /.col -->
        <div class="col-12 col-sm-6 col-md-3">
          <div class="info-box mb-3">
            <span class="info-box-icon bg-warning elevation-1"><i class="fas fa-book-reader "></i></span>

            <div class="info-box-content">
              <span class="info-box-text">Jumlah Ekstrakulikuler</span>
              <span class="info-box-number">{{$jumlah_ekstrakulikuler_diampu}} <small>ekstrakulikuler diampu</small></span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->

      <div class="row">
        <div class="col-md-12">
          <div class="card">
            <div class="card-header">
              <h3 class="card-title">Capaian Proses Penilaian</h3>

              <div class="card-tools">
                <button type="button" class="btn btn-tool" data-card-widget="collapse">
                  <i class="fas fa-minus"></i>
                </button>
              </div>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered">
                  <thead class="bg-success">
                    <tr>
                      <th rowspan="2" class="text-center">No</th>
                      <th rowspan="2" class="text-center">Kelas</th>
                      <th rowspan="2" class="text-center">Mata Pelajaran</th>
                      <th rowspan="2" class="text-center" style="width: 50px;">KKM</th>
                      <th colspan="4" class="text-center" style="width: 200px;">Jumlah Perencanaan</th>
                      <th rowspan="2" class="text-center" style="width: 100px;">Bobot</th>
                      <th colspan="4" class="text-center" style="width: 200px;">Jumlah Penilaian</th>
                      <th colspan="2" class="text-center" style="width: 200px;">Input Nilai</th>
                      <th rowspan="2" class="text-center" style="width: 100px;">Proses Deskripsi</th>
                    </tr>
                    <tr>
                      <th class="text-center" style="width: 50px;">Peng</th>
                      <th class="text-center" style="width: 50px;">Ket</th>
                      <th class="text-center" style="width: 50px;">Skp Sprt</th>
                      <th class="text-center" style="width: 50px;">Skp Sosial</th>
                      <th class="text-center" style="width: 50px;">Peng</th>
                      <th class="text-center" style="width: 50px;">Ket</th>
                      <th class="text-center" style="width: 50px;">Skp Sprt</th>
                      <th class="text-center" style="width: 50px;">Skp Sosial</th>
                      <th class="text-center" style="width: 100px;">PTS</th>
                      <th class="text-center" style="width: 100px;">PAS</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php $no = 0; ?>
                    @foreach($data_capaian_penilaian as $penilaian)
                    <?php $no++; ?>
                    <tr>
                      <td class="text-center">{{$no}}</td>
                      <td>{{$penilaian->kelas->nama_kelas}}</td>
                      <td>{{$penilaian->mapel->nama_mapel}}</td>
                      <td class="text-center">
                        @if(is_null($penilaian->kkm))
                        <span class="badge badge-danger">0</span>
                        @else
                        <span class="badge badge-success">{{$penilaian->kkm}}</span>
                        @endif
                      </td>
                      <td class="text-center">
                        @if($penilaian->jumlah_rencana_pengetahuan == 0)
                        <b class="text-danger">
                          {{$penilaian->jumlah_rencana_pengetahuan}}
                        </b>
                        @else
                        <b class="text-success">
                          {{$penilaian->jumlah_rencana_pengetahuan}}
                        </b>
                        @endif
                      </td>
                      <td class="text-center">
                        @if($penilaian->jumlah_rencana_keterampilan == 0)
                        <b class="text-danger">
                          {{$penilaian->jumlah_rencana_keterampilan}}
                        </b>
                        @else
                        <b class="text-success">
                          {{$penilaian->jumlah_rencana_keterampilan}}
                        </b>
                        @endif
                      </td>
                      <td class="text-center">
                        @if($penilaian->jumlah_rencana_spiritual == 0)
                        <b class="text-danger">
                          {{$penilaian->jumlah_rencana_spiritual}}
                        </b>
                        @else
                        <b class="text-success">
                          {{$penilaian->jumlah_rencana_spiritual}}
                        </b>
                        @endif
                      </td>
                      <td class="text-center">
                        @if($penilaian->jumlah_rencana_sosial == 0)
                        <b class="text-danger">
                          {{$penilaian->jumlah_rencana_sosial}}
                        </b>
                        @else
                        <b class="text-success">
                          {{$penilaian->jumlah_rencana_sosial}}
                        </b>
                        @endif
                      </td>
                      <td class="text-center">
                        @if(is_null($penilaian->bobot_ph))
                        <b class="text-danger">
                          0
                        </b>
                        @else
                        <b class="text-success">
                          {{$penilaian->bobot_ph}};{{$penilaian->bobot_pts}};{{$penilaian->bobot_pas}}
                        </b>
                        @endif
                      </td>
                      <td class="text-center">
                        @if($penilaian->jumlah_telah_dinilai == 0)
                        <b class="text-danger">
                          0
                        </b>
                        @elseif($penilaian->jumlah_telah_dinilai == $penilaian->jumlah_rencana_pengetahuan)
                        <b class="text-success">
                          {{$penilaian->jumlah_telah_dinilai}}
                        </b>
                        @else
                        <b class="text-warning">
                          {{$penilaian->jumlah_telah_dinilai}}
                        </b>
                        @endif
                      </td>
                      <td class="text-center">0</td>
                      <td class="text-center">0</td>
                      <td class="text-center">0</td>
                      <td><span class="badge badge-danger">Belum Input</span></td>
                      <td><span class="badge badge-danger">Belum Input</span></td>
                      <td><span class="badge badge-danger">Belum Proses</span></td>
                    </tr>
                    @endforeach
                  </tbody>
                </table>
              </div>
              <!-- /.table-responsive -->
            </div>
            <!-- /.card-body -->
          </div>
        </div>
      </div>


      <!-- Main row -->
      <div class="row">
        <!-- Left col -->
        <div class="col-md-8">
          <!-- MAP & BOX PANE -->
          <div class="card">
            <div class="card-header">
              <h3 class="card-title">Pengumuman</h3>

              <div class="card-tools">
                <button type="button" class="btn btn-tool" data-card-widget="collapse">
                  <i class="fas fa-minus"></i>
                </button>
                <button type="button" class="btn btn-tool" data-card-widget="remove">
                  <i class="fas fa-times"></i>
                </button>
              </div>
            </div>
            <!-- /.card-header -->
            <div class="card-body pr-1">
              <div class="row">
                <div class="col-md-12">
                  <!-- The time line -->
                  <div class="timeline">
                    <!-- timeline time label -->
                    <div class="time-label">
                      <span class="bg-success">Pengumuman Terakhir</span>
                    </div>
                    <!-- /.timeline-label -->
                    <!-- timeline item -->
                    <div>
                      <i class="fas fa-envelope bg-blue"></i>
                      <div class="timeline-item">
                        <span class="time"><i class="fas fa-clock"></i> 12:05</span>
                        <h3 class="timeline-header"><a href="#">Support Team</a> sent you an email</h3>

                        <div class="timeline-body">
                          Etsy doostang zoodles disqus groupon greplin oooj voxy zoodles,
                          weebly ning heekya handango imeem plugg dopplr jibjab, movity
                          jajah plickers sifteo edmodo ifttt zimbra. Babblely odeo kaboodle
                          quora plaxo ideeli hulu weebly balihoo...
                        </div>
                        <div class="timeline-footer">
                          <a class="btn btn-primary btn-sm">Read more</a>
                          <a class="btn btn-danger btn-sm">Delete</a>
                        </div>
                      </div>
                    </div>
                    <!-- END timeline item -->
                    <div>
                      <i class="fas fa-clock bg-gray"></i>
                    </div>
                  </div>
                </div>
                <!-- /.col -->
              </div>
            </div>
            <!-- /.card-body -->
          </div>

        </div>
        <!-- /.col -->

        <div class="col-md-4">
          <!-- PRODUCT LIST -->
          <div class="card">
            <div class="card-header">
              <h3 class="card-title">Riwayat Login</h3>

              <div class="card-tools">
                <button type="button" class="btn btn-tool" data-card-widget="collapse">
                  <i class="fas fa-minus"></i>
                </button>
                <button type="button" class="btn btn-tool" data-card-widget="remove">
                  <i class="fas fa-times"></i>
                </button>
              </div>
            </div>
            <!-- /.card-header -->
            <div class="card-body p-0">
              <ul class="products-list product-list-in-card pl-2 pr-2">
                @foreach($data_riwayat_login as $riwayat_login)
                <li class="item">

                  <div class="product-img">
                    @if($riwayat_login->user->role == 1)
                    <img src="assets/dist/img/avatar/{{$riwayat_login->user->admin->avatar}}" alt="Avatar" class="img-size-50">
                    @elseif($riwayat_login->user->role == 2)
                    <img src="assets/dist/img/avatar/{{$riwayat_login->user->guru->avatar}}" alt="Avatar" class="img-size-50">
                    @elseif($riwayat_login->user->role == 3)
                    <img src="assets/dist/img/avatar/{{$riwayat_login->user->siswa->avatar}}" alt="Avatar" class="img-size-50">
                    @endif
                  </div>

                  <div class="product-info">
                    <a href="javascript:void(0)" class="product-title">
                      @if($riwayat_login->user->role == 1)
                      {{$riwayat_login->user->admin->nama_lengkap}}
                      @elseif($riwayat_login->user->role == 2)
                      {{$riwayat_login->user->guru->nama_lengkap}}
                      @elseif($riwayat_login->user->role == 3)
                      {{$riwayat_login->user->siswa->nama_lengkap}}
                      @endif

                      @if($riwayat_login->status_login == true)
                      <span class="badge badge-success float-right">Online</span>
                      @else
                      <span class="badge badge-warning float-right">Offline</span>
                      @endif

                    </a>

                    <span class="product-description">
                      @if($riwayat_login->user->role == 1)
                      Administrator
                      @elseif($riwayat_login->user->role == 2)
                      Guru
                      @elseif($riwayat_login->user->role == 3)
                      Siswa
                      @endif
                    </span>
                  </div>
                </li>
                <!-- /.item -->
                @endforeach
              </ul>
            </div>
            <!-- /.card-body -->

          </div>
          <!-- /.card -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </div>
    <!--/. container-fluid -->
  </section>
  <!-- /.content -->
</div>
<!-- /.content-wrapper -->

@include('layouts.main.footer')