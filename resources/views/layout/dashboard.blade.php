<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>KhataBook</title>
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <!-- Google Font: Source Sans Pro -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="{{asset('public/assets/plugins/fontawesome-free/css/all.min.css')}}">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Tempusdominus Bootstrap 4 -->
    <link rel="stylesheet" href="{{asset('public/assets/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css')}}">
    <link rel="stylesheet" href="{{asset('public/assets/plugins/select2/css/select2.min.css')}}">
    <link rel="stylesheet" href="{{asset('public/assets/plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css')}}">
    <!-- iCheck -->
    <!-- daterange picker -->
    <link rel="stylesheet" href="{{asset('public/assets/css/dataTables.dateTime.min.css')}}">
    <link rel="stylesheet" href="{{asset('public/assets/plugins/icheck-bootstrap/icheck-bootstrap.min.css')}}">

    <!-- JQVMap -->
    <link rel="stylesheet" href="{{asset('public/assets/plugins/jqvmap/jqvmap.min.css')}}">
    <!-- Theme style -->
    <link rel="stylesheet" href="{{asset('public/assets/dist/css/adminlte.min.css')}}">
    <!-- overlayScrollbars -->
    <link rel="stylesheet" href="{{asset('public/assets/plugins/overlayScrollbars/css/OverlayScrollbars.min.css')}}">
    <!-- Daterange picker -->
    <link rel="stylesheet" href="{{asset('public/assets/plugins/daterangepicker/daterangepicker.css')}}">
    <!-- summernote -->
   
    <link rel="stylesheet" href="{{asset('public/assets/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css')}}">
    <link rel="stylesheet" href="{{asset('public/assets/css/jquery.dataTables.min.css')}}">
    <link rel="stylesheet" href="{{asset('public/assets/plugins/jquery-ui/jquery-ui.min.css')}}">
    <link rel="stylesheet" href="{{asset('public/assets/plugins/summernote/summernote-bs4.min.css')}}">
    <link rel="stylesheet" href="{{asset('public/assets/plugins/datatables-buttons/css/buttons.bootstrap4.min.css')}}">
    <!--  color picker-->
    <!-- <link rel="stylesheet" href="{{asset('public/assets/plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.min.css')}}"> -->

    <link rel="stylesheet" href="{{asset('public/assets/css/custom2.css')}}">
    <link rel="stylesheet" href="{{asset('public/assets/css/custom.css')}}">
    <link rel="stylesheet" href="{{asset('public/assets/css/print.css')}}">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">

    <link rel="stylesheet" href="{{asset('public/assets/dist/css/jquery.magicsearch.css')}}">
    <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script>
    
    <style>
        label.error {
            color: #eb0e24;
            font-size: 14px;
        }
    </style>

    <!-- logo favicon -->
    @if ($logo_image = getStoreSettings('logo_image'))
    <link rel="icon" type="image/png" href="{{URL::to('/')}}/storage/app/public/{{($logo_image)}}" />
    @else
    <link rel="icon" type="image/png" href="{{URL::to('/')}}/public/images/users/user.jpg" />
    @endif

</head>

