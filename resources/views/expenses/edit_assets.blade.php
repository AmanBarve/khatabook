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
                         <h3 class="card-title">Upadate Assets Details</h3>
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
                     <form action="{{route('expenses.update_assets_datails',$assets_list['id'])}}" method="post" autocomplete="off" id="regForm" enctype="multipart/form-data">
                         @csrf
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="row">
                                        <div class="form-group col-md-12">
                                            <label for="assets_type">Assets</label>
                                            <select name="assets_type" id="assets_type" class="js-example-responsive select2" style="width: 100%" required>
                                                <option @if(@$assets_list['assets_type']==0) selected @endif value="0">Select Assets</option>
                                                <option @if(@$assets_list['assets_type']==1) selected @endif value="1">FD</option>
                                                <option @if(@$assets_list['assets_type']==2) selected @endif value="2">Account-balance</option>
                                                <option @if(@$assets_list['assets_type']==3) selected @endif value="3">Udhar</option>
                                                <option @if(@$assets_list['assets_type']==4) selected @endif value="4">accessories</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="row">
                                        <div class="form-group col-md-12">
                                            <label for="date">Date</label>
                                            <input type="date" name="date" id="date" value="{{Carbon\Carbon::parse(@$assets_list['date'])->format('Y-m-d')}}" class="form-control" placeholder="Enter End Date">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="payment_method">Holder-name</label>
                                    <input type="text" name="name" id="name" value="{{ @$assets_list['name'] }}" class="form-control" placeholder="Enter Price" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="amount">Amount</label>
                                    <input type="number" name="amount" id="amount" value="{{ @$assets_list['amount'] }}" class="form-control" placeholder="Enter Price" required>
                                </div>
                            </div>
                        </div>

                         <div class="card-footer">
                             <button type="submit" class="btn btn-primary">Submit</button>
                         </div>
                     </form>
                 </div>
             </div>
         </div>
     </div>
<script>

</script>
 </section>

 @stop