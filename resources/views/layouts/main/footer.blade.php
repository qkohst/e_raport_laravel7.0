<!-- Main Footer -->
<footer class="main-footer">
  <strong>Copyright &copy; 2021 | <a href="https://qkohst.github.io/" target="_black">Qkoh St</a>.</strong>
  Theme by AdminLTE
  <div class="float-right d-none d-sm-inline-block">
    <b>E</b>-Raport | Versi 1.0
  </div>
</footer>
</div>
<!-- ./wrapper -->

@include('sweetalert::alert')

<!-- REQUIRED SCRIPTS -->
<!-- pace-progress -->
<script src="/assets/plugins/pace-progress/pace.min.js"></script>
<!-- jQuery -->
<script src="/assets/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="/assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- overlayScrollbars -->
<script src="/assets/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- AdminLTE App -->
<script src="/assets/dist/js/adminlte.js"></script>

<!-- OPTIONAL SCRIPTS -->
<script src="/assets/dist/js/demo.js"></script>

<!-- PAGE PLUGINS -->
<!-- jQuery Mapael -->
<script src="/assets/plugins/jquery-mousewheel/jquery.mousewheel.js"></script>
<script src="/assets/plugins/raphael/raphael.min.js"></script>
<script src="/assets/plugins/jquery-mapael/jquery.mapael.min.js"></script>
<script src="/assets/plugins/jquery-mapael/maps/usa_states.min.js"></script>
<!-- ChartJS -->
<script src="/assets/plugins/chart.js/Chart.min.js"></script>

<!-- Select2 -->
<script src="/assets/plugins/select2/js/select2.full.min.js"></script>

<!-- Bootstrap4 Duallistbox -->
<script src="/assets/plugins/bootstrap4-duallistbox/jquery.bootstrap-duallistbox.min.js"></script>

<!-- DataTables -->
<script src="/assets/plugins/datatables/jquery.dataTables.js"></script>
<script src="/assets/plugins/datatables-bs4/js/dataTables.bootstrap4.js"></script>


<!-- bs-custom-file-input -->
<script src="/assets/plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>
<script type="text/javascript">
  $(document).ready(function() {
    bsCustomFileInput.init();
  });
</script>

<script type="text/javascript">
  function CheckPendaftaran(val) {
    var element = document.getElementById('kelas');
    var element1 = document.getElementById('kelas_bawah');
    var element2 = document.getElementById('kelas_all');
    if (val == '1')
      element.style.display = 'none',
      element.required = '',
      element1.style.display = 'block',
      element1.required = 'required',
      element1.name = 'kelas_id',
      element2.style.display = 'none',
      element2.required = '',
      element2.name = '',
      element2.value = '';
    else
      element2.style.display = 'block',
      element2.required = 'required',
      element2.name = 'kelas_id',
      element.style.display = 'none',
      element.required = '',
      element1.style.display = 'none',
      element1.required = '',
      element1.name = '',
      element1.value = '';


  }
</script>

<!-- PAGE SCRIPTS -->
<script src="/assets/dist/js/pages/dashboard2.js"></script>

<script>
  $(function() {
    //Initialize Select2 Elements
    $('.select2').select2()

    $("#example1").DataTable();
    $('#example2').DataTable({
      "paging": true,
      "lengthChange": true,
      "searching": true,
      "ordering": true,
      "info": true,
      "autoWidth": false,
    });
    $('#example3').DataTable({
      "paging": true,
      "lengthChange": true,
      "searching": true,
      "ordering": true,
      "info": true,
      "autoWidth": false,
    });

    $('#example4').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false,
    });

    //Bootstrap Duallistbox
    $('.duallistbox').bootstrapDualListbox()
  });
</script>

</body>

</html>