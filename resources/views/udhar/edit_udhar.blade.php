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
                         <h3 class="card-title">Upadate Udhar Details</h3>
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
                    <form action="{{route('udhar.update_udhar_list',$Udhar_list['id'])}}" method="post" autocomplete="off" id="regForm" enctype="multipart/form-data">
                         @csrf
                        <div class="card-body">
                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label for="amount">Amount</label>
                                    <input type="number" name="amount" id="amount" value="{{ @$Udhar_list['amount'] }}" class="form-control" placeholder="Enter Amount" required>
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