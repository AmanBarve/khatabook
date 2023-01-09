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
                <div class="row">
                    <div class="col-md-6">
                        <div class="card card-secondary">
                            <div class="card-header">
                                <h3 class="card-title">Month-wise Expenses</h3>
                            </div>

                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-striped table-bordered dt-responsive nowrap data-table dataTable display compact" cellspacing="0" width="100%">
                                        <thead align="center">
                                            <tr>
                                                <th>Date</th>
                                                <th>Cash-Amount</th>
                                                <th>Online-Amount</th>
                                                <th>Total-Amount</th>
                                                {{-- <th>Action</th> --}}
                                            </tr>
                                        </thead>
                                        <tbody align="center">
                                            @php($i=0)
                                            @foreach($Cash as $data_total )
                                            @php($i++)
                                            <tr>
                                                <td>{{ Carbon\Carbon::parse(@$data_total['date'])->format(' M Y ')}}</td>
                                                <td>{{ number_format(@$data_total['Cashamount'] ,2)}}</td>
                                                <?php foreach($online as $online_amount) { ?>
                                                    <?php if(@$data_total['date'] == @$online_amount['date']){ ?>
                                                        <td>{{ number_format(@$online_amount['onlineamount'],2)}}</td>
                                                    <?php } ?>
                                                <?php } ?>
                                                <?php foreach($total as $total_amount) { ?> 
                                                    <?php if(@$data_total['date'] == @$total_amount['date']){ ?>
                                                        <td>{{ number_format(@$total_amount['totalamount'],2)}}</td>
                                                    <?php } ?>
                                                <?php } ?>
                                            </tr>
                                            @endforeach
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                       <div class="col-md-6">
                        <div class="card card-secondary">
                            <div class="card-header">
                                <h3 class="card-title">Month-wise Expenses</h3>
                            </div>

                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-striped table-bordered dt-responsive nowrap data-table dataTable display compact" cellspacing="0" width="100%">
                                        <thead align="center">
                                            <tr>
                                                <th>Date</th>
                                                <th>Cash-Amount</th>
                                                <th>Online-Amount</th>
                                                <th>Total-Amount</th>
                                                {{-- <th>Action</th> --}}
                                            </tr>
                                        </thead>
                                        <tbody align="center">
                                            @php($i=0)
                                            @foreach($data as $data_total )
                                            @php($i++)
                                            <tr>
                                                <td>{{ Carbon\Carbon::parse(@$data_total['date'])->format(' M Y ')}}</td>
                                                <td>{{@$data_total['onlineamount']}}</td>
                                                <td></td>
                                                <td></td>
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
    </div>
</section>
@stop