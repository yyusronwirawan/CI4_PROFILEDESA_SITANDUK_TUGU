<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <title>Halaman Kepala Desa <?= $logo['nama_desa']; ?></title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
  <meta content="Coderthemes" name="author" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <!-- App favicon -->
  <?php if ($logo['logo'] == '') {
  ?>
    <link rel="shortcut icon" href="<?= base_url('public/admin/images/identitas/sumedang.png'); ?>">
  <?php } else {

  ?>
    <link rel="shortcut icon" href="<?= base_url('public/admin/images/identitas/' . $logo['logo']); ?>">
  <?php } ?>

  <link href="<?= base_url('public/admin/libs/datatables/dataTables.bootstrap4.css'); ?>" rel="stylesheet" type="text/css" />
  <link href="<?= base_url('public/admin/libs/datatables/buttons.bootstrap4.css'); ?>" rel="stylesheet" type="text/css" />
  <link href="<?= base_url('public/admin/libs/datatables/responsive.bootstrap4.css'); ?>" rel="stylesheet" type="text/css" />

  <!-- C3 Chart css -->

  <!-- App css -->
  <link href="<?= base_url('public/admin/css/bootstrap.min.css'); ?>" rel="stylesheet" type="text/css" id="bootstrap-stylesheet" />
  <link href="<?= base_url('public/admin/css/icons.min.css'); ?>" rel="stylesheet" type="text/css" />
  <link href="<?= base_url('public/admin/css/app.min.css'); ?>" rel="stylesheet" type="text/css" id="app-stylesheet" />
  <link href="<?= base_url('public/admin/libs/select2/select2.min.css'); ?>" rel="stylesheet" type="text/css" />
  <link href="<?= base_url('public/admin/libs/bootstrap-select/bootstrap-select.min.css'); ?>" rel="stylesheet" type="text/css" />

  <link href="<?= base_url('public/admin/libs/bootstrap-colorpicker/bootstrap-colorpicker.min.css'); ?>" rel="stylesheet" type="text/css" />
  <link href="<?= base_url('public/admin/libs/clockpicker/bootstrap-clockpicker.min.css'); ?>" rel="stylesheet">
  <link href="<?= base_url('public/admin/libs/bootstrap-timepicker/bootstrap-timepicker.min.css'); ?>" rel="stylesheet" type="text/css" />
  <link href="<?= base_url('public/admin/libs/bootstrap-daterangepicker/daterangepicker.css'); ?>" rel="stylesheet">
  <link href="<?= base_url('public/admin/libs/bootstrap-datepicker/bootstrap-datepicker.min.css'); ?>" rel="stylesheet" type="text/css" />


</head>

