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
                        <h3 class="card-title">Udhar list</h3>
                        <div class="card-tools">
                            <div class="input-group input-group-sm" style="width: 150px;">
                                <button type="button" value="" id="" class="btn btn-success" data-toggle2="tooltip"  data-toggle="modal" data-target="#modal-M" data-placement="top" title="Add New"><i class="fas fa-plus"> Add Details</i></button>
                            </div>
                        </div>
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
                                        <th>Name</th>
                                        <th>Type</th>
                                        <th>Amount</th>
                                        <th>Status</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody align="center">
                                    <?php @$udhar = udhar(); ?>
                                    <?php @$Status_mode = Status_mode(); ?>
                                    @php($i=0)
                                    @foreach($data as $udhar_info )
                                    @php($i++)
                                     <?php @$typeid = @$udhar_info['type']; ?>
                                     <?php @$sid = @$udhar_info['status']; ?>
                                        <tr>
                                            <td>{{ $i }}</td>
                                            <td>{{ Carbon\Carbon::parse(@$udhar_info['date'])->format('l jS \of F Y ') }}</td>
                                            <td>{{ @$udhar_info['name'] }}</td>
                                            <td>{{ @$udhar[$typeid]['name'] }}</td>
                                            <td>{{ number_format(@$udhar_info['amount'] ,2) }}</td>
                                            <td>{{ @$Status_mode[$sid]['name'] }}</td>
                                             <td>
                                                 <?php if(@$sid==0){ ?>
                                                    <?php @$id= @$udhar_info['id'] ?>
                                                    <button class="badge bg-danger deleted" value="{{@$id}}">Deleted</button>
                                                <?php }else{ ?>
                                                    <?php @$id= @$udhar_info['id'] ?>
                                                    <button class="badge bg-danger update" value="{{@$id}}">Update</button>
                                                <?php } ?>
                                                <a href="{{ route('udhar.edit_udhar',$udhar_info['id'])}}"><span class="badge bg-primary">edit</span></a>
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                            <div>
                                  
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
                    <h4 class="modal-title">NEW Details </h4>
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
                                    <div class="form-group col-md-6">
                                        <label for="type">Reason</label>
                                        <select name="type" id="type" class="js-example-responsive select2" style="width: 100%" required>
                                            <option readonly>Select Expense Reason</option>
                                            <option value="0">BORROW</option>
                                            <option value="1">LOAN</option>
                                        </select>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="date">Date</label>
                                        <input type="date" name="date" id="date" class="form-control" placeholder="Enter Price" required>
                                    </div>
                                </div>
                        </div>
                        <div class="col-md-12">
                            <div class="row">
                                <div class="form-group payment_method3 col-md-12">
                                    <label for="amount">Amount</label>
                                    <input type="number" name="amount" id="amount" class="form-control" placeholder="Enter Price" required>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="row">
                                <div class="form-group payment_method3 col-md-12">
                                    <label for="amount">Name</label>
                                    <input type="text" name="name" id="name" class="form-control" placeholder="Enter name" required>
                                </div>
                            </div>
                        </div>
                    </div>
                    </div>
                </div>
                <div class="modal-footer justify-content-between">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <span data-href="{{route('udhar.store_info')}}" id="export" class="btn btn-primary" onclick="store_expenses(event.target);">Submit</span>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
<script>
    $(document).ready(function() {
        $('select').on('change', function() {
            var payment_type = $("#payment_type").val();
                // console.log(payment_type);
            if (payment_type == 2) {
                $(".payment_method2").show();
            }else{
                $(".payment_method2").hide();
            }
        });
    }); 

$(".update").click(function(){
    let id=$(this).val();
    // alert(id);
    $.ajax({
          type: 'POST',
          headers: {
              'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
          },
          url: "{{ route('update') }}",
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

  $(".deleted").click(function(){
    let id=$(this).val();
    // alert(id);
    $.ajax({
          type: 'POST',
          headers: {
              'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
          },
          url: "{{ route('deleted') }}",
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
            var type = document.getElementById('type').value;
            var date = document.getElementById('date').value;
            var amount = document.getElementById('amount').value;
            var name = document.getElementById('name').value;
            let _url = $(_this).data('href') + "?type=" + type + "&date=" + date + "&amount=" + amount + "&name=" + name;
        window.location.href = _url;
    }
</script>
</section>
@stop