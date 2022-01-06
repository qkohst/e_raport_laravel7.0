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
      <div class="row">
        <div class="col-md-3">

          <!-- Profile Image -->
          <div class="card card-primary card-outline">
            <div class="card-body box-profile">
              <div class="text-center">
                <img class="profile-user-img img-fluid img-circle" src="/assets/dist/img/avatar/{{Auth::user()->guru->avatar}}" alt="Avatar">
              </div>

              <h3 class="profile-username text-center">{{$guru->nama_lengkap}}, {{$guru->gelar}}</h3>

              <p class="text-muted text-center">Guru</p>

              <ul class="list-group list-group-unbordered mb-3">
                <li class="list-group-item">
                  <b>Username</b> <a class="float-right">{{$guru->user->username}}</a>
                </li>
                <li class="list-group-item">
                  <b>NIP</b> <a class="float-right">{{$guru->email}}</a>
                </li>
                <li class="list-group-item">
                  <b>NUPTK</b> <a class="float-right">{{$guru->nomor_hp}}</a>
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
              <form action="{{ route('profileguru.update', $guru->id) }}" method="POST" enctype="multipart/form-data">
                @method('put')
                @csrf
                <div class="form-group row">
                  <label class="col-sm-2 col-form-label">Nama Lengkap</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" name="nama_lengkap" value="{{$guru->nama_lengkap}}">
                  </div>
                </div>
                <div class="form-group row">
                  <label class="col-sm-2 col-form-label">Gelar</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" name="gelar" value="{{$guru->gelar}}">
                  </div>
                </div>
                <div class="form-group row">
                  <label class="col-sm-2 col-form-label">NIP <small><i>(opsional)</i></small></label>
                  <div class="col-sm-10">
                    <input type="number" class="form-control" name="nip" value="{{$guru->nip}}">
                  </div>
                </div>

                <div class="form-group row">
                  <label class="col-sm-2 col-form-label">Jenis Kelamin</label>
                  <div class="col-sm-10 pt-1">
                    <label class="form-check-label mr-3"><input type="radio" name="jenis_kelamin" value="L" @if ($guru->jenis_kelamin =='L' ) checked @endif required> Laki-Laki</label>
                    <label class="form-check-label mr-3"><input type="radio" name="jenis_kelamin" value="P" @if ($guru->jenis_kelamin =='P' ) checked @endif required> Perempuan</label>
                  </div>
                </div>

                <div class="form-group row">
                  <label class="col-sm-2 col-form-label">Tempat Lahir</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" name="tempat_lahir" value="{{$guru->tempat_lahir}}">
                  </div>
                </div>

                <div class="form-group row">
                  <label class="col-sm-2 col-form-label">Tanggal Lahir</label>
                  <div class="col-sm-4">
                    <input type="date" class="form-control" name="tanggal_lahir" value="{{$guru->tanggal_lahir}}">
                  </div>
                </div>

                <div class="form-group row">
                  <label class="col-sm-2 col-form-label">NUPTK <small><i>(opsional)</i></small></label>
                  <div class="col-sm-10">
                    <input type="number" class="form-control" name="nuptk" value="{{$guru->nuptk}}">
                  </div>
                </div>

                <div class="form-group row">
                  <label class="col-sm-2 col-form-label">Alamat </label>
                  <div class="col-sm-10">
                    <textarea class="form-control" name="alamat" rows="2">{{$guru->alamat}}</textarea>
                  </div>
                </div>

                <div class="form-group row">
                  <label class="col-sm-2 col-form-label">Foto Profile </label>
                  <div class="col-sm-10">
                    <div class="custom-file">
                      <input type="file" class="custom-file-input" name="avatar" id="customFile" accept="image/*">
                      <label class="custom-file-label" for="customFile">{{$guru->avatar}}</label>
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