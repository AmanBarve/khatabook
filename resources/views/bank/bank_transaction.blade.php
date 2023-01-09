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
                         <h3 class="card-title">Bank Details</h3>
                             <div class="card-tools">
                                <div class="input-group input-group-sm" style="width: 150px;">
                                     <button type="button" value="" id="" class="btn btn-success" data-toggle2="tooltip"  data-toggle="modal" data-target="#modal-M" data-placement="top" title="Add Details"><i class="fas fa-plus"> Add Details</i></button>
                                    {{-- <button type="button" class="btn btn-block btn-success">
                                        <a href="{{ route('add_payment') }}">Add New</a>
                                    </button> --}}
                                </div>
                            </div>
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
                            {{-- BOI --}}
                    <div class="card-body">
                        <div class="row">
                            <div class="form-group col-md-6">
                                <div class="card card-primary card-outline">
                                    <div class="card-body box-profile">
                                        <h3 class="profile-username text-center">BOI</h3>
                                            <div class="card card-secondary">
                                                <div class="card-header">
                                                    <div class="box d-flex justify-content-between flex-column flex-lg-row" >
                                                        <div class="left">Total Account Balance</div>
                                                        <div class="right"><i class="fas fa-rupee-sign"></i> {{ number_format(@$BOI_balance = getStoreSettings('BOI_balance') ,2)}}</div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-8">
                                                    <div class="form-group">
                                                        <label for="date">Search  By Date</label>
                                                        <input type="date" id="dateboi"  value="{{ $selected_id['date'] }}" class="form-control date datepicker hasDatepicker">
                                                    </div>
                                                </div>
                                                <div class="button1 col-md-2">
                                                    <span data-href="{{ route('bank.bank_transaction') }}" id="export" class="btn btn-secondary" onclick="filter1(event.target);">Filter</span>
                                                </div>
                                                <div class="button1 col-md-2">
                                                    <a href="{{ route('bank.bank_transaction') }}"  class="btn btn-secondary">Clear</a>
                                                </div>
                                            </div>
                                        <div class="table-responsive">
                                            <table class="table table-striped table-bordered dt-responsive nowrap data-table dataTable display compact" cellspacing="0" width="100%">
                                                <thead align="center">
                                                    <tr>
                                                        <th>Date</th>
                                                        <th>Transaction</th>
                                                        <th>Name</th>
                                                        <th>Amount</th>
                                                    </tr>
                                                </thead>
                                                <tbody align="center">
                                                        <?php $payment_mode = payment_mode(); ?>
                                                    @foreach ($data['boi'] as $boi_transaction )
                                                        <?php @$pid = @$boi_transaction['payment_type']; ?>
                                                        <tr>
                                                            <td>{{ Carbon\Carbon::parse(@$boi_transaction['date'])->toFormattedDateString() }}</td>
                                                            <td>{{ @$payment_mode[$pid]['name'] }}</td>
                                                            <td class="ward-wrp">{{ $boi_transaction['author_name'] }}</td>
                                                            <td>{{ $boi_transaction['amount'] }}</td>
                                                        </tr> 
                                                        @endforeach
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <div class="d-flex justify-content-center">
                                        {!! $data['boi']->appends($_GET)->links() !!}
                                    </div>
                                </div>
                              
                            </div>


                            {{-- Kotak --}}
                            <div class="form-group col-md-6">
                                <div class="card card-primary card-outline">
                                    <div class="card-body box-profile">
                                        <h3 class="profile-username text-center">KOTAK</h3>
                                            <div class="card card-secondary">
                                                <div class="card-header">
                                                    <div class="box d-flex justify-content-between flex-column flex-lg-row" >
                                                        <div class="left">Total Account Balance</div>
                                                        <div class="right"><i class="fas fa-rupee-sign"></i> {{ number_format(@$KOTAK_balance = getStoreSettings('KOTAK_balance') ,2)}}</div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-8">
                                                    <div class="form-group">
                                                        <label for="date">Search  By Date</label>
                                                        <input type="date" id="date1"  value="{{ $selected_id['date1'] }}" class="form-control date datepicker hasDatepicker">
                                                    </div>
                                                </div>
                                                <div class="button1 col-md-2">
                                                    <span data-href="{{ route('bank.bank_transaction') }}" id="export" class="btn btn-secondary" onclick="filter1(event.target);">Filter</span>
                                                </div>
                                                <div class="button1 col-md-2">
                                                    <a href="{{ route('bank.bank_transaction') }}"  class="btn btn-secondary">Clear</a>
                                                </div>
                                            </div>
                                        <div class="table-responsive">
                                            <table class="table table-striped table-bordered dt-responsive nowrap data-table dataTable display compact" cellspacing="0" width="100%">
                                                <thead align="center">
                                                    <tr>
                                                        <th>Date</th>
                                                        <th>Transaction</th>
                                                        <th>Name</th>
                                                        <th>Amount</th>
                                                    </tr>
                                                </thead>
                                                <tbody align="center">
                                                      <?php $payment_mode = payment_mode(); ?>
                                                    @foreach ($data['kotak'] as $kotak_transaction )    
                                                        <?php @$pid = @$kotak_transaction['payment_type']; ?>
                                                        <tr>
                                                            <td>{{ Carbon\Carbon::parse(@$kotak_transaction['date'])->toFormattedDateString() }}</td>
                                                            <td>{{ @$payment_mode[$pid]['name'] }}</td>
                                                            <td>{{ $kotak_transaction['author_name'] }}</td>
                                                            <td>{{ $kotak_transaction['amount'] }}</td>
                                                        </tr> 
                                                    @endforeach
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <div class="d-flex justify-content-center">
                                        {!! $data['kotak']->appends($_GET)->links() !!}
                                    </div>
                                </div>
                            </div>
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
                    <h4 class="modal-title">ADD NEW Details </b></h4>
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
                                        <select name="bank_type" id="bank_type" class="js-example-responsive select2" style="width: 100%" required>
                                            <option readonly>Select Bank</option>
                                            <option value="0">BOI</option>
                                            <option value="1">KOTAK</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="row">
                                    <div class="form-group col-md-12">
                                        <label for="payment_type">Payment-Mode</label>
                                        <select name="payment_type" id="payment_type" class="js-example-responsive select2" required>
                                            <option readonly>Select Payment Mode</option>
                                            <option value="0">Credited</option>
                                            <option value="1">Debited</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="row">
                                    <div class="form-group author_name col-md-12">
                                        <label for="author_name">TO</label>
                                        <input type="text" name="author_name" id="author_name" class="form-control" placeholder="Enter Name" required>
                                    </div>
                                    <div class="form-group author_name1 col-md-12" style="display: none;">
                                        <label for="author_name">From</label>
                                        <input type="text" name="author_name1" id="author_name1" class="form-control" placeholder="Enter Name" required>
                                    </div>
                                </div>
                            </div>
                             <div class="col-md-6">
                                <div class="row">
                                    <div class="form-group col-md-12">
                                        <label for="date">Date</label>
                                        <input type="date" name="date" id="date" class="form-control datepicker hasDatepicker" placeholder="Enter amount" required>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="row">
                                    <div class="form-group col-md-12">
                                        <label for="amount">Amount</label>
                                        <input type="number" name="amount" id="amount" class="form-control" placeholder="Enter amount" required>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer justify-content-between">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <span data-href="{{route('bank.store_info')}}" id="export" class="btn btn-primary" onclick="store_info(event.target);">Submit</span>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
    </div>
    <script>
    $(document).ready(function() {
        $('select').on('change', function() {
            var payment_type = $("#payment_type").val();
                console.log(payment_type);
            if (payment_type == 0) {
                $(".author_name").hide();
                $(".author_name1").show();
            }else{
                $(".author_name").show();
                $(".author_name1").hide();
            }
        });
    }); 
    function store_info(_this) {
            var bank_type = document.getElementById('bank_type').value;
            var payment_type = document.getElementById('payment_type').value;
            var author_name1 = document.getElementById('author_name1').value;
            var author_name = document.getElementById('author_name').value;
            var date = document.getElementById('date').value;
            var amount = document.getElementById('amount').value;
            let _url = $(_this).data('href') + "?bank_type=" + bank_type + "&payment_type=" + payment_type + "&author_name1=" + author_name1 + "&author_name=" + author_name + "&date=" + date + "&amount=" + amount;
            window.location.href = _url;
    }

    function filter1(_this) {
        var date = document.getElementById('dateboi').value;
        var date1 = document.getElementById('date1').value;
        let _url = $(_this).data('href') + "?date=" + date + "&date1=" + date1 ;
        window.location.href = _url;
    }
</script>
</section>

 @stop
