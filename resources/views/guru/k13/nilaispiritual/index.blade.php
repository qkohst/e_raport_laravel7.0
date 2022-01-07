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
              <h3 class="card-title"><i class="fas fa-list-ol"></i> {{$title}}</h3>
              <div class="card-tools">
                <button type="button" class="btn btn-tool btn-sm" data-toggle="modal" data-target="#modal-download" title="Donwload Format Import">
                  <i class="fas fa-download"></i>
                </button>
                <button type="button" class="btn btn-tool btn-sm" data-toggle="modal" data-target="#modal-import" title="Import Nilai">
                  <i class="fas fa-upload"></i>
                </button>
              </div>
            </div>

            <!-- Modal Download  -->
            <div class="modal fade" id="modal-download">
              <div class="modal-dialog modal-lg">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title">Download Format Import {{$title}}</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <form name="contact-form" action="{{ route('nilaispiritual.format_import') }}" method="GET">
                    @csrf
                    <div class="modal-body">
                      <div class="callout callout-info">
                        <h5>Perhatian</h5>
                        <p>
                          - Pastikan anda telah melakukan rencana penilaian sebelum mendownload format import. <br>
                          - Silahkan pilih pembelajaran & download file format import melalui tombol dibawah ini.
                        </p>

                      </div>

                      <div class="form-group row pt-2">
                        <label class="col-sm-3 col-form-label">Pilih Pembelajaran</label>
                        <div class="col-sm-9">
                          <select class="form-control select2" name="pembelajaran_id" required>
                            <option value="">-- Pilih Pembelajaran --</option>
                            @foreach($data_penilaian as $penilaian)
                            <option value="{{$penilaian->id}}"> {{$penilaian->mapel->nama_mapel}} {{$penilaian->kelas->nama_kelas}}</option>
                            @endforeach
                          </select>
                        </div>
                      </div>
                    </div>
                    <div class="modal-footer justify-content-end">
                      <button type="button" class="btn btn-default" data-dismiss="modal">Batal</button>
                      <button type="submit" class="btn btn-primary">Download</button>
                    </div>
                  </form>
                </div>
              </div>
            </div>
            <!-- End Modal Download -->

            <!-- Modal import  -->
            <div class="modal fade" id="modal-import">
              <div class="modal-dialog modal-lg">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title">Import {{$title}}</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <form name="contact-form" action="{{ route('nilaispiritual.import') }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="modal-body">
                      <div class="callout callout-info">
                        <h5>Perhatian</h5>
                        <p>
                          - Silahkan gunakan format yang anda download dari menu download format import. <br>
                          - Pastikan anda telah menyimpan file dalam format <b>excel 97-2003</b>. <br>
                          - Import nilai diluar prosedur dapat merusak data E-Raport.
                        </p>
                      </div>
                      <div class="form-group row pt-2">
                        <label for="file_import" class="col-sm-2 col-form-label">File Import</label>
                        <div class="col-sm-10">
                          <div class="custom-file">
                            <input type="file" class="custom-file-input" name="file_import" id="customFile" accept="application/vnd.ms-excel">
                            <label class="custom-file-label" for="customFile">Pilih file</label>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="modal-footer justify-content-end">
                      <button type="button" class="btn btn-default" data-dismiss="modal">Batal</button>
                      <button type="submit" class="btn btn-primary">Import</button>
                    </div>
                  </form>
                </div>
              </div>
            </div>
            <!-- End Modal import -->

            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered table-hover">
                  <thead class="bg-success">
                    <tr>
                      <th rowspan="2" class="text-center" style="width: 100px;">No</th>
                      <th rowspan="2" class="text-center">Mata Pelajaran</th>
                      <th rowspan="2" class="text-center">Kelas</th>
                      <th colspan="2" class="text-center" style="width: 200px;">Jumlah</th>
                      <th rowspan="2" class="text-center" style="width: 100px;">Input Nilai</th>
                    </tr>
                    <tr>
                      <th class="text-center" style="width: 100px;">Rencana Penilaian</th>
                      <th class="text-center" style="width: 100px;">Telah Dinilai</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php $no = 0; ?>
                    @foreach($data_penilaian as $penilaian)
                    <?php $no++; ?>
                    <tr>
                      <td class="text-center">{{$no}}</td>
                      <td>{{$penilaian->mapel->nama_mapel}}</td>
                      <td class="text-center">{{$penilaian->kelas->nama_kelas}}</td>

                      @if($penilaian->jumlah_rencana_penilaian == 0)
                      <td class="text-danger text-center"><b>0</b></td>
                      @else
                      <td class="text-success text-center"><b>{{$penilaian->jumlah_rencana_penilaian}}</b></td>
                      @endif

                      @if($penilaian->jumlah_telah_dinilai == 0)
                      <td class="text-danger text-center"><b>0</b></td>
                      @elseif($penilaian->jumlah_telah_dinilai == $penilaian->jumlah_rencana_penilaian)
                      <td class="text-success text-center"><b>{{$penilaian->jumlah_telah_dinilai}}</b></td>
                      @else
                      <td class="text-warning text-center"><b>{{$penilaian->jumlah_telah_dinilai}}</b></td>
                      @endif

                      @if($penilaian->jumlah_rencana_penilaian != 0)
                      <td class="text-center">
                        <form action="{{ route('nilaispiritual.create') }}" method="GET">
                          @csrf
                          <input type="hidden" name="pembelajaran_id" value="{{$penilaian->id}}">
                          <button type="submit" class="btn btn-sm btn-primary">
                            <i class="fas fa-plus"></i>
                          </button>
                        </form>
                      </td>
                      @else
                      <td class="text-center">
                        <form action="{{ route('nilaispiritual.create') }}" method="GET">
                          @csrf
                          <input type="hidden" name="pembelajaran_id" value="{{$penilaian->id}}">
                          <button type="submit" class="btn btn-sm btn-primary" title="Belum ada rencana penilaian" disabled>
                            <i class="fas fa-plus"></i>
                          </button>
                        </form>
                      </td>
                      @endif
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