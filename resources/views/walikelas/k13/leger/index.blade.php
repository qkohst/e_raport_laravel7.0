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
              <h3 class="card-title"><i class="fas fa-table"></i> {{$title}}</h3>
              <div class="card-tools">
                <a href="{{ route('leger.export') }}" class="btn btn-tool btn-sm" onclick="return confirm('Download {{$title}} ?')">
                  <i class="fas fa-download"></i>
                </a>
              </div>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered table-striped">
                  <thead class="bg-info">
                    <tr>
                      <th rowspan="2" class="text-center" style="width: 50px;">No</th>
                      <th rowspan="2" class="text-center" style="width: 50px;">NIS</th>
                      <th rowspan="2" class="text-center">Nama Siswa</th>
                      <th rowspan="2" class="text-center" style="width: 50px;">Kelas</th>

                      @foreach($data_mapel_kelompok_a->sortBy('pembelajaran.mapel.k13_mapping_mapel.nomor_urut') as $mapel_kelompok_a)
                      <th colspan="4" class="text-center">{{$mapel_kelompok_a->pembelajaran->mapel->ringkasan_mapel}}</th>
                      @endforeach

                      @foreach($data_mapel_kelompok_b->sortBy('pembelajaran.mapel.k13_mapping_mapel.nomor_urut') as $mapel_kelompok_b)
                      <th colspan="4" class="text-center">{{$mapel_kelompok_b->pembelajaran->mapel->ringkasan_mapel}}</th>
                      @endforeach

                      <th colspan="2" class="text-center">Rata-Rata</th>
                      <th colspan="2" class="text-center">Nilai Sikap</th>
                      <th colspan="3" class="text-center">Kehadiran</th>
                      <th colspan="{{$count_ekstrakulikuler}}" class="text-center">Ekstrakulikuler</th>
                    </tr>
                    <tr>

                      @foreach($data_mapel_kelompok_a->sortBy('pembelajaran.mapel.k13_mapping_mapel.nomor_urut') as $mapel_kelompok_a)
                      <th class="text-center" colspan="2">Peng</th>
                      <th class="text-center" colspan="2">Ket</th>
                      @endforeach

                      @foreach($data_mapel_kelompok_b->sortBy('pembelajaran.mapel.k13_mapping_mapel.nomor_urut') as $mapel_kelompok_b)
                      <th class="text-center" colspan="2">Peng</th>
                      <th class="text-center" colspan="2">Ket</th>
                      @endforeach

                      <th class="text-center">Peng</th>
                      <th class="text-center">Ket</th>

                      <th class="text-center">Spr</th>
                      <th class="text-center">Sos</th>

                      <th class="text-center">S</th>
                      <th class="text-center">I</th>
                      <th class="text-center">A</th>
                      @foreach($data_ekstrakulikuler->sortBy('id') as $ekstrakulikuler)
                      <th class="text-center">{{$ekstrakulikuler->nama_ekstrakulikuler}}</th>
                      @endforeach

                    </tr>
                  </thead>
                  <tbody>
                    <?php $no = 0; ?>
                    @foreach($data_anggota_kelas->sortBy('siswa.nama_lengkap') as $anggota_kelas)
                    <?php $no++; ?>
                    <tr>
                      <td class="text-center">{{$no}}</td>
                      <td class="text-center">{{$anggota_kelas->siswa->nis}}</td>
                      <td>{{$anggota_kelas->siswa->nama_lengkap}}</td>
                      <td class="text-center">{{$anggota_kelas->kelas->nama_kelas}}</td>

                      @foreach($anggota_kelas->data_nilai_kelompok_a->sortBy('pembelajaran.mapel.k13_mapping_mapel.nomor_urut') as $nilai_kelompok_a)
                      <td class="text-center">{{$nilai_kelompok_a->nilai_pengetahuan}}</td>
                      <td class="text-center">{{$nilai_kelompok_a->predikat_pengetahuan}}</td>
                      <td class="text-center">{{$nilai_kelompok_a->nilai_keterampilan}}</td>
                      <td class="text-center">{{$nilai_kelompok_a->predikat_keterampilan}}</td>
                      @endforeach

                      @foreach($anggota_kelas->data_nilai_kelompok_b->sortBy('pembelajaran.mapel.k13_mapping_mapel.nomor_urut') as $nilai_kelompok_b)
                      <td class="text-center">{{$nilai_kelompok_b->nilai_pengetahuan}}</td>
                      <td class="text-center">{{$nilai_kelompok_b->predikat_pengetahuan}}</td>
                      <td class="text-center">{{$nilai_kelompok_b->nilai_keterampilan}}</td>
                      <td class="text-center">{{$nilai_kelompok_b->predikat_keterampilan}}</td>
                      @endforeach

                      <td class="text-center">{{$anggota_kelas->rata_rata_pengetahuan}}</td>
                      <td class="text-center">{{$anggota_kelas->rata_rata_keterampilan}}</td>

                      @if($anggota_kelas->nilai_spiritual == 1)
                      <td class="text-center">D</td>
                      @elseif($anggota_kelas->nilai_spiritual == 2)
                      <td class="text-center">C</td>
                      @elseif($anggota_kelas->nilai_spiritual == 3)
                      <td class="text-center">B</td>
                      @elseif($anggota_kelas->nilai_spiritual == 4)
                      <td class="text-center">A</td>
                      @else
                      <td class="text-center text-danger"><strong>0</strong></td>
                      @endif

                      @if($anggota_kelas->nilai_sosial == 1)
                      <td class="text-center">D</td>
                      @elseif($anggota_kelas->nilai_sosial == 2)
                      <td class="text-center">C</td>
                      @elseif($anggota_kelas->nilai_sosial == 3)
                      <td class="text-center">B</td>
                      @elseif($anggota_kelas->nilai_sosial == 4)
                      <td class="text-center">A</td>
                      @else
                      <td class="text-center text-danger"><strong>0</strong></td>
                      @endif

                      @if(!is_null($anggota_kelas->kehadiran_siswa))
                      <td class="text-center">{{$anggota_kelas->kehadiran_siswa->sakit}}</td>
                      <td class="text-center">{{$anggota_kelas->kehadiran_siswa->izin}}</td>
                      <td class="text-center">{{$anggota_kelas->kehadiran_siswa->tanpa_keterangan}}</td>
                      @else
                      <td class="text-center">-</td>
                      <td class="text-center">-</td>
                      <td class="text-center">-</td>
                      @endif

                      @foreach($anggota_kelas->data_nilai_ekstrakulikuler as $nilai_ekstrakulikuler)
                      @if($nilai_ekstrakulikuler->nilai == 1)
                      <td class="text-center">Kurang</td>
                      @elseif($nilai_ekstrakulikuler->nilai == 2)
                      <td class="text-center">Cukup</td>
                      @elseif($nilai_ekstrakulikuler->nilai == 3)
                      <td class="text-center">Baik</td>
                      @elseif($nilai_ekstrakulikuler->nilai == 4)
                      <td class="text-center">Sangat Baik</td>
                      @else
                      <td class="text-center">-</td>
                      @endif
                      @endforeach
                    </tr>
                    @endforeach
                  </tbody>
                </table>
              </div>
              <!-- /.table-responsive -->
            </div>
            <!-- /.card-body -->
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