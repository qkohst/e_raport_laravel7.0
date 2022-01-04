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
              <h3 class="card-title"><i class="fas fa-check-square"></i> {{$title}}</h3>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered table-striped">
                  <thead class="bg-info">
                    <tr>
                      <th class="text-center" style="width: 5%;">No</th>
                      <th class="text-center">NIS</th>
                      <th class="text-center">NISN</th>
                      <th class="text-center">Nama Siswa</th>
                      <th class="text-center" style="width: 5%;">L/P</th>
                      <th class="text-center" style="width: 15%;">Lihat Nilai Akhir Semester</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php $no_urut = 0; ?>
                    @foreach($data_anggota_kelas->sortBy('siswa.nama_lengkap') as $anggota_kelas)
                    <?php $no_urut++; ?>
                    <tr>
                      <td class="text-center">{{$no_urut}}</td>
                      <td class="text-center">{{$anggota_kelas->siswa->nis}}</td>
                      <td class="text-center">{{$anggota_kelas->siswa->nisn}}</td>
                      <td>{{$anggota_kelas->siswa->nama_lengkap}}</td>
                      <td class="text-center">{{$anggota_kelas->siswa->jenis_kelamin}}</td>
                      <td class="text-center">
                        <button type="button" class="btn btn-primary btn-sm mt-1" data-toggle="modal" data-target="#modal-show{{$anggota_kelas->id}}">
                          <i class="fas fa-eye"></i> Lihat Nilai
                        </button>
                        <!-- Modal Show -->
                        <div class="modal fade text-left" id="modal-show{{$anggota_kelas->id}}">
                          <div class="modal-dialog modal-xl">
                            <div class="modal-content">
                              <div class="modal-header">
                                <h5 class="modal-title">Nilai Akhir Semester Siswa</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                  <span aria-hidden="true">&times;</span>
                                </button>
                              </div>
                              <div class="modal-body">
                                <!-- Header Info  -->
                                <div class="row">
                                  <div class="col-sm-2"><strong>Nama Sekolah</strong></div>
                                  <div class="col-sm-6"><strong>: {{$sekolah->nama_sekolah}}</strong></div>
                                  <div class="col-sm-2"><strong>Kelas</strong></div>
                                  <div class="col-sm-2"><strong>: {{$anggota_kelas->kelas->nama_kelas}}</strong></div>
                                </div>
                                <div class="row">
                                  <div class="col-sm-2"><strong>Alamat</strong></div>
                                  <div class="col-sm-6"><strong>: {{$sekolah->alamat}}</strong></div>
                                  <div class="col-sm-2"><strong>Semester</strong></div>
                                  <div class="col-sm-2"><strong>: {{$anggota_kelas->kelas->tapel->semester}}</strong></div>
                                </div>
                                <div class="row">
                                  <div class="col-sm-2"><strong>Nama</strong></div>
                                  <div class="col-sm-6"><strong>: {{$anggota_kelas->siswa->nama_lengkap}}</strong></div>
                                  <div class="col-sm-2"><strong>Tahun Pelajaran</strong></div>
                                  <div class="col-sm-2"><strong>: {{$anggota_kelas->kelas->tapel->tahun_pelajaran}}</strong></div>
                                </div>
                                <div class="row">
                                  <div class="col-sm-2"><strong>Nomor Induk / NISN</strong></div>
                                  <div class="col-sm-10"><strong>: {{$anggota_kelas->siswa->nis}} / {{$anggota_kelas->siswa->nisn}}</strong></div>
                                </div>
                                <!-- /. Header Info-->

                                <!-- Tabel Nilai  -->
                                <div class="row mt-3">
                                  <div class="col-sm-12">
                                    <strong>NILAI AKHIR SEMESTER</strong>
                                  </div>
                                </div>
                                <div class="row">
                                  <div class="col-sm-12">
                                    <div class="table-responsive">
                                      <table class="table table-bordered">
                                        <thead class="bg-info">
                                          <tr>
                                            <th class="text-center" rowspan="2" style="width: 5%;">No</th>
                                            <th class="text-center" rowspan="2" style="width: 50%;">Mata Pelajaran</th>
                                            <th class="text-center" rowspan="2" style="width: 5%;">KKM</th>
                                            <th class="text-center" colspan="3" style="width: 40%;">Nilai Raport</th>
                                          </tr>
                                          <tr>
                                            <th class="text-center">Angka</th>
                                            <th class="text-center">Huruf</th>
                                            <th class="text-center">Predikat</th>
                                          </tr>
                                        </thead>
                                        <tbody>
                                          <!-- Nilai Mapel Wajib -->
                                          <tr class="bg-light">
                                            <td colspan="6"><strong>Mapel Wajib</strong></td>
                                          </tr>
                                          <?php $no_a = 0; ?>
                                          @foreach($anggota_kelas->data_nilai_mapel_wajib->sortBy('pembelajaran.mapel.ktsp_mapping_mapel.nomor_urut') as $nilai_mapel_wajib)
                                          <?php $no_a++; ?>
                                          <tr class="bg-white">
                                            <td class="text-center">{{$no_a}}</td>
                                            <td>{{$nilai_mapel_wajib->pembelajaran->mapel->nama_mapel}}</td>
                                            <td class="text-center">{{$nilai_mapel_wajib->kkm}}</td>
                                            <td class="text-center">{{$nilai_mapel_wajib->nilai_akhir}}</td>
                                            <td>{{terbilang($nilai_mapel_wajib->nilai_akhir)}}</td>
                                            <td class="text-center">{{$nilai_mapel_wajib->predikat}}</td>
                                          </tr>
                                          @endforeach
                                          <!-- End Nilai Mapel Wajib -->

                                          <!-- Nilai Mapel Pilihan -->
                                          <tr class="bg-light">
                                            <td colspan="6"><strong>Mapel Pilihan</strong></td>
                                          </tr>
                                          <?php $no_a = 0; ?>
                                          @foreach($anggota_kelas->data_nilai_mapel_pilihan->sortBy('pembelajaran.mapel.ktsp_mapping_mapel.nomor_urut') as $nilai_mapel_pilihan)
                                          <?php $no_a++; ?>
                                          <tr class="bg-white">
                                            <td class="text-center">{{$no_a}}</td>
                                            <td>{{$nilai_mapel_pilihan->pembelajaran->mapel->nama_mapel}}</td>
                                            <td class="text-center">{{$nilai_mapel_pilihan->kkm}}</td>
                                            <td class="text-center">{{$nilai_mapel_pilihan->nilai_akhir}}</td>
                                            <td>{{terbilang($nilai_mapel_pilihan->nilai_akhir)}}</td>
                                            <td class="text-center">{{$nilai_mapel_pilihan->predikat}}</td>
                                          </tr>
                                          @endforeach
                                          <!-- End Nilai Mapel Pilihan -->

                                          <!-- Nilai Muatan Lokal -->
                                          <tr class="bg-light">
                                            <td colspan="6"><strong>Muatan Lokal</strong></td>
                                          </tr>
                                          <?php $no_a = 0; ?>
                                          @foreach($anggota_kelas->data_nilai_mapel_muatan_lokal->sortBy('pembelajaran.mapel.ktsp_mapping_mapel.nomor_urut') as $nilai_muatan_lokal)
                                          <?php $no_a++; ?>
                                          <tr class="bg-white">
                                            <td class="text-center">{{$no_a}}</td>
                                            <td>{{$nilai_muatan_lokal->pembelajaran->mapel->nama_mapel}}</td>
                                            <td class="text-center">{{$nilai_muatan_lokal->kkm}}</td>
                                            <td class="text-center">{{$nilai_muatan_lokal->nilai_akhir}}</td>
                                            <td>{{terbilang($nilai_muatan_lokal->nilai_akhir)}}</td>
                                            <td class="text-center">{{$nilai_muatan_lokal->predikat}}</td>
                                          </tr>
                                          @endforeach
                                          <!-- End Nilai Muatan Lokal -->

                                        </tbody>
                                      </table>
                                    </div>
                                  </div>
                                </div>
                                <!-- /. Tabel Nilai  -->
                              </div>
                            </div>
                          </div>
                        </div>
                        <!-- End Modal Show -->
                      </td>
                    </tr>
                    @endforeach
                  </tbody>
                </table>
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