<body>

  <!-- Begin page -->
  <div id="wrapper">


    <!-- Topbar Start -->
    <div class="navbar-custom">
      <ul class="list-unstyled topnav-menu float-right mb-0">
        <li class="dropdown notification-list">
          <a class="nav-link  waves-effect waves-light" href="<?= base_url('permohonansurat'); ?>" role="button">
            <i class="dripicons-download noti-icon"></i>
            <span class="badge badge-pink rounded-circle noti-icon-badge"><?= $permohonan; ?></span>
          </a>
        </li>

        <li class="dropdown notification-list">
          <a class="nav-link dropdown-toggle nav-user mr-0 waves-effect waves-light" data-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">

            <?php if ($logo['logo'] == '') {
              echo "<img class='rounded-circle' src='" .  base_url('public/admin/images/identitas/sumedang.png') . "' width='20%'>
           <br> <br>";
            } else {
              echo "
                <img class='rounded-circle' src='" .  base_url('public/admin/images/identitas/' . $logo['logo']) . "' width='20%'>
           <br> <br> ";
            } ?>

            <span class="pro-user-name ml-1">
              Administrator <i class="mdi mdi-chevron-down"></i>
            </span>
          </a>
          <div class="dropdown-menu dropdown-menu-right profile-dropdown ">
            <!-- item-->
            <div class="dropdown-header noti-title">
              <h6 class="text-overflow m-0">Selamat Datang !</h6>
            </div>
            <a href="<?= base_url('setting'); ?>" class="dropdown-item notify-item">
              <i class="fe-settings"></i>
              <span>Setting</span>
            </a>
            <!-- item-->
            <a href="<?= base_url('profilkades'); ?>" class="dropdown-item notify-item">
              <i class="fe-user"></i>
              <span>Profile</span>
            </a>

            <!-- item-->


            <div class="dropdown-divider"></div>

            <!-- item-->
            <a href="<?= base_url('kades/login/logout'); ?>" class="dropdown-item notify-item">
              <i class="fe-log-out"></i>
              <span>Keluar</span>
            </a>

          </div>
        </li>




      </ul>

      <!-- LOGO -->
      <div class="logo-box">
        <a href="<?= base_url('kades') ?>" class="logo text-center">

          <span class="logo-lg">

            <?php if ($logo['logo'] == '') {
              echo "<img  src='" .  base_url('public/admin/images/identitas/sumedang.png') . "' width='25%'>
           <br> <br>";
            } else {
              echo "
                <img  src='" .  base_url('public/admin/images/identitas/' . $logo['logo']) . "' width='25%'>
           <br> <br> ";
            } ?>



          </span>
          <span class="logo-sm">

            <?php if ($logo['logo'] == '') {
              echo "<img  src='" .  base_url('public/admin/images/identitas/sumedang.png') . "' width='25%'>
           <br> <br>";
            } else {
              echo "
                <img  src='" .  base_url('public/admin/images/identitas/' . $logo['logo']) . "' width='25%'>
           <br> <br> ";
            } ?>


          </span>
        </a>
      </div>

      <ul class="list-unstyled topnav-menu topnav-menu-left m-0">
        <li>
          <button class="button-menu-mobile waves-effect waves-light">
            <i class="fe-menu"></i>
          </button>
        </li>
        <li>

        </li>

      </ul>
    </div>
    <!-- end Topbar -->


    <!-- ========== Left Sidebar Start ========== -->
    <div class="left-side-menu">

      <div class="slimscroll-menu">

        <!--- Sidemenu -->
        <div id="sidebar-menu">

          <ul class="metismenu" id="side-menu">

            <li class="menu-title">Menu</li>

            <li>
              <a href="<?= base_url('kades'); ?>">
                <i class="fe-home"></i>
                <span> Dashboard </span>
              </a>
            </li>

            <li>
              <a href="<?= base_url('managestatistikkades'); ?>">
                <i class="fas fa-chart-bar"></i>
                <span> Statistik </span>
              </a>
            </li>

            <li>
              <a href="<?= base_url('permohonansurat'); ?>">
                <i class="fe-target"></i>
                <span> Permohonan Surat </span>
              </a>
            </li>

          </ul>

        </div>
        <!-- End Sidebar -->

        <div class="clearfix"></div>

      </div>
      <!-- Sidebar -left -->

    </div>
    <div class="content-page">
      <?php $this->rendersection('isi'); ?>


    </div>
    <!-- END wrapper -->
    <footer class="footer">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-12">
             2023 &copy; KKN TEMATIK Kelompok Desa Tugu <a href="https://teknik.umpo.ac.id">Universitas Muhammadiyah Ponorogo</a>
          </div>
        </div>
      </div>
    </footer>
    <!-- end Footer -->

  </div>
  <!-- Right bar overlay-->
  <div class="rightbar-overlay"></div>


  <!-- Vendor js -->
  <script src="<?= base_url('public/admin/js/vendor.min.js'); ?>"></script>
  <script src="<?= base_url('public/admin/js/app.min.js'); ?>"></script>



  <script src="<?= base_url('public/admin/js/pages/dashboard.init.js'); ?>"></script>

  <!--datatables-->
  <script src="<?= base_url('public/admin/libs/datatables/jquery.dataTables.min.js'); ?>"></script>
  <script src="<?= base_url('public/admin/libs/datatables/dataTables.bootstrap4.min.js'); ?>"></script>
  <script src="<?= base_url('public/admin/libs/datatables/dataTables.buttons.min.js'); ?>"></script>
  <script src="<?= base_url('public/admin/libs/datatables/buttons.bootstrap4.min.js'); ?>"></script>

  <script src="<?= base_url('public/admin/libs/datatables/buttons.html5.min.js'); ?>"></script>
  <script src="<?= base_url('public/admin/libs/datatables/buttons.print.min.js'); ?>"></script>
  <script src="<?= base_url('public/admin/libs/datatables/buttons.colVis.js'); ?>"></script>
  <script src="<?= base_url('public/admin/libs/datatables/dataTables.responsive.min.js'); ?>"></script>
  <script src="<?= base_url('public/admin/libs/datatables/responsive.bootstrap4.min.js'); ?>"></script>
  <script src="<?= base_url('public/admin/js/pages/datatables.init.js'); ?>"></script>
  <script src="<?= base_url('public/admin/libs/select2/select2.min.js'); ?>"></script>
  <script src="<?= base_url('public/admin/libs/bootstrap-select/bootstrap-select.min.js'); ?>"></script>
  <script src="<?= base_url('public/admin/js/pages/form-advanced.init.js'); ?>"></script>
  <!-- App js -->

  <script src="<?= base_url('public/admin/ckeditor/ckeditor.js'); ?>"></script>
  <script>
    CKEDITOR.replace('ckeditor', {
      height: 460
    });
  </script>

  <script>
    $(function() {
      $("#example").DataTable({
        "responsive": true,
        "lengthChange": false,
        "autoWidth": false,

      }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');

    });
  </script>
  <script src="<?= base_url('public/admin/libs/bootstrap-colorpicker/bootstrap-colorpicker.min.js'); ?>"></script>
  <script src="<?= base_url('public/admin/libs/bootstrap-timepicker/bootstrap-timepicker.min.js'); ?>"></script>
  <script src="<?= base_url('public/admin/libs/clockpicker/bootstrap-clockpicker.min.js'); ?>"></script>
  <script src="<?= base_url('public/admin/libs/bootstrap-datepicker/bootstrap-datepicker.min.js'); ?>"></script>
  <script src="<?= base_url('public/admin/libs/bootstrap-daterangepicker/daterangepicker.js'); ?>"></script>

  <!-- Init js-->
  <script src="<?= base_url('public/admin/js/pages/form-pickers.init.js'); ?>"></script>

  <script>
    var dt = new Date();
    document.getElementById("tanggalwaktu").innerHTML = (("0" + dt.getDate()).slice(-2)) + "-" + (("0" + (dt.getMonth() + 1)).slice(-2)) + "-" + (dt.getFullYear());
  </script>
  <script>
    var dt = new Date();
    document.getElementById("tanggal").innerHTML = (("0" + dt.getDate()).slice(-2)) + "-" + (("0" + (dt.getMonth() + 1)).slice(-2)) + "-" + (dt.getFullYear());
  </script>


</body>

</html>