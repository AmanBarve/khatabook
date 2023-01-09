<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Forget Password</title>

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
                <p class="login-box-msg"><b>Forget Password</b></p>
                <p>Hello there, here you can rest you password</p>
                <form action="{{route('admin.sendForgetPasswordMail')}}" method="post">
                    @csrf
                    
                    @if($errors->any())
                    <div class="alert alert-danger">
                        <ul>
                            @foreach($errors->all() as $error)
                            <li>{{$error}}</li>
                            @endforeach
                        </ul>  
                    </div>
                    @endif
                    @if(session()->has('msg'))
                        <div class="alert alert-success">
                            {{ session()->get('msg') }}
                        </div>
                    @endif
                    <div class="input-group mb-3">
                        <input type="email" class="form-control" placeholder="Enter Email ID here" name="email" required>
                        <div class="input-group-append">
                            <div class="input-group-text">
                                <span class="fas fa-envelope"></span>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <button type="submit" class="btn btn-primary btn-block">Send Reset Password Mail</button>
                        </div>
                    </div>
                    <div>
                        {{session('error')}}
                    </div>
                </form>
            </div>
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