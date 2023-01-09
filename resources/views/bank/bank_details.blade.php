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
                                 <div class="d-grid gap-2 d-md-block">
                                     <button class="btn btn-primary"  onclick="myFunction()">Show</button>
                                     <button type="button" value="" id="" class="btn btn-success" data-toggle2="tooltip"  data-toggle="modal" data-target="#modal-xl" data-placement="top" title="Update Details"><i class="fas fa-plus"> Update Details</i></button>
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
              
                    <div class="card-body">
                        <div class="row">
                            <div class="form-group col-md-4">
                                <div class="card card-primary card-outline">
                                    <div class="card-body box-profile">
                                        <h3 class="profile-username text-center">BOI</h3>
                                        <ul class="list-group list-group-unbordered mb-3">
                                            <li class="list-group-item"><?php  ?>
                                                <b>Account-Number</b>
                                                <a class="float-right">
                                                    {{ $BOI = getStoreSettings('BOI'); }}
                                                </a>
                                            </li>
                                            <li class="list-group-item">
                                                <b>IFSC</b>
                                                <a class="float-right">
                                                    {{ $BOI_IFSC = getStoreSettings('BOI_IFSC'); }}
                                                </a>
                                            </li>
                                            <li class="list-group-item">
                                                <b>Branch-Name</b>
                                                <a class="float-right">
                                                    {{ $BOI_Branch = getStoreSettings('BOI_Branch'); }}
                                                </a>
                                            </li>
                                        </ul>
                                         <ul class="list-group list-group-unbordered mb-3"  id="panel1" style="display: none;">
                                            <li class="list-group-item">
                                                <b>ATM-Number</b>
                                                <a class="float-right">
                                                    {{ $BOI_Atm = getStoreSettings('BOI_Atm'); }}
                                                </a>
                                            </li>
                                            <li class="list-group-item">
                                                <b>ATM-Cvv</b>
                                                <a class="float-right">
                                                    {{ $BOI_Cvv = getStoreSettings('BOI_Cvv'); }}
                                                </a>
                                            </li>
                                                <li class="list-group-item">
                                                <b>ATM-Password</b>
                                                <a class="float-right">
                                                    {{ $BOI_Atm_pass = getStoreSettings('BOI_Atm_pass'); }}
                                                </a>
                                            </li>
                                            </li>
                                                <li class="list-group-item">
                                                <b>Account-Balance</b>
                                                <a class="float-right">
                                                    {{-- <input type="text" name="store_name" id="store_name" value="{{$store_name}}" class="form-control" placeholder="Enter name"> --}}
                                                    <i class="fas fa-rupee-sign"></i> {{ number_format(@$BOI_balance = getStoreSettings('BOI_balance') ,2)}}
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group col-md-4">
                                <div class="card card-primary card-outline">
                                    <div class="card-body box-profile">
                                        <h3 class="profile-username text-center">KOTAK</h3>
                                        <ul class="list-group list-group-unbordered mb-3">
                                            <li class="list-group-item"><?php  ?>
                                                <b>Account-Number</b>
                                                <a class="float-right">
                                                    {{ $KOTAK = getStoreSettings('KOTAK'); }}
                                                </a>
                                            </li>
                                            <li class="list-group-item">
                                                <b>IFSC</b>
                                                <a class="float-right">
                                                    {{ $KOTAK_IFSC = getStoreSettings('KOTAK_IFSC'); }}
                                                </a>
                                            </li>
                                            <li class="list-group-item">
                                                <b>Branch-Name</b>
                                                <a class="float-right">
                                                    {{ $KOTAK_Branch = getStoreSettings('KOTAK_Branch'); }}
                                                </a>
                                            </li>
                                        </ul>
                                        <ul class="list-group list-group-unbordered mb-3" id="panel2" style="display: none;">
                                 
                                            <li class="list-group-item">
                                                <b>ATM-Number</b>
                                                <a class="float-right">
                                                    {{ $KOTAK_Atm = getStoreSettings('KOTAK_Atm'); }}
                                                </a>
                                            </li>
                                            <li class="list-group-item">
                                                <b>ATM-Cvv</b>
                                                <a class="float-right" >
                                                    {{ $KOTAK_Cvv = getStoreSettings('KOTAK_Cvv'); }}
                                                </a>
                                            </li>
                                                <li class="list-group-item">
                                                <b>ATM-Password</b>
                                                <a class="float-right" >
                                                    {{ $KOTAK_Atm_pass = getStoreSettings('KOTAK_Atm_pass'); }}
                                                </a>
                                            </li>
                                            </li>
                                                <li class="list-group-item">
                                                <b>Account-Balance</b>
                                                <a class="float-right" >
                                                    {{-- <input type="text" name="store_name" id="store_name" value="{{$store_name}}" class="form-control" placeholder="Enter name"> --}}
                                                    <i class="fas fa-rupee-sign"></i> {{ number_format(@$KOTAK_balance = getStoreSettings('KOTAK_balance') ,2)}}
                                                </a>
                                            </li>
                                        </ul>
                                   
                                    </div>
                                </div>
                            </div>
                             <div class="form-group col-md-4">
                                <div class="card card-primary card-outline">
                                    <div class="card-body box-profile">
                                        <h3 class="profile-username text-center">Balance</h3>
                                        <ul class="list-group list-group-unbordered mb-3">
                                            <li class="list-group-item">
                                                <b>Account-Balance</b>
                                                <a class="float-right">
                                                    <i class="fas fa-rupee-sign"></i> {{ number_format(@$KOTAK_balance = getStoreSettings('KOTAK_balance') ,2)}}
                                                </a>
                                            </li>
                                            <li class="list-group-item">
                                                <b>Papa-Balance</b>
                                                <a class="float-right">
                                                    <i class="fas fa-rupee-sign"></i> {{ number_format(@$Papa_amount = getStoreSettings('Papa_amount') ,2)}}
                                                </a>
                                            </li>
                                            <li class="list-group-item">
                                                <b>Aman-Balance</b>
                                                <a class="float-right">
                                                    <i class="fas fa-rupee-sign"></i> {{ number_format(@$Aman_amount = getStoreSettings('Aman_amount') ,2)}}
                                                </a>
                                            </li>
                                            <li class="list-group-item">
                                                <b>SIP-Balance</b>
                                                <a class="float-right">
                                                    <i class="fas fa-rupee-sign"></i> {{ number_format(@$SIP_amount = getStoreSettings('SIP_amount') ,2)}}
                                                </a>
                                            </li>
                                            <li class="list-group-item">
                                                <b>SIP-2-Khargone</b>
                                                <a class="float-right">
                                                    <i class="fas fa-rupee-sign"></i> {{ number_format(@$SIP_Kundan = getStoreSettings('SIP_Kundan') ,2)}}
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                    <div class="card card-primary card-outline">
                                    <div class="card-body box-profile">
                                        <ul class="list-group list-group-unbordered mb-3">
                                            <li class="list-group-item">
                                                <b>Cash-Amount</b>
                                                <a class="float-right">
                                                    <i class="fas fa-rupee-sign"></i> {{ number_format(@$Cash_balance = getStoreSettings('Cash_balance') ,2)}}
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            
                        </div>
                            
                    </div>
               
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="modal-xl">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">ADD NEW Details </b></h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>

                <form action="{{route('bank.bank_details_store')}}" method="post" enctype="multipart/form-data">
                @csrf
                <div class="modal-body">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-5">
                                <div class="row">
                                    <div class="form-group col-md-4"><?php $Papa_amount = getStoreSettings('Papa_amount'); ?>
                                        <label for="Papa_amount">Papa</label>
                                          <input type="text" name="Papa_amount" id="Papa_amount" value="{{ $Papa_amount }}" class="form-control" placeholder="Enter amount" required>
                                    </div>
                                    <div class="form-group col-md-4"><?php $Aman_amount = getStoreSettings('Aman_amount'); ?>
                                        <label for="Aman_amount">Aman</label>
                                          <input type="text" name="Aman_amount" id="Aman_amount" value="{{ $Aman_amount }}"  class="form-control" placeholder="Enter amount" required>
                                    </div>
                                    <div class="form-group  col-md-4"><?php $KOTAK_balance = getStoreSettings('KOTAK_balance'); ?>
                                        <label for="KOTAK_balance">KOTAK</label>
                                        <input type="text" name="KOTAK_balance" id="KOTAK_balance" value="{{ $KOTAK_balance }}"  class="form-control" placeholder="Enter amount" required>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-7">
                                <div class="row">
                                    <div class="form-group  col-md-3"><?php $SIP_amount = getStoreSettings('SIP_amount'); ?>
                                        <label for="SIP_amount">SIP</label>
                                        <input type="text" name="SIP_amount" id="SIP_amount" value="{{ $SIP_amount }}"  class="form-control" placeholder="Enter amount" required>
                                    </div>
                                    <div class="form-group  col-md-3"><?php $BOI_balance = getStoreSettings('BOI_balance'); ?>
                                        <label for="BOI_balance">BOI</label>
                                        <input type="text" name="BOI_balance" id="BOI_balance" value="{{ $BOI_balance }}"  class="form-control" placeholder="Enter amount" required>
                                    </div>
                                    <div class="form-group  col-md-3"><?php $Cash_balance = getStoreSettings('SIP_Kundan'); ?>
                                        <label for="SIP_Kundan">SIP-2 </label>
                                        <input type="text" name="SIP_Kundan" id="SIP_Kundan" value="{{ $SIP_Kundan }}"  class="form-control" placeholder="Enter amount" required>
                                    </div>
                                    <div class="form-group  col-md-3"><?php $Cash_balance = getStoreSettings('Cash_balance'); ?>
                                        <label for="Cash_balance">Cash</label>
                                        <input type="text" name="Cash_balance" id="Cash_balance" value="{{ $Cash_balance }}"  class="form-control" placeholder="Enter amount" required>
                                    </div>
                                </div>
                            </div>
                       
                        </div>
                    </div>
                </div>
                <div class="modal-footer justify-content-between">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                     <button type="submit" class="btn btn-primary">Update</button>
                    {{-- <span data-href="{{route('bank.store_info')}}" id="export" class="btn btn-primary" onclick="store_info(event.target);">Submit</span> --}}
                </div>
                 </form>
            </div>
            <!-- /.modal-content -->
        </div>
    </div>
  
     <script type="text/javascript">
         function myFunction() {

            document.getElementById("panel1").style.display = "block";
            document.getElementById("panel2").style.display = "block";

            }
     </script>
</section>

 @stop