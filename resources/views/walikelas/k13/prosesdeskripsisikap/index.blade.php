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
              <h3 class="card-title"><i class="fas fa-file-alt"></i> {{$title}}</h3>
            </div>
            <form action="{{ route('prosesdeskripsisikap.store') }}" method="POST">
              @csrf
              <div class="card-body">
                <div class="table-responsive">
                  <table class="table table-bordered table-striped">
                    <thead class="bg-info">
                      <tr>
                        <th rowspan="2" class="text-center" style="width: 50px;">No</th>
                        <th rowspan="2" class="text-center" style="width: 50px;">NIS</th>
                        <th rowspan="2" class="text-center" style="width: 15%">Nama Siswa</th>
                        <th colspan="2" class="text-center">Sikap Skpiritual</th>
                        <th colspan="2" class="text-center">Sikap Sosial</th>
                      </tr>
                      <tr>
                        <th class="text-center" style="width: 50px;">Nilai</th>
                        <th class="text-center">Deskripsi</th>
                        <th class="text-center" style="width: 50px;">Nilai</th>
                        <th class="text-center">Deskripsi</th>
                      </tr>
                    </thead>
                    <tbody>
                      <?php $no = 0; ?>
                      @foreach($data_anggota_kelas->sortBy('siswa.nama_lengkap') as $anggota_kelas)
                      <?php $no++; ?>
                      <tr>
                        <input type="hidden" name="anggota_kelas_id[]" value="{{$anggota_kelas->id}}">
                        <td class="text-center">{{$no}}</td>
                        <td class="text-center">{{$anggota_kelas->siswa->nis}}</td>
                        <td>{{$anggota_kelas->siswa->nama_lengkap}}</td>
                        <td class="text-center">
                          @if($anggota_kelas->nilai_spiritual == 'Sangat Baik')
                          A
                          <input type="hidden" name="nilai_spiritual[]" value="4">
                          @elseif($anggota_kelas->nilai_spiritual == 'Baik')
                          B
                          <input type="hidden" name="nilai_spiritual[]" value="3">
                          @elseif($anggota_kelas->nilai_spiritual == 'Cukup')
                          C
                          <input type="hidden" name="nilai_spiritual[]" value="2">
                          @elseif($anggota_kelas->nilai_spiritual == 'Kurang')
                          D
                          <input type="hidden" name="nilai_spiritual[]" value="1">
                          @endif
                        </td>
                        <td>
                          <textarea class="form-control" name="deskripsi_spiritual[]" rows="4" minlength="30" maxlength="255" required oninvalid="this.setCustomValidity('Deskripsi harus berisi antara 20 s/d 100 karekter')" oninput="setCustomValidity('')">Memiliki sikap spiritual {{$anggota_kelas->nilai_spiritual}}, antara lain
Konsisten dalam <?php $no = 0; ?> @foreach($anggota_kelas->data_butir_spiritual->sortBy('k13_butir_sikap.butir_sikap') as $butir_spiritual)<?php $no++; ?>@if($no == $anggota_kelas->count_spiritual)dan @endif{{$butir_spiritual->k13_butir_sikap->butir_sikap}}@if($no == $anggota_kelas->count_spiritual). @else, @endif @endforeach
</textarea>
                        </td>
                        <td class="text-center">
                          @if($anggota_kelas->nilai_sosial == 'Sangat Baik')
                          A
                          <input type="hidden" name="nilai_sosial[]" value="4">
                          @elseif($anggota_kelas->nilai_sosial == 'Baik')
                          B
                          <input type="hidden" name="nilai_sosial[]" value="3">
                          @elseif($anggota_kelas->nilai_sosial == 'Cukup')
                          C
                          <input type="hidden" name="nilai_sosial[]" value="2">
                          @elseif($anggota_kelas->nilai_sosial == 'Kurang')
                          D
                          <input type="hidden" name="nilai_sosial[]" value="1">
                          @endif
                        </td>
                        <td>
                          <textarea class="form-control" name="deskripsi_sosial[]" rows="4" minlength="30" maxlength="255" required oninvalid="this.setCustomValidity('Deskripsi harus berisi antara 20 s/d 100 karekter')" oninput="setCustomValidity('')">Memiliki sikap sosial {{$anggota_kelas->nilai_sosial}}, antara lain
Konsisten dalam <?php $no = 0; ?> @foreach($anggota_kelas->data_butir_sosial->sortBy('k13_butir_sikap.butir_sikap') as $butir_sosial)<?php $no++; ?>@if($no == $anggota_kelas->count_sosial)dan @endif{{$butir_sosial->k13_butir_sikap->butir_sikap}}@if($no == $anggota_kelas->count_sosial). @else, @endif @endforeach
</textarea>
                        </td>
                      </tr>
                      @endforeach
                    </tbody>
                  </table>
                </div>
              </div>
              <div class="card-footer clearfix">
                <button type="submit" class="btn btn-primary float-right">Simpan</button>
              </div>
            </form>
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