<body class="hold-transition sidebar-mini layout-fixed">
    <div class="wrapper">

        <!-- Preloader -->
        <div class="preloader flex-column justify-content-center align-items-center">
            <center>Khatabook</center>
        </div>

        <!-- Navbar -->
        <nav class="main-header navbar navbar-expand navbar-white navbar-light">
            <!-- Left navbar links -->
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
                </li>
                <li class="nav-item d-none d-sm-inline-block">
                    <a href="{{route('admin.dashboard')}}" class="nav-link">Home</a>
                </li>
            </ul>

            <!-- Right navbar links -->
            <ul class="navbar-nav ml-auto">
                {{-- for notification --}}
                <li class="nav-item dropdown notification" style="display: none">
                    <a class="nav-link" data-toggle="dropdown" href="#">
                        <i class="far fa-bell"></i>
                    </a>
                    <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
                        <a href="{{route('setting.birthday_list')}}" class="dropdown-item">Check Birthday List</a>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-widget="fullscreen" href="#" role="button">
                        <i class="fas fa-expand-arrows-alt"></i>
                    </a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link" data-toggle="dropdown" href="#">
                        <i class="fas fa-sign-out-alt"></i>
                    </a>
                    <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
                        <a href="{{route('admin.logout')}}" class="dropdown-item">Logout</a>
                    </div>
                </li>
            </ul>
            
        </nav>
        <!-- /.navbar -->

        <!-- Main Sidebar Container -->
        <aside class="main-sidebar sidebar-dark-primary elevation-4">
            <!-- Brand Logo -->
            <a href="" class="brand-link">
                @if ($logo_image = getStoreSettings('logo_image'))
                <center><img src="{{URL::to('/')}}/storage/app/public/{{($logo_image)}}" style="height: 60px;"></center>
                @else
                <center><img src="{{URL::to('/')}}/public/images/users/user.jpg" style="height: 100px;"></center>
                @endif
                {{-- <center>Khatabook</center> --}}
            </a>

            <!-- Sidebar -->
            <div class="sidebar">
                <!-- Sidebar Menu -->
                <?php if (session()->get('role') == 0) { ?>
                    <nav class="mt-2">
                        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                            <!-- Add icons to the links using the .nav-icon class
                     with font-awesome or any other icon font library -->
                            <li class="nav-item">
                                <a href="{{route('admin.dashboard')}}" class="nav-link <?php if (in_array(request()->route()->getName(), array('admin.dashboard'))) {
                                                                                            echo "active";
                                                                                        } ?>"><i class="nav-icon fas fa-tachometer-alt"></i>
                                    <p>Dashboard</p>
                                </a>
                            </li>
                            <li class="nav-item ">
                                <a href="{{route('setting.setting')}}" class="nav-link <?php if (in_array(request()->route()->getName(), array('setting.setting'))) {
                                                                                            echo "active";
                                                                                        } ?>">
                                    <i class="fa fa-cog"></i>
                                    <p>General Settings</p>
                                </a>
                            </li>
                            <li class="nav-item ">
                                <a href="{{route('admin.userlist')}}" class="nav-link <?php if (in_array(request()->route()->getName(), array('admin.userlist', 'admin.add_user', 'admin.edit_user'))) {
                                                                                            echo "active";
                                                                                        } ?>">
                                    <i class="fas fa-user"></i>
                                    <p>User Mangement</p>
                                </a>
                            </li>
                            <li class="nav-item ">
                                <a href="{{route('bank.bank_details')}}" class="nav-link <?php if (in_array(request()->route()->getName(), array('bank.bank_details'))) {
                                                                                            echo "active";
                                                                                        } ?>">
                                  <i class="fa fa-address-card"></i>
                                    <p>Bank Details</p>
                                </a>
                            </li>
                            <li class="nav-item ">
                                <a href="{{route('bank.bank_transaction')}}" class="nav-link <?php if (in_array(request()->route()->getName(), array('bank.bank_transaction'))) {
                                                                                            echo "active";
                                                                                        } ?>">
                                    <i class="fa fa-file"></i>
                                    <p>Bank Transaction</p>
                                </a>
                            </li>
                            <li class="nav-item ">
                           
                                {{-- <?php @$month=  Carbon\Carbon::now()->format('m'); ?> --}}
                                <a href="{{route('expenses.expenses')}}" class="nav-link <?php if (in_array(request()->route()->getName(), array('expenses.expenses','expenses.expenses_list','expenses.add_expenses'))) {
                                                                                            echo "active";
                                                                                        } ?>">
                                   <i class="fa fa-align-justify"></i>
                                    <p>Expenses</p>
                                </a>
                            </li>
                            <!-- <li class="nav-item ">
                                <a href="{{route('expenses.assetslist')}}" class="nav-link <?php if (in_array(request()->route()->getName(), array('expenses.assetslist','expenses.edit_assets'))) {
                                                                                            echo "active";
                                                                                        } ?>">
                                   <i class="fa fa-align-justify"></i>
                                    <p>Assets</p>
                                </a>
                            </li>  -->
                           <li class="nav-item ">
                                <a href="{{route('udhar.udhar_list')}}" class="nav-link <?php if (in_array(request()->route()->getName(), array('udhar.udhar_list','udhar.edit_udhar'))) {
                                                                                            echo "active";
                                                                                        } ?>">
                                   <i class="fa fa-align-justify"></i>
                                    <p>Udhar-list</p>
                                </a>
                            </li> 
                            <li class="nav-item ">
                                <a href="{{route('password.password_list')}}" class="nav-link <?php if (in_array(request()->route()->getName(), array('password.password_list'))) {
                                                                                            echo "active";
                                                                                        } ?>">
                                   <i class="fa fa-align-justify"></i>
                                    <p>Password</p>
                                </a>
                            </li>
                            <!-- <li class="nav-item ">
                                <a href="{{route('setting.achievement_list')}}" class="nav-link <?php if (in_array(request()->route()->getName(), array('setting.achievement_list'))) {
                                                                                            echo "active";
                                                                                        } ?>">
                                 <i class="fa fa-align-justify"></i>
                                    <p>Achievement</p>
                                </a>
                            </li> -->
                            <li class="nav-item ">
                                <a href="{{route('note.note_list')}}" class="nav-link <?php if (in_array(request()->route()->getName(), array('note.note_list'))) {
                                                                                            echo "active";
                                                                                        } ?>">
                                 <i class="fa fa-align-justify"></i>
                                    <p>Notes</p>
                                </a>
                            </li>
                            <li class="nav-item ">
                                <a href="{{route('setting.birthday_list')}}" class="nav-link <?php if (in_array(request()->route()->getName(), array('setting.birthday_list'))) {
                                                                                            echo "active";
                                                                                        } ?>">
                                 <i class="fa fa-align-justify"></i>
                                    <p>Bithday</p>
                                </a>
                            </li>
                            <li class="nav-item ">
                                <a href="{{route('adhar.Adhar')}}" class="nav-link <?php if (in_array(request()->route()->getName(), array('adhar.Adhar'))) {
                                                                                            echo "active";
                                                                                        } ?>">
                                 <i class="fa fa-align-justify"></i>
                                    <p>Adhar</p>
                                </a>
                            </li>
                        </ul>
                    </nav>
                <?php  } else {  ?>
                    <nav class="mt-2">
                        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                            <!-- Add icons to the links using the .nav-icon class
                     with font-awesome or any other icon font library -->
                            <li class="nav-item">
                                <a href="{{route('admin.dashboard')}}" class="nav-link <?php if (in_array(request()->route()->getName(), array('admin.dashboard'))) {
                                                                                            echo "active";
                                                                                        } ?>"><i class="nav-icon fas fa-tachometer-alt"></i>
                                    <p>Dashboard</p>
                                </a>
                            </li>

                        </ul>
                    </nav>
                <?php  } ?>
                <!-- /.sidebar-menu -->
            </div>
            <!-- /.sidebar -->
        </aside>
        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            @yield('content')
        </div>
        <!-- /.content-wrapper -->
        <footer class="main-footer"><?php $store_name = getStoreSettings('store_name'); ?>
            <strong>Copyright &copy; 2021 <a href="">{{$store_name}}</a>.</strong>
            All rights reserved.
            <div class="float-right d-none d-sm-inline-block">
                <!-- <b>Version</b> 3.1.0 -->
            </div>
        </footer>

        <!-- Control Sidebar -->
        <aside class="control-sidebar control-sidebar-dark">
            <!-- Control sidebar content goes here -->
        </aside>
        <!-- /.control-sidebar -->
    </div>
    <!-- ./wrapper -->

    <!-- Summernote -->
    
    <script src="{{asset('public/assets/plugins/summernote/summernote-bs4.min.js')}}"></script>
    <!-- jQuery UI 1.11.4 -->

    <script src="{{asset('public/assets/plugins/jquery-ui/jquery-ui2.js')}}"></script>
    <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
    <!-- <script>
        $.widget.bridge('uibutton', $.ui.button)
    </script> -->
    <!-- Bootstrap 4 -->
    <script src="{{asset('public/assets/plugins/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
    <!-- ChartJS -->
    <script src="{{asset('public/assets/plugins/chart.js/Chart.min.js')}}"></script>

  
    <!-- jQuery Knob Chart -->
    <script src="{{asset('public/assets/plugins/jquery-knob/jquery.knob.min.js')}}"></script>
    <!-- daterangepicker -->
    <script src="{{asset('public/assets/plugins/moment/moment.min.js')}}"></script>

    <script src="{{asset('public/assets/plugins/daterangepicker/daterangepicker.js')}}"></script>
  

    <!-- overlayScrollbars -->
    <script src="{{asset('public/assets/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js')}}"></script>
    <!-- AdminLTE App -->
    <script src="{{asset('public/assets/dist/js/adminlte.js')}}"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="{{asset('public/assets/dist/js/demo.js')}}"></script>
    <script src="{{asset('public/assets/js/jquery.validate.js')}}"></script>
    <script src="{{asset('public/assets/plugins/datatables/jquery.dataTables.min.js')}}"></script>

    <script src="{{asset('public/assets/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js')}}"></script>
    <?php /* ?>
    <script src="{{asset('public/assets/plugins/datatables-buttons/js/buttons.bootstrap4.min.js')}}"></script>
    <script src="{{asset('public/assets/plugins/datatables-buttons/js/dataTables.buttons.min.js')}}"></script>
       <script src="{{asset('public/assets/js/buttons.html5.min.js')}}"></script>
    <script src="{{asset('public/assets/js/buttons.print.min.js')}}"></script>
      <!-- Tempusdominus Bootstrap 4 -->
    <script src="{{asset('public/assets/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js')}}"></script>
        <script src="{{asset('public/assets/js/dataTables.dateTime.min.js')}}"></script>
            <!-- Sparkline -->
    <script src="{{asset('public/assets/plugins/sparklines/sparkline.js')}}"></script>
      <!-- JQVMap -->
    <script src="{{asset('public/assets/plugins/jqvmap/jquery.vmap.min.js')}}"></script>
    <script src="{{asset('public/assets/plugins/jqvmap/maps/jquery.vmap.usa.js')}}"></script>
    <?php */ ?>
    <script src="{{asset('public/assets/plugins/jszip/jszip.js')}}"></script>
    <script src="{{asset('public/assets/plugins/pdfmake/pdfmake.min.js')}}"></script>
    <script src="{{asset('public/assets/plugins/pdfmake/vfs_fonts.js')}}"></script>
 
    <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
    <script src="{{asset('public/assets/dist/js/pages/dashboard.js')}}"></script>

    <script src="{{asset('public/assets/plugins/select2/js/select2.full.min.js')}}"></script>

    <script src="{{asset('public/assets/js/custom.js')}}"></script>
            <!-- form validation -->
    <link  href="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.2/jquery.validate.min.js">

    <script type="text/javascript">
        $(function() {
              $('[data-toggle2="tooltip"]').tooltip()

            //Initialize Select2 Elements
            $('.select2').select2()

                $(".js-example-responsive").select2({
                    width: 'resolve' // need to override the changed default
                });
            $('#summernote').summernote({
                airMode: false,
                  height: 300,     
            });

            $("input[data-bootstrap-switch]").each(function() {
                $(this).bootstrapSwitch('state', $(this).prop('checked'));
            });

        });

        $(function () {
            $('[data-toggle="tooltip"]').tooltip()
        })
        
    </script>

        {{-- chart  --}}

</body>

</html>