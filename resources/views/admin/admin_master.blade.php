<!doctype html>
<html lang="en">

<head>

    <meta charset="utf-8" />
    <title>Dashboard | Upcube - Admin & Dashboard Template</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="Premium Multipurpose Admin & Dashboard Template" name="description" />
    <meta content="Themesdesign" name="author" />
    <!-- App favicon -->
    <link rel="shortcut icon" href=" {{ asset('images/favicon.ico') }}">

    <!-- jquery.vectormap css -->
    <link href=" {{ asset('libs/admin-resources/jquery.vectormap/jquery-jvectormap-1.2.2.css') }} " rel="stylesheet"
        type="text/css" />

    <!-- DataTables -->
    <link href="{{ asset('libs/datatables.net-bs4/css/dataTables.bootstrap4.min.css') }}  " rel="stylesheet"
        type="text/css" />

    <!-- Responsive datatable examples -->
    <link href=" {{ asset('libs/datatables.net-responsive-bs4/css/responsive.bootstrap4.min.css') }} " rel="stylesheet"
        type="text/css" />

    <!-- Bootstrap Css -->
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/bootstrap.tagsinput/0.8.0/bootstrap-tagsinput.css" >

    <link href="{{ asset('css/bootstrap.min.css') }}" id="bootstrap-style" rel="stylesheet" type="text/css" />
    <!-- Icons Css -->
    <link href=" {{ asset('css/icons.min.css') }}" rel="stylesheet" type="text/css" />
    <!-- App Css-->
    <link href="{{ asset('css/app.min.css') }} " id="app-style" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="{{ asset('css/toastr.css') }}">
</head>

<body data-topbar="dark">

    <!-- <body data-layout="horizontal" data-topbar="dark"> -->

    <!-- Begin page -->
    <div id="layout-wrapper">

        @include('admin.body.header')


        <!-- ========== Left Sidebar Start ========== -->
        @include('admin.body.sidebar')
        <!-- Left Sidebar End -->



        <!-- ============================================================== -->
        <!-- Start right Content here -->
        <!-- ============================================================== -->
        <div class="main-content">

            @yield('admin')
            <!-- End Page-content -->

            @include('admin.body.footer')

        </div>
        <!-- end main content-->

    </div>
    <!-- END layout-wrapper -->

    <!-- Right Sidebar -->


    <!-- /Right-bar -->

    <!-- Right bar overlay-->
    <div class="rightbar-overlay"></div>

    <!-- JAVASCRIPT -->
    <script src="{{ asset('libs/jquery/jquery.min.js') }} "></script>
    <script src="{{ asset('libs/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
    <script src="{{ asset('libs/metismenu/metisMenu.min.js') }}"></script>
    <script src="{{ asset('libs/simplebar/simplebar.min.js') }}"></script>
    <script src="{{ asset('libs/node-waves/waves.min.js') }}"></script>


    <!-- apexcharts -->
    <script src="{{ asset('libs/apexcharts/apexcharts.min.js') }}"></script>

    <!-- jquery.vectormap map -->
    <script src="{{ asset('libs/admin-resources/jquery.vectormap/jquery-jvectormap-1.2.2.min.js') }}"></script>
    <script src="{{ asset('libs/admin-resources/jquery.vectormap/maps/jquery-jvectormap-us-merc-en.js') }}"></script>

    <!-- Required datatable js -->
    <script src="{{ asset('libs/datatables.net/js/jquery.dataTables.min.js') }}"></script>
    <script src="{{ asset('libs/datatables.net-bs4/js/dataTables.bootstrap4.min.js') }}"></script>

    <!-- Responsive examples -->
    <script src="{{ asset('libs/datatables.net-responsive/js/dataTables.responsive.min.js') }}"></script>
    <script src="{{ asset('libs/datatables.net-responsive-bs4/js/responsive.bootstrap4.min.js') }} "></script>

    <script src="{{ asset('js/pages/dashboard.init.js') }}"></script>

    <!-- App js -->
    <script src="{{ asset('js/app.js') }}"></script>
    <script src="{{ asset('js/toastr.min.js') }}"></script>


    <script>
        @include('_partials.alert_toastr')
    </script>
    <!--tinymce js-->
    <script src="{{ asset('libs/tinymce/tinymce.min.js') }}"></script>
    <!-- init js -->
    <script src="{{ asset('assets/js/pages/form-editor.init.js') }}"></script>
    <!-- Required datatable js -->
    <script src=" {{asset('assets/libs/datatables.net/js/jquery.dataTables.min.js')}}"></script>
    <script src=" {{asset('assets/libs/datatables.net-bs4/js/dataTables.bootstrap4.min.js')}} "></script>
    <!-- Datatable init js -->
    <script src=" {{asset('assets/js/pages/datatables.init.js')}} "></script>


        <!-- swetalert -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
    <script src="{{ asset('assets/js/code.js') }}"></script>
    <script src="{{ asset('assets/js/validate.min.js') }}"></script>


    <!-- boostrap tags -->
    <script src="https://cdn.jsdelivr.net/bootstrap.tagsinput/0.8.0/bootstrap-tagsinput.min.js" ></script>
</body>

</html>
