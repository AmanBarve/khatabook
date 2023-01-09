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
                         <h3 class="card-title">Aadhaar </h3>
                     </div>
                     @if ($errors->any())
                     <div class="alert alert-danger">
                         <ul>
                             @foreach ($errors->all() as $error)
                             <li>{{ $error }}</li>
                             @endforeach
                         </ul>
                     </div>
                     @endif
                     <form action="{{route('adhar.store')}}" method="post" enctype="multipart/form-data">
                         @csrf
                            <div class="card-body">
                                <div class="card card-info">
                                    <div class="card-header">
                                        <h3 class="card-title">Adhar</h3>
                                    </div>
                                    <div class="card-body">
                                            <div class="row">
                                                <div class="form-group col-md-12">
                                                      <div class="mb-3 ">
                                                            <label for="formFile" class="form-label ">Choose file</label>
                                                            <input class="form-control" type="file" name="file"  id="formFile">
                                                        </div>
                                                    <div class="input-group">
                                                        <!-- <div class="custom-file">
                                                            <input type="file" name="file" class="custom-file-input">
                                                            <label class="custom-file-label" for="file">Choose file</label>
                                                        </div> -->
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="table-responsive">
                                                <table class="table table-striped table-bordered dt-responsive nowrap data-table dataTable display compact" cellspacing="0" width="100%">
                                                    <thead align="center">
                                                        <tr>
                                                            <th style="width: 10px">Sn.</th>
                                                            <th>File Name</th>
                                                            <th>File Text</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody align="center">
                                                        @php($i=0)
                                                        @foreach($data as $aadhaar_data )
                                                        @php($i++)
                                                            <tr>
                                                                <td>{{ $i }}</td>
                                                                <td>{{ $aadhaar_data['orig_filename'] }}</td>
                                                                <td>{{ $aadhaar_data['content'] }}</td>
                                                            </tr>
                                                        @endforeach
                                                    </tbody>
                                                </table>
                                            </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card-footer">
                                <button type="submit" class="btn btn-primary">Update</button>
                            </div>
                     </form>
                      
                </div>
            </div>
        </div>
    </div>
 </section>


 @stop