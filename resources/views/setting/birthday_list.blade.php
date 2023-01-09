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
                        <h3 class="card-title">Birthday list</h3>
                        <div class="card-tools">
                            <div class="input-group input-group-sm" style="width: 150px;">
                                    <button type="button" value="" id="" class="btn btn-success" data-toggle2="tooltip"  data-toggle="modal" data-target="#modal-M" data-placement="top" title="Add New"><i class="fas fa-plus"> Add Details</i></button>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-striped table-bordered dt-responsive nowrap data-table dataTable display compact" cellspacing="0" width="100%">
                                <thead align="center">
                                    <tr>
                                        <th style="width: 10px">Sn.</th>
                                        <th>Age</th>
                                        <th>Date</th>
                                        <th>Name</th>

                                    </tr>
                                </thead>
                                <tbody align="center">
                                    @php($i=0)
                                    @foreach($data as $birthday_list)
                                    <?php
                                        @$date_of_birth = Carbon\Carbon::parse(@$birthday_list['date'])->format('Y-m-d');
                                        @$date = Carbon\Carbon::parse(@$birthday_list['date'])->format('m-d');
                                        @$today = Carbon\Carbon::now()->format('m-d');
                                        @$aftertoday = Carbon\Carbon::now()->addDays(1)->format('m-d');
                                        $age = Carbon\Carbon::parse($date_of_birth)->diff(\Carbon\Carbon::now())->format('%y years, %m months and %d days');
                                    ?>
                                    @php($i++)
                                        <tr>
                                            <?php if(@$date == $aftertoday){ ?>
                                                <td class="bg-danger">{{ $i }}</td>
                                                <td class="bg-danger">{{ @$age }}</td>
                                                <td class="bg-danger">{{ Carbon\Carbon::parse(@$birthday_list['date'])->format('l jS \of F Y ') }}</td>
                                                <td class="bg-danger">{{ @$birthday_list['name'] }}</td>
                                            <?php }else{ ?>
                                                <td>{{ $i }}</td>
                                                <td>{{ @$age }}</td>
                                                <td>{{ Carbon\Carbon::parse(@$birthday_list['date'])->format('l jS \of F Y ') }}</td>
                                                <td>{{ @$birthday_list['name'] }}</td>
                                            <?php }  ?>
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
                    <h4 class="modal-title">ADD NEW Birthday </b></h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>

                @csrf
                <div class="modal-body">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="row">
                                    <div class="form-group col-md-12">
                                        <label for="bank_type">Bank</label>
                                        <input type="Date" name="date" id="date" class="form-control" placeholder="Enter Name" required>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="row">
                                    <div class="form-group author_name col-md-12">
                                        <label for="author_name">Name</label>
                                        <input type="text" name="name" id="name" class="form-control" placeholder="Enter Name" required>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer justify-content-between">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <span data-href="{{route('setting.store_birthday')}}" id="export" class="btn btn-primary" onclick="store_datails(event.target);">Submit</span>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
    </div>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script>
    $(document).ready(function(){
      <?php if(@$date == @$aftertoday){ ?>
                 jQuery('.notification').toggle('show');
              
        <?php } ?>

    });
    function store_datails(_this) {
            var date = document.getElementById('date').value;
            var name = document.getElementById('name').value;
            let _url = $(_this).data('href') + "?date=" + date + "&name=" + name;
            window.location.href = _url;
        }
</script>
 </section>

 @stop