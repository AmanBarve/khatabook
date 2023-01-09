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
                         <h3 class="card-title">Add New Expenses</h3>
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

                     {{-- <?php
                      $paymentmethod = paymentmethod();
                      dd($paymentmethod);
                     ?> --}}


                     <form action="{{route('expenses.store')}}" method="post" autocomplete="off" id="regForm" enctype="multipart/form-data">
                         @csrf
                        <div class="card-body">
                             <div class="row">
                                 <div class="col-md-12">
                                     <div class="row">
                                         <div class="form-group col-md-6">
                                            <label for="payment_reason">Expense Reason</label>
                                            <select name="payment_reason" id="payment_reason" class="form-control select2" required>
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
                                                 <option value="13">Cuting</option>
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
                                                 <option value="27">other</option>
                                            </select>
                                         </div>
                                         <div class="form-group col-md-6">
                                            <label for="payment_type">Payment Type</label>
                                            <select name="payment_type" id="payment_type" class="form-control select2" required>
                                                 <option readonly>Select Payment Type</option>
                                                 <option value="1">Cash</option>
                                                 <option value="2">Online</option>
                                                 <option value="3">Check</option>
                                            </select>
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
                                            <input type="number" name="amount1" id="amount" class="form-control" placeholder="Enter Price" required>
                                         </div>
                                         <div class="form-group reason_name col-md-12" style="display: none;">
                                            <label for="amount">Name</label>
                                            <input type="reason_name" name="reason_name" id="reason_name" class="form-control" placeholder="Enter reason name" required>
                                         </div>
                                         <div class="form-group payment_method3 col-md-4">
                                            <label for="amount">Amount</label>
                                            <input type="number" name="amount" id="amount" class="form-control" placeholder="Enter Price" required>
                                         </div>
                                        <div class="form-group col-md-4">
                                            <label for="date">Date</label>
                                            <input type="date" name="date" id="date" class="form-control" placeholder="Enter Price" required>
                                         </div>
                                        <div class="form-group col-md-4">
                                            <label for="date">time</label>
                                            <input type="time" name="time" id="time" class="form-control" placeholder="Enter time" required>
                                         </div>

                                     </div>
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
     $(document).ready(function() {
        $('select').on('change', function() {
            var payment_type = $("#payment_type").val();
           
            //  console.log(payment_type);
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

        $("#regForm").validate({
                rules: {
                name: {
                    required: true,
                    maxlength: 20,
                },
                description: {
                    required: true,
                },
                logo:{
                    required: true,
                }
            },
            messages: {
                name: {
                    required: "Brand name is required",
                    maxlength: "Brand name cannot be more than 20 characters"
                },
                description: {
                    required: "Brand description is required",
                },
                logo: {
                    required: "Brand Image is required",
                },
            },
            errorElement: 'span',
            errorPlacement: function (error, element) {
                error.addClass('invalid-feedback');
                element.closest('.form-group').append(error);
            },
            highlight: function (element, errorClass, validClass) {
                $(element).addClass('is-invalid');
            },
            unhighlight: function (element, errorClass, validClass) {
                $(element).removeClass('is-invalid');
            }
        });
    });
</script>
 </section>

 @stop