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
                        <h3 class="card-title">Notes list</h3>
                        <div class="card-tools">
                            <div class="input-group input-group-sm" style="width: 150px;">
                                <button type="button" value="" id="" class="btn btn-success" data-toggle2="tooltip"  data-toggle="modal" data-target="#modal-M" data-placement="top" title="Add New"><i class="fas fa-plus"> Add More</i></button>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-striped table-bordered dt-responsive nowrap data-table dataTable display compact" cellspacing="0" width="100%">
                                <thead align="center">
                                    <tr>
                                        <th style="width: 10px">Sn.</th>
                                        <th>Name</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody align="center">
                                    @php($i=0)
                                    @foreach($data as $note)
                                    @php($i++)
                                        <tr>
                                            <td>{{ $i }}</td>
                                            <td>{{ @$note['name'] }}</td>
                                            <td>
                                                {{-- {{ route('expenses.edit_assets',$note['id'])}} --}}
                                                <a href=""><span class="badge bg-primary">View</span></a>
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
    </div>
    <div class="modal fade" id="modal-M">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">ADD NEW Notes</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>

                @csrf
                <div class="modal-body">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="row">
                                    <div class="form-group author_name col-md-12">
                                        <label for="name">Name</label>
                                        <input type="text" name="name" id="name" class="form-control" placeholder="Enter Subject Name" required>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer justify-content-between">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <span data-href="{{route('setting.store_achievement')}}" id="export" class="btn btn-primary" onclick="store_datails(event.target);">Submit</span>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
    </div>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script>
    function store_datails(_this) {
            var date = document.getElementById('date').value;
            var name = document.getElementById('name').value;
            let _url = $(_this).data('href') + "?date=" + date + "&name=" + name;
            window.location.href = _url;
        }
</script>
 </section>

 @stop