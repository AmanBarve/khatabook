 <!-- for user view -->
 @extends('layout.dashboard')
 @section('content')
 <div class="content-header">
     <div class="container-fluid">
         <div class="row mb-12">

         </div>
     </div>
 </div>

<section class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-9">
                <div class="card card-secondary">
                    <div class="card-header">
                        <h3 class="card-title">Password list</h3>
                        <div class="card-tools">
                            <div class="input-group input-group-sm" style="width: 150px;">
                                <button type="button" value="" id="" class="btn btn-success" data-toggle2="tooltip"  data-toggle="modal" data-target="#modal-M" data-placement="top" title="Add New"><i class="fas fa-plus"> Add NEW</i></button>
                            </div>
                        </div>
                    </div>
                    {{-- Success msg--}}
                    @if (session('alert'))
                        <div class="alert alert-success">
                            {{ session('alert') }}
                        </div>
                    @endif
                    {{-- Error msg--}}
                    @if ($errors->any())
                    <div class="alert alert-danger">
                        <ul>
                            @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                    @endif
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-striped table-bordered dt-responsive nowrap data-table dataTable display compact" cellspacing="0" width="100%">
                                <thead align="center">
                                    <tr>
                                        <th style="width: 10px">Sn.</th>
                                        <th>App Name</th>
                                        <th>User Name</th>
                                        <th>Password</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody align="center">

                                    @php($i=0)
                                    @foreach($data as $password )
                                    @php($i++)
                                        <tr>
                                            <?php 
                                                @$id = $password['id'];
                                                @$App_type = $password['App_type'];
                                                @$App_name = $password['App_name'];
                                                @$password = $password['password'];
                                            ?>
                                            <td>{{ $i }}</td>
                                            <td>{{ @$App_type}}</td>
                                            <td>{{ @$App_name }}</td>
                                            <td>{{ @$password }}</td>
                                            <td>
                                                <button type="button" value="{{$id}}~{{$App_type}}~{{$App_name}}~{{$password}}" id="update_details" class="btn btn-warning" data-toggle2="tooltip"  data-toggle="modal" data-target="#modal-E" data-placement="top" title="Update details"><i class="fas fa-edit"></i></button>
                                                {{-- {{ route('expenses.edit_assets',$assets['id'])}} --}}
                                                {{-- <a href=""><span class="badge bg-primary">edit</span></a> --}}
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="d-flex justify-content-center">
                        {!! $data->appends($_GET)->links() !!}
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="modal-M">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">NEW</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                @csrf
                <div class="modal-body">
                    <div class="card-body">
                        <div class="row">
                            <div class="form-group col-md-4">
                                <label for="App_type">App name</label>
                                <input type="text" name="App_type" id="app_type" class="form-control" placeholder="App type" required>
                            </div>
                            <div class="form-group col-md-4">
                                <label for="App_name">User name</label>
                                <input type="text" name="App_name" id="app_name" class="form-control" placeholder="App name" required>
                            </div>
                            <div class="form-group col-md-4">
                                <label for="password">Password</label>
                                <input type="password" name="password" id="app_password" class="form-control" placeholder="Enter password" required>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer justify-content-between">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <span data-href="{{ route('password.app_datails') }}" id="export" class="btn btn-primary" onclick="app_datails(event.target);">Submit</span>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="modal-E">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">App Details</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>

                <div class="modal-body">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="row">
                                    <div class="form-group">
                                        <label for="type">App name</label>
                                        <input type="text"  id="type" value="" class="form-control" placeholder="">
                                        <input type="hidden" id="id" value="" class="form-control" placeholder="">
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="row">
                                    <div class="form-group ">
                                        <label for="type">User Name</label>
                                        <input type="text" id="user" value="" class="form-control" placeholder="">
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="row">
                                    <div class="form-group ">
                                        <label for="type">Password</label>
                                        <input type="password" id="pass" value="" class="form-control" placeholder="">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer justify-content-between">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <span data-href="{{route('password.update_datails')}}" id="export" class="btn btn-primary" onclick="updatedatails(event.target);">Update</span>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
    </div>
<script>
    function app_datails(_this) {
            var app_type = document.getElementById('app_type').value;
            var app_name = document.getElementById('app_name').value;
            var app_pass = document.getElementById('app_password').value;
            console.log(app_type,app_name,app_pass);
            let _url = $(_this).data('href') + "?app_type=" + app_type + "&app_name=" + app_name + "&app_pass=" + app_pass ;
            window.location.href = _url;
    }

    function updatedatails(_this) {
            var id = document.getElementById('id').value;
            var App_name = document.getElementById('user').value;
            var App_type = document.getElementById('type').value;
            var password = document.getElementById('pass').value;
            let _url = $(_this).data('href') + "?App_name=" + App_name + "&id=" + id + "&App_type=" + App_type + "&password=" + password ;
            window.location.href = _url;
    }

    $(document).ready(function() {
        $('button').click(function() {
            var update_details = $(this).prop("value");
            $iparr = update_details.split("~");
            console.log($iparr);
            $('#id').val($iparr[0]);
            $('#type').val($iparr[1]);
            $('#user').val($iparr[2]);
            $('#pass').val($iparr[3]);
        });
    });

</script>
</section>
@stop