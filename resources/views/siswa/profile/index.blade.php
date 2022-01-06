@include('layouts.main.header')
@include('layouts.sidebar.siswa')

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
      <div class="row">
        <div class="col-md-3">

          <!-- Profile Image -->
          <div class="card card-primary card-outline">
            <div class="card-body box-profile">
              <div class="text-center">
                <img class="profile-user-img img-fluid img-circle" src="/assets/dist/img/avatar/{{Auth::user()->siswa->avatar}}" alt="Avatar">
              </div>

              <h3 class="profile-username text-center">{{$siswa->nama_lengkap}}</h3>

              <p class="text-muted text-center">Siswa</p>

              <ul class="list-group list-group-unbordered mb-3">
                <li class="list-group-item">
                  <b>Username</b> <a class="float-right">{{$siswa->user->username}}</a>
                </li>
                <li class="list-group-item">
                  <b>NIS</b> <a class="float-right">{{$siswa->nis}}</a>
                </li>
                <li class="list-group-item">
                  <b>NISN</b> <a class="float-right">{{$siswa->nisn}}</a>
                </li>
              </ul>
            </div>
            <!-- /.card-body -->
          </div>
          <!-- /.card -->

        </div>
        <!-- /.col -->
        <div class="col-md-9">
          <div class="card">
            <div class="card-header">
              <h3 class="card-title"><i class="fas fa-user"></i> Data Pribadi</h3>
            </div><!-- /.card-header -->
            <div class="card-body">
              <form action="{{ route('profilesiswa.update', $siswa->id) }}" method="POST" enctype="multipart/form-data">
                @method('put')
                @csrf
                <div class="form-group row">
                  <label class="col-sm-2 col-form-label">Nama Lengkap</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" name="nama_lengkap" value="{{$siswa->nama_lengkap}}">
                  </div>
                </div>

                <div class="form-group row">
                  <label class="col-sm-2 col-form-label">Jenis Kelamin</label>
                  <div class="col-sm-10 pt-2">
                    <label class="form-check-label mr-3"><input type="radio" name="jenis_kelamin" value="L" @if ($siswa->jenis_kelamin =='L' ) checked @endif required> Laki-Laki</label>
                    <label class="form-check-label mr-3"><input type="radio" name="jenis_kelamin" value="P" @if ($siswa->jenis_kelamin =='P' ) checked @endif required> Perempuan</label>
                  </div>
                </div>

                <div class="form-group row">
                  <label class="col-sm-2 col-form-label">Tempat Lahir</label>
                  <div class="col-sm-4">
                    <input type="text" class="form-control" name="tempat_lahir" value="{{$siswa->tempat_lahir}}">
                  </div>
                  <label class="col-sm-2 col-form-label">Tanggal Lahir</label>
                  <div class="col-sm-4">
                    <input type="date" class="form-control" name="tanggal_lahir" value="{{$siswa->tanggal_lahir->format('Y-m-d')}}">
                  </div>
                </div>

                <div class="form-group row">
                  <label class="col-sm-2 col-form-label">Agama </label>
                  <div class="col-sm-4">
                    <select class="form-control" name="agama" required>
                      <option value="" disabled>-- Pilih Agama --</option>
                      <option value="1" @if($siswa->agama == 1) selected @endif>Islam</option>
                      <option value="2" @if($siswa->agama == 2) selected @endif>Protestan</option>
                      <option value="3" @if($siswa->agama == 3) selected @endif>Katolik</option>
                      <option value="4" @if($siswa->agama == 4) selected @endif>Hindu</option>
                      <option value="5" @if($siswa->agama == 5) selected @endif>Budha</option>
                      <option value="6" @if($siswa->agama == 6) selected @endif>Khonghucu</option>
                      <option value="7" @if($siswa->agama == 7) selected @endif>Kepercayaan</option>
                    </select>
                  </div>
                  <label class="col-sm-2 col-form-label">Anak Ke </label>
                  <div class="col-sm-4">
                    <input type="number" class="form-control" name="anak_ke" value="{{$siswa->anak_ke}}">
                  </div>
                </div>

                <div class="form-group row">
                  <label class="col-sm-2 col-form-label">Status Dalam Keluarga</label>
                  <div class="col-sm-10 pt-2">
                    <label class="form-check-label mr-3"><input type="radio" name="status_dalam_keluarga" value="1" @if ($siswa->status_dalam_keluarga=='1' ) checked @endif required> Anak Kandung</label>
                    <label class="form-check-label mr-3"><input type="radio" name="status_dalam_keluarga" value="2" @if ($siswa->status_dalam_keluarga=='2' ) checked @endif required> Anak Angkat</label>
                    <label class="form-check-label mr-3"><input type="radio" name="status_dalam_keluarga" value="3" @if ($siswa->status_dalam_keluarga=='3' ) checked @endif required> Anak Tiri</label>
                  </div>
                </div>

                <div class="form-group row">
                  <label class="col-sm-2 col-form-label">Nomor HP </label>
                  <div class="col-sm-10">
                    <input type="number" class="form-control" name="nomor_hp" value="{{$siswa->nomor_hp}}">
                  </div>
                </div>

                <div class="form-group row">
                  <label class="col-sm-2 col-form-label">Alamat </label>
                  <div class="col-sm-10">
                    <textarea class="form-control" name="alamat" rows="2">{{$siswa->alamat}}</textarea>
                  </div>
                </div>

                <div class="form-group row">
                  <label class="col-sm-2 col-form-label">Nama Ayah </label>
                  <div class="col-sm-4">
                    <input type="text" class="form-control" name="nama_ayah" value="{{$siswa->nama_ayah}}">
                  </div>
                  <label class="col-sm-2 col-form-label">Nama Ibu </label>
                  <div class="col-sm-4">
                    <input type="text" class="form-control" name="nama_ibu" value="{{$siswa->nama_ibu}}">
                  </div>
                </div>

                <div class="form-group row">
                  <label class="col-sm-2 col-form-label">Pekerjaan Ayah </label>
                  <div class="col-sm-4">
                    <input type="text" class="form-control" name="pekerjaan_ayah" value="{{$siswa->pekerjaan_ayah}}">
                  </div>
                  <label class="col-sm-2 col-form-label">Pekerjaan Ibu </label>
                  <div class="col-sm-4">
                    <input type="text" class="form-control" name="pekerjaan_ibu" value="{{$siswa->pekerjaan_ibu}}">
                  </div>
                </div>

                <div class="form-group row">
                  <label class="col-sm-2 col-form-label">Nama Wali <small><i>(opsional)</i></small></label>
                  <div class="col-sm-4">
                    <input type="text" class="form-control" name="nama_wali" value="{{$siswa->nama_wali}}">
                  </div>
                  <label class="col-sm-2 col-form-label">Pekerjaan Wali <small><i>(opsional)</i></small> </label>
                  <div class="col-sm-4">
                    <input type="text" class="form-control" name="pekerjaan_wali" value="{{$siswa->pekerjaan_wali}}">
                  </div>
                </div>

                <div class="form-group row">
                  <label class="col-sm-2 col-form-label">Foto Profile </label>
                  <div class="col-sm-10">
                    <div class="custom-file">
                      <input type="file" class="custom-file-input" name="avatar" id="customFile" accept="image/*">
                      <label class="custom-file-label" for="customFile">{{$siswa->avatar}}</label>
                    </div>
                  </div>
                </div>


                <div class="form-group row">
                  <div class="offset-sm-2 col-sm-10">
                    <div>
                      <label>
                        <input type="checkbox" required> Edit identitas saya
                      </label>
                    </div>
                  </div>
                </div>
                <div class="form-group row">
                  <div class="offset-sm-2 col-sm-10">
                    <button type="submit" class="btn btn-primary">Simpan</button>
                  </div>
                </div>
              </form>
            </div><!-- /.card-body -->
          </div>
          <!-- /.nav-tabs-custom -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </div><!-- /.container-fluid -->
  </section>
  <!-- /.content -->
</div>
<!-- /.content-wrapper -->

@include('layouts.main.footer')