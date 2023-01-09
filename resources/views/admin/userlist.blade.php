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
             <div class="col-md-12">
                 <div class="card card-secondary">
                     <div class="card-header">
                         <h3 class="card-title">Userlist</h3>
                         <div class="card-tools">
                             <div class="input-group input-group-sm" style="width: 150px;">
                                 <button type="button" class="btn btn-block btn-warning">
                                     <a href="add_user">Add New User</a>
                                 </button>
                             </div>
                         </div>
                     </div>
                     <!-- /.card-header -->
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
                                         <th>No</th>
                                         <th>Name</th>
                                         <th>Email</th>
                                         <th width="100px">Action</th>
                                     </tr>
                                 </thead>
                                 <tbody align="center">
                                 </tbody>
                             </table>
                         </div>
                         </div>

                         <?php
                            $rurl = route('admin.userlist');
                            $columns = "{data: null, name: 'user_id'},
                                        {data: 'name', name: 'name'},
                                        {data: 'email', name: 'email'},
                                        {data: 'action', name: 'action', orderable: true, searchable: true}";
                            echo setDataTable($rurl, $columns);
                            ?>
                     </div>
                 </div>
             </div>
         </div><!-- /.container-fluid -->
 </section>

 @stop