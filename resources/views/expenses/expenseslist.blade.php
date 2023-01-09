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
                        <h3 class="card-title">Month Expenses list</h3>
                        <div class="card-tools">
                            <div class="input-group input-group-sm" style="width: 150px;">
                                <button type="button" class="btn btn-block btn-warning">
                                    <a href="{{ route('expenses.add_expenses') }}">Add New</a>
                                </button>
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
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="date">Search  By Date</label>
                                    <input type="date" id="min"  value="{{ $selected_id['min'] }}" class="form-control min datepicker hasDatepicker">
                                </div>
                            </div>
                            <div class="button1 col-md-1">
                                <span data-href="{{route('expenses.expenses')}}" id="export" class="btn btn-secondary" onclick="filter(event.target);">Filter</span>
                            </div>
                            <div class="button1 col-md-1">
                                <a href="{{route('expenses.expenses')}}"  class="btn btn-secondary">Clear</a>
                            </div>
                            <div class="col-md-2">
                                <label for="date">Cash Amount</label>
                                <input type="text"  value="{{ number_format(@$Cash_balance = getStoreSettings('Cash_balance') ,2)}}" class="form-control" readonly>
                            </div>
                            <div class="col-md-2">
                                <label for="date">BOI Amount</label>
                                <input type="text"  value="{{ number_format(@$BOI_balance = getStoreSettings('BOI_balance') ,2)}}" class="form-control" readonly>
                            </div>
                            <div class=" col-md-2">
                                <label for="date">KOTAK Amount</label>
                                <input type="text"  value="{{ number_format(@$KOTAK_balance = getStoreSettings('KOTAK_balance') ,2)}}" class="form-control" readonly>
                            </div>
                        </div>
                        <div class="table-responsive">
                            <table class="table table-striped table-bordered dt-responsive nowrap data-table dataTable display compact" cellspacing="0" width="100%">
                                <thead align="center">
                                    <tr>
                                        <th style="width: 10px">Sn.</th>
                                        <th>Date</th>
                                        <th>Today-Expenses</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody align="center">
                                    @php($i=0)
                                    @foreach($data as $data_total )
                                    @php($i++)
                                        <tr>
                                            <td>{{ $i }}</td>
                                            <td>{{ Carbon\Carbon::parse(@$data_total['created_at'])->format('l jS \of F Y ') }}</td>
                                            <?php if(@$data_total['total_amount'] > 200){ ?>
                                            <td class="bg-danger">{{ number_format(@$data_total['total_amount'] ,2) }}</td>
                                            <?php }else{?>
                                            <td >{{ number_format(@$data_total['total_amount'] ,2) }}</td>
                                            <?php } ?>
                                            {{-- <td>{{ number_format(@$data_total['total_amount'] ,2) }}</td> --}}
                                            <td>
                                                <?php @$created_at= Carbon\Carbon::parse(@$data_total['created_at'])->format('Y-m-d')?>
                                                <a href="{{ route('expenses_list',$created_at)}}"><span class="badge bg-primary">View</span></a>
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
            {{-- <div class="col-md-4">
                 <div class="card card-secondary">
                    <div class="card-header">
                        <div class="box d-flex justify-content-between flex-column flex-lg-row" >
                            <div class="left">Cash-Balance</div>
                            <div class="right"><i class="fas fa-rupee-sign"></i> {{ number_format(@$Cash_balance = getStoreSettings('Cash_balance') ,2)}}</div>
                        </div><hr>
                        <div class="box d-flex justify-content-between flex-column flex-lg-row" >
                            <div class="left">BOI-Account-Balance</div>
                            <div class="right"> <i class="fas fa-rupee-sign"></i> {{ number_format(@$BOI_balance = getStoreSettings('BOI_balance') ,2)}}</div>
                        </div><hr>
                        <div class="box d-flex justify-content-between flex-column flex-lg-row" >
                            <div class="left">KOTAK-Account-Balance</div>
                            <div class="right"><i class="fas fa-rupee-sign"></i> {{ number_format(@$KOTAK_balance = getStoreSettings('KOTAK_balance') ,2)}}</div>
                        </div>
                    </div>
                </div>
                
            </div> --}}
        </div>
    </div>
    <script>
         function filter(_this) {
            var min = document.getElementById('min').value;
            // var month1 = document.getElementById('month').value;
            // var month = document.getElementById('month').value;
            // var DateObj = new Date(month);
            // var months = DateObj.getMonth() + 1;
            // alert(months);
            let _url = $(_this).data('href') + "?min=" + min ;
            window.location.href = _url;
         }
    </script>
</section>
@stop
