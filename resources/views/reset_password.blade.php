<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title> Reset Password</title>

    <!-- Google Font: Source Sans Pro -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="{{asset('public/assets/plugins/fontawesome-free/css/all.min.css')}}">
    <!-- icheck bootstrap -->
    <link rel="stylesheet" href="{{asset('public/assets/plugins/icheck-bootstrap/icheck-bootstrap.min.css')}}">
    <!-- Theme style -->
    <link rel="stylesheet" href="{{asset('public/assets/dist/css/adminlte.min.css')}}">
</head>

<body class="hold-transition login-page">
    <div class="login-box">
        <div class="card card-secondary">
            <div class="card-body login-card-body">
                @if ($logo_image = getStoreSettings('logo_image'))
                <center><img class="logo responsive img-fluid" src="{{URL::to('/')}}/storage/app/public/{{($logo_image)}}" width="70" height="50"></center>
                @else
                <center><img class="logo responsive img-fluid" src="{{URL::to('/')}}/public/images/users/user.jpg" width="30" height="30"></center>
                @endif
                <hr>
                <p class="login-box-msg"><b>Reset Password</b></p>
                <form action="{{route('admin.adminResetPassword')}}" method="Post">
                    @csrf
                    @if(session()->has('msg'))
                        <div class="alert alert-success">
                            {{ session()->get('msg') }}
                        </div>
                    @endif
                    <div class="input-group mb-3">
                        <input type="name" class="form-control" readonly value="{{$name}}" name="name" required>
                        <div class="input-group-append">
                            <div class="input-group-text">
                                <span class="fas fa-envelope"></span>
                            </div>
                        </div>
                    </div>
                       <p class="login-box-msg"><b>Enter Your New Password</b></p>
                    <div class="input-group mb-3">
                        <input type="password" class="form-control" placeholder="password" name="password" required>
                        <div class="input-group-append">
                            <div class="input-group-text">
                                <i class="fa fa-key" aria-hidden="true"></i>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-12">
                            <button type="submit" class="btn btn-primary btn-block">Reset Password</button>
                        </div>
                    </div>
                    <div>
                        {{session('error')}}
                    </div>

                </form>
            </div>
            <!-- /.login-card-body -->
        </div>
    </div>
    <!-- /.login-box -->

    <!-- jQuery -->
    <script src="{{asset('public/assets/plugins/jquery/jquery.min.js')}}"></script>
    <!-- Bootstrap 4 -->
    <script src="{{asset('public/assets/plugins/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
    <!-- AdminLTE App -->
    <script src="{{asset('public/assets/dist/js/adminlte.min.js')}}"></script>
</body>

</html>