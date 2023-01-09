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
                        <h3 class="card-title">Expenses list</h3>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-4">
                                <label for="date">Cash Amount</label>
                                <input type="text"  value="{{ number_format(@$Cash_balance = getStoreSettings('Cash_balance') ,2)}}" class="form-control" readonly>
                            </div>
                            <div class="col-md-4">
                                <label for="date">BOI Amount</label>
                                <input type="text"  value="{{ number_format(@$BOI_balance = getStoreSettings('BOI_balance') ,2)}}" class="form-control" readonly>
                            </div>
                            <div class=" col-md-4">
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
                                        <th>Time</th>
                                        <th>Expenses Name</th>
                                        <th>Payment-Type</th>
                                        <th>Payment-Mode</th>
                                        <th>Amount</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody align="center">
                                    <?php
                                        $paymentmethod = paymentmethod();
                                        $payment_type = payment_type();
                                        $reasonlist = reasonlist();
                                    ?>
                                    <?php $subtotal = 0 ?>
                                    @php($i=0)
                                    @foreach($data as $expenses_info )
                                    {{-- @dd($expenses_info); --}}
                                    @php($i++)
                                    <?php @$subtotal += @$expenses_info['amount'] ?>
                                        <?php
                                            @$pmid = @$expenses_info['payment_method'];
                                            @$prid = @$expenses_info['payment_reason'];
                                            @$ptid = @$expenses_info['payment_type'];

                                            //for update
                                            @$date = @$expenses_info['date'];
                                            @$month = @$expenses_info['month'];
                                            @$year = @$expenses_info['year'];
                                            @$currentdate  =  Carbon\Carbon::now()->format('Y-m-d');
                                            @$daybefore = Carbon\Carbon::now()->subDays(1)->format('Y-m-d');
                                            @$created_at = @$expenses_info['created_at'];
                                            if(@$currentdate = @$created_at){
                                                 @$created_date = @$currentdate;
                                            }else{
                                                @$created_date = @$daybefore; 
                                            }
                                            @$updated_at = @$expenses_info['updated_at'];
                                        ?>
                                        <tr>
                                            <td>{{ $i }}</td>
                                            <td>{{ Carbon\Carbon::parse(@$expenses_info['created_at'])->format('l jS \of F Y ') }}</td>
                                            <td>{{ Carbon\Carbon::parse(@$expenses_info['time'])->format('h:i A') }}</td>
                                            <?php if(@$expenses_info['reason_name'] ="NULL"){ ?>
                                                <td>{{ @$reasonlist[$prid]['name'] }} </td>
                                            <?php }else{ ?>
                                                    <td>{{ @$reasonlist[$prid]['name'] }}- {{ @$expenses_info['reason_name'] }} </td>
                                            <?php } ?>
                                          
                                            <td>{{ @$payment_type[$ptid]['name'] }}</td>
                                            <td>{{ @$paymentmethod[$pmid]['name'] }}</td>
                                            <td>{{ number_format(@$expenses_info['amount'] ,2) }}</td>
                                           
                                             <td>
                                                 {{-- <?php @$created_at= Carbon\Carbon::parse(@$data_total['created_at'])->format('Y-m-d')?> --}}
                                                 <?php @$id= @$expenses_info['id']?>
                                                 <button class="badge bg-danger deleted" value="{{@$id}}">Deleted</button>
                                                {{-- <a href="{{ route('deleted',) }}"></a> --}}
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                                 <tfoot>
                                    <tr>
                                        <th colspan="6">SubTotal</th>
                                        <th colspan="3">{{ number_format(@$subtotal ,2) }}</th>
                                    </tr>
                                </tfoot>
                            </table>
                            <div>
                                  <button type="button" value="{{$date}}~{{$month}}~{{$year}}~{{$created_date}}~{{$updated_at}}" id="update_list" class="btn btn-success" data-toggle2="tooltip"  data-toggle="modal" data-target="#modal-M" data-placement="top" title="Update list"><i class="fas fa-plus"> Add More</i></button>
                                  {{-- <a href="{{ route('expenses_list',$created_at)}}" class="btn btn-outline-success"><i class="fa fa-plus" aria-hidden="true"></i> Add More</a> --}}
                            </div>
                        </div>
                    </div>
                    <div class="d-flex justify-content-center">
                        {!! $data->appends($_GET)->links() !!}
                    </div>
                </div>
            </div>
        </div>
    </div>
         <!-- /.modal-Update Order status -->
    <div class="modal fade" id="modal-M">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">NEW Expenses for <b id="name"></b> &nbsp;<b id="created_date"></b></h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>

                @csrf
                <div style="display: none;">
                    <input type="text" name="created_at" id="created_at" class="form-control">
                    <input type="text" name="updated_at" id="updated_at" class="form-control">
                    <input type="text" name="date" id="date" class="form-control">
                    <input type="text" name="month" id="month" class="form-control">
                    <input type="text" name="year" id="year" class="form-control">
                </div>

                <div class="modal-body">
                    <div class="card-body">
                        <div class="row">
                        <div class="col-md-6">
                                <div class="row">
                                    <div class="form-group col-md-12">
                                        <label for="payment_reason">Expense Reason</label>
                                        <select name="payment_reason" id="payment_reason" class="js-example-responsive select2" style="width: 100%" required>
                                            <option readonly>Select Expense Reason</option>
                                            <option value="0">fruits</option>
                                            <option value="1">Nasta</option>
                                            <option value="2">Khana</option>
                                            <option value="3">Ibus</option>
                                            <option value="4">Juice</option>
                                            <option value="5">Chai</option>
                                            <option value="6">Bus</option>
                                            <option value="7">Milk</option>
                                            <option value="8">Recharge</option>
                                            <option value="9">Tranfer</option>
                                            <option value="10">Shopping</option>
                                            <option value="11">Petrol</option>
                                            <option value="12">Shaving</option>
                                            <option value="13">Hair-cut</option>
                                            <option value="14">Medicine</option>
                                            <option value="15">Doctor</option>
                                            <option value="16">Movie</option>
                                            <option value="17">Donation</option>
                                            <option value="18">Bill</option>
                                            <option value="19">Bike</option>
                                            <option value="20">Udhar</option>
                                            <option value="21">Kirana</option>
                                            <option value="22">Dhai</option>
                                            <option value="23">Pani</option>
                                            <option value="24">Namkeen</option>
                                            <option value="25">Ice-cream</option>
                                            <option value="26">Chocolate</option>
                                            <option value="27">Other</option>
                                        </select>
                                    </div>
                                </div>
                        </div>
                            <div class="col-md-6">
                                <div class="row">
                                    <div class="form-group col-md-12">
                                        <label for="payment_type">Payment Type</label>
                                        <select name="payment_type" id="payment_type" class="js-example-responsive select2" required>
                                            <option readonly>Select Payment Type</option>
                                            <option value="1">Cash</option>
                                            <option value="2">Online</option>
                                            <option value="3">Check</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        <div class="form-group payment_method2 col-md-6"  style="display: none;">
                            <label for="payment_method">Payment Method</label>
                            <select name="payment_method" id="payment_method" class="js-example-responsive select2" required>
                                <option value="0">Select Payment Method</option>
                                <option value="1">Phone-Pay</option>
                                <option value="2">Amazon-Pay</option>
                                <option value="3">Google-Pay</option>
                                <option value="4">Paytm</option>
                                <option value="5">Kotak</option>
                            </select>
                        </div>
                        <div class="form-group payment_method1 col-md-6" style="display: none;">
                            <label for="amount">Amount</label>
                            <input type="number" name="amount1" id="amount1" class="form-control" placeholder="Enter Price" required>
                        </div>
                         <div class="form-group reason_name col-md-12" style="display: none;">
                            <label for="amount">Name</label>
                            <input type="reason_name" name="reason_name" id="reason_name" class="form-control" placeholder="Enter reason name" required>
                        </div>
                            <div class="col-md-12">
                                <div class="row">
                                    <div class="form-group payment_method3 col-md-12">
                                        <label for="amount">Amount</label>
                                        <input type="number" name="amount" id="amount" class="form-control" placeholder="Enter Price" required>
                                    </div>
                                      <div class="form-group payment_method3 col-md-12">
                                        <label for="amount">Time</label>
                                        <input type="time" name="time" id="time" class="form-control" placeholder="Enter time" required>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer justify-content-between">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <span data-href="{{route('expenses.store_info')}}" id="export" class="btn btn-primary" onclick="store_expenses(event.target);">Submit</span>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
<script>
    $(document).ready(function() {
        $('button').click(function() {
            var update_list = $(this).prop("value");
            $orderlist = update_list.split("~");
            $created_date = moment($orderlist[3]).format('Y-M-D');
            $updated_at = moment($orderlist[4]).format('Y-M-D');
            console.log($orderlist);
            $('#date').val($orderlist[0]);
            $('#month').val($orderlist[1]);
            $('#year').val($orderlist[2]);
            $('#created_date').text($created_date);
            $('#created_at').val($created_date);
            $('#updated_at').val($updated_at);
        });

        $('select').on('change', function() {
            var payment_type = $("#payment_type").val();
                // console.log(payment_type);
            if (payment_type == 2) {
                $(".payment_method3").hide();
                $(".payment_method1").show();
                $(".payment_method2").show();
            }else{
                $(".payment_method3").show();
                $(".payment_method1").hide();
                $(".payment_method2").hide();
            }
            var payment_reason = $("#payment_reason").val();
            if (payment_reason == 8 || payment_reason == 9 || payment_reason == 10 || payment_reason == 20) {
                $(".reason_name").show();
            }else{
                $(".reason_name").hide();
            }
        });
    }); 

$(".deleted").click(function(){
    let id=$(this).val();
    // alert(id);
    $.ajax({
          type: 'POST',
          headers: {
              'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
          },
          url: "{{ route('deleted_expenses') }}",
          data: {
              _token: $('meta[name="csrf-token"]').attr('content'),
              id: id
          },
          dataType: "json",
          success: function(data) {
              console.log(data);
                window.location.reload();
          }
    });
  });


    function store_expenses(_this) {
             var payment_reason = document.getElementById('payment_reason').value;
             var reason_name = document.getElementById('reason_name').value;
             var payment_type = document.getElementById('payment_type').value;
             var payment_method = document.getElementById('payment_method').value;
             var amount = document.getElementById('amount').value;
             var amount1 = document.getElementById('amount1').value;
             var created_at = document.getElementById('created_at').value;
             var updated_at = document.getElementById('updated_at').value;
             var date = document.getElementById('date').value;
             var time = document.getElementById('time').value;
             var month = document.getElementById('month').value;
             var year = document.getElementById('year').value;
             let _url = $(_this).data('href') + "?created_at=" + created_at + "&updated_at=" + updated_at + "&date=" + date + "&time=" + time + "&month=" + month+ "&year=" + year+ "&payment_reason=" + payment_reason+ "&reason_name=" + reason_name+ "&payment_type=" + payment_type+ "&payment_method=" + payment_method+ "&amount=" + amount+ "&amount1=" + amount1;
            window.location.href = _url;
    }
</script>
</section>
@stop