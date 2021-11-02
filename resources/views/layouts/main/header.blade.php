<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="x-ua-compatible" content="ie=edge">

  <title>E-Raport | {{$title}}</title>

  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="/assets/plugins/fontawesome-free/css/all.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="/assets/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="/assets/dist/css/adminlte.min.css">
  <!-- DataTables -->
  <link rel="stylesheet" href="/assets/plugins/datatables-bs4/css/dataTables.bootstrap4.css">
</head>

<body class="hold-transition sidebar-mini layout-fixed layout-navbar-fixed layout-footer-fixed">
  <div class="wrapper">
    <!-- Navbar -->
    <nav class="main-header navbar navbar-expand navbar-white navbar-light">
      <!-- Left navbar links -->
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link" data-widget="pushmenu" href="#"><i class="fas fa-bars"></i></a>
        </li>
      </ul>

      <!-- Right navbar links -->
      <ul class="navbar-nav ml-auto">
        <!-- Notifications Dropdown Menu -->
        <li class="nav-item dropdown pr-2">
          <!-- User Block  -->
          <a class="user-block" data-toggle="dropdown" href="#">
            @if (Auth::user()->role == 1)
            <img class="img-circle" src="/assets/dist/img/avatar/{{Auth::user()->admin->avatar}}" alt="User Image">
            <span class="username">{{Auth::user()->admin->nama_lengkap}}</span>
            <span class="description">Administrator</span>
            @elseif(Auth::user()->role == 2)
            <img class="img-circle" src="/assets/dist/img/user1-128x128.jpg" alt="User Image">
            <span class="username">{{Auth::user()->username}}</span>
            <span class="description">Guru</span>
            @else
            <img class="img-circle" src="/assets/dist/img/user1-128x128.jpg" alt="User Image">
            <span class="username">{{Auth::user()->username}}</span>
            <span class="description">Siswa</span>
            @endif
          </a>
          <!-- End User Block  -->

          <!-- User Dropdown  -->
          <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
            <span class="dropdown-item dropdown-header">Akun Saya</span>
            <div class="dropdown-divider"></div>
            <a href="#" class="dropdown-item">
              <i class="fas fa-user mr-2"></i> Profile
            </a>
            <div class="dropdown-divider"></div>
            <a href="{{ route('gantipassword') }}" class="dropdown-item">
              <i class="fas fa-key mr-2"></i> Ganti Password
            </a>
            <div class="dropdown-divider"></div>
            <a href="{{ route('logout') }}" class="dropdown-item dropdown-footer bg-danger"><i class="fas fa-sign-out-alt mr-1"></i> Logout</a>
          </div>
          <!-- End User Dropdown  -->
        </li>
      </ul>
    </nav>
    <!-- /.navbar -->