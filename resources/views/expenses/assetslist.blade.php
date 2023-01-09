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
                        <h3 class="card-title">Assets list</h3>
                        <div class="card-tools">
                            <div class="input-group input-group-sm" style="width: 150px;">
                                <button type="button" value="" id="" class="btn btn-success" data-toggle2="tooltip"  data-toggle="modal" data-target="#modal-M" data-placement="top" title="Add New"><i class="fas fa-plus"> Add Details</i></button>
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
                                        <th>Date</th>
                                        <th>Assets-Name</th>
                                        <th>Holder-Name</th>
                                        <th>Amount</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody align="center">
                                    <?php @$assets_type = assets_type(); ?>
                                    @php($i=0)
                                    @foreach($data as $assets )
                                    @php($i++)
                                      <?php @$assets_id = @$assets['assets_type'] ?>
                                        <tr>
                                            <td>{{ $i }}</td>
                                            <td>{{ Carbon\Carbon::parse(@$assets['date'])->format('l jS \of F Y ') }}</td>
                                            <td>{{ @$assets_type[$assets_id]['name'] }}</td>
                                            <td>{{ @$assets['name'] }}</td>
                                            <td>{{ number_format(@$assets['amount'] ,2) }}</td>
                                            <td>
                                                <a href="{{ route('expenses.edit_assets',$assets['id'])}}"><span class="badge bg-primary">edit</span></a>
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
            <div class="col-md-3">
                 <div class="card card-secondary">
                    <div class="card-header">
                        <div class="box d-flex justify-content-between flex-column flex-lg-row" >
                            <div class="left">KOTAK-Balance</div>
                            <div class="right"><i class="fas fa-rupee-sign"></i> {{ number_format(@$KOTAK_balance = getStoreSettings('KOTAK_balance') ,2)}}</div>
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
                    <h4 class="modal-title">NEW Assets</h4>
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
                                            <label for="assets_type">Assets</label>
                                            <select name="assets_type" id="assets_type" class="js-example-responsive select2" style="width: 100%" required>
                                                <option value="0">Select Assets</option>
                                                <option value="1">FD</option>
                                                <option value="2">Account-balance</option>
                                                <option value="3">Udhar</option>
                                                <option value="4">accessories</option>
                                                <option value="5">SIP</option>
                                                <option value="6">Stock</option>
                                            </select>
                                        </div>
                                    </div>
                            </div>
                            <div class="col-md-6">
                                <div class="row">
                                    <div class="form-group col-md-12">
                                        <label for="date">Date</label>
                                        <input type="date" name="date" id="date" class="form-control" placeholder="Enter Price" required>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="payment_method">Holder-name</label>
                                <input type="text" name="name" id="name" class="form-control" placeholder="Enter Price" required>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="amount">Amount</label>
                                <input type="number" name="amount" id="amount" class="form-control" placeholder="Enter Price" required>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer justify-content-between">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <span data-href="{{ route('expenses.assets_datails') }}" id="export" class="btn btn-primary" onclick="assets_datails(event.target);">Submit</span>
                </div>
            </div>
        </div>
    </div>
<script>
    function assets_datails(_this) {
            var assets_type = document.getElementById('assets_type').value;
            var name = document.getElementById('name').value;
            var amount = document.getElementById('amount').value;
            var date = document.getElementById('date').value;
            let _url = $(_this).data('href') + "?assets_type=" + assets_type + "&name=" + name + "&amount=" + amount + "&date=" + date;
            window.location.href = _url;
    }
</script>
</section>
@stop