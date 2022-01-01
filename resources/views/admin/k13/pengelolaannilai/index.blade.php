@include('layouts.main.header')
@include('layouts.sidebar.admin')

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
              <div class="callout callout-info">
                <form action="{{ route('k13pengelolaannilai.store') }}" method="POST">
                  @csrf
                  <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Kelas</label>
                    <div class="col-sm-10">
                      <select class="form-control select2" name="kelas_id" style="width: 100%;" required onchange="this.form.submit();">
                        <option value="" disabled>-- Pilih Kelas --</option>
                        @foreach($data_kelas->sortBy('tingkatan_kelas') as $kls)
                        <option value="{{$kls->id}}" @if($kls->id == $kelas->id) selected @endif>{{$kls->nama_kelas}}</option>
                        @endforeach
                      </select>
                    </div>
                  </div>
                </form>
              </div>

              <div class="table-responsive">
                <table class="table table-bordered table-striped table-hover">
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
                                    <strong>NILAI AKHIR SEMESTER PENGETAHUAN DAN KETERAMPILAN</strong>
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
                                            <th class="text-center" colspan="2" style="width: 20%;">Pengetahuan</th>
                                            <th class="text-center" colspan="2" style="width: 20%;">Keterampilan</th>
                                          </tr>
                                          <tr>
                                            <th class="text-center">Nilai</th>
                                            <th class="text-center">Predikat</th>
                                            <th class="text-center">Nilai</th>
                                            <th class="text-center">Predikat</th>
                                          </tr>
                                        </thead>
                                        <tbody>
                                          <!-- Nilai Kelompok A  -->
                                          <tr class="bg-light">
                                            <td colspan="7"><strong>Kelompok A</strong></td>
                                          </tr>
                                          <?php $no = 0; ?>
                                          @foreach($anggota_kelas->data_nilai_kelompok_a->sortBy('pembelajaran.mapel.k13_mapping_mapel.nomor_urut') as $nilai_kelompok_a)
                                          <?php $no++; ?>
                                          <tr class="bg-white">
                                            <td class="text-center">{{$no}}</td>
                                            <td>{{$nilai_kelompok_a->pembelajaran->mapel->nama_mapel}}</td>
                                            <td class="text-center">{{$nilai_kelompok_a->kkm}}</td>
                                            <td class="text-center">{{$nilai_kelompok_a->nilai_pengetahuan}}</td>
                                            <td class="text-center">{{$nilai_kelompok_a->predikat_pengetahuan}}</td>
                                            <td class="text-center">{{$nilai_kelompok_a->nilai_keterampilan}}</td>
                                            <td class="text-center">{{$nilai_kelompok_a->predikat_keterampilan}}</td>
                                          </tr>
                                          @endforeach
                                          <!-- End Nilai Kelompok A  -->

                                          <!-- Nilai Kelompok B  -->
                                          <tr class="bg-light">
                                            <td colspan="7"><strong>Kelompok B</strong></td>
                                          </tr>
                                          <?php $no = 0; ?>
                                          @foreach($anggota_kelas->data_nilai_kelompok_b->sortBy('pembelajaran.mapel.k13_mapping_mapel.nomor_urut') as $nilai_kelompok_b)
                                          <?php $no++; ?>
                                          <tr class="bg-white">
                                            <td class="text-center">{{$no}}</td>
                                            <td>{{$nilai_kelompok_b->pembelajaran->mapel->nama_mapel}}</td>
                                            <td class="text-center">{{$nilai_kelompok_b->kkm}}</td>
                                            <td class="text-center">{{$nilai_kelompok_b->nilai_pengetahuan}}</td>
                                            <td class="text-center">{{$nilai_kelompok_b->predikat_pengetahuan}}</td>
                                            <td class="text-center">{{$nilai_kelompok_b->nilai_keterampilan}}</td>
                                            <td class="text-center">{{$nilai_kelompok_b->predikat_keterampilan}}</td>
                                          </tr>
                                          @endforeach
                                          <!-- End Nilai Kelompok B  -->
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