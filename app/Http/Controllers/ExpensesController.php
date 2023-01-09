<?php

namespace App\Http\Controllers;

use App\Models\Expenses;
use App\Models\Assets;
use Illuminate\Http\Request;
use Carbon\Carbon;
use DB;

class ExpensesController extends Controller
{

    public function expenses_list(Request $request, $created_at)
    {
        if (session()->has('Admin_login')) {
            $data = Expenses::select('*')->where('created_at' , $created_at)->orderBy('id', 'asc')->paginate(20);
            return view('expenses.expenses_list', compact('data'));
        }
        return redirect()->route('admin');
    }

    public function expenses(Request $request)
    {
        if (session()->has('Admin_login')) {
   
            // $month =Carbon::now()->format('m');
    
            $total_expenses = Expenses::sum('amount');
            $Cash = Expenses::where('payment_type', 1)->sum('amount');
            $online = Expenses::where('payment_type', 2)->sum('amount');
            $check = Expenses::where('payment_type', 3)->sum('amount');
         // total sum
            $query = Expenses::select([DB::raw("SUM(amount) as total_amount"), DB::raw("(created_at)")])->orderBy('created_at', 'desc')->groupBy('created_at');
            // ->where('month', $month)
            // dd($request->input('min'));
            if ($request->input('min') != '') {
                $query->where('created_at', $request->input('min'));
            }

            $selected_id = [];
            $selected_id['min'] = $request->min;
            // $selected_id['month'] = $request->month1;
            $data = $query->paginate(20);

            return view('expenses.expenseslist', compact('data', 'selected_id'))->with(['total_expenses' => $total_expenses, 'Cash' => $Cash, 'online' => $online, 'check' => $check]);
        }
        return redirect()->route('admin');
    }

    public function assetslist(Request $request)
    {
        if (session()->has('Admin_login')) {
            $data = Assets::select('*')->orderBy('id', 'asc')->paginate(20);
            return view('expenses.assetslist', compact('data'));
        }
        return redirect()->route('admin');
    }

    public function add_expenses(Request $request)
    {
        if (session()->has('Admin_login')) {
            return view('expenses.add_expenses');
        } else {
            return redirect('admin');
        }
    }

    public function store(Request $request)
    {
        dd($request);
        DB::beginTransaction();
        try {
            $Expenses = new Expenses;
            $Expenses->payment_reason = @$request->payment_reason;

            $pay_r= @$request->payment_reason;
            if($pay_r == 8 || $pay_r == 9 || $pay_r == 10 || $pay_r == 20) {
                $reason_name = @$request->reason_name;
            }
            else{
                $reason_name = "null"; 
            }
            $Expenses->reason_name = @$reason_name;

            $Expenses->payment_type = @$request->payment_type;
            // if ($request->payment_method) {
            //     $payment_method = @$request->payment_method;
            // }else{
            //     $payment_method = 0;
            // }
            $Expenses->payment_method = @$request->payment_method;

            if (@$request->amount) {
                $amount = @$request->amount;
            } else {
                $amount = @$request->amount1;
            }
            $Expenses->amount = @$amount ;

            if ($Expenses->payment_method != 0) {
                $online_amount = @$request->amount1;
            }

            if($request->date){
                $Expenses->created_at = $request->date;
            }
            $Expenses->time  =  $request->time;
            $Expenses->date  =  Carbon::now()->format('d');
            $Expenses->month =  Carbon::now()->format('m');
            $Expenses->year  =  Carbon::now()->format('Y');
            
            $Expenses->save();

            if ($Expenses->payment_method != 0) {
                if ($Expenses->payment_method != 5) {
                    $bank_type = 0;
                } else {
                    $bank_type = 1;
                }

                @$reasonlist = reasonlist();
                @$prid = @$request->payment_reason;

                $bank_transaction = [
                    'bank_type'        => @$bank_type,
                    'payment_type' => 1,
                    'amount'        => @$amount,
                    'author_name' => @$reasonlist[$prid]['name'],
                    'date' => Carbon::now()->format('Y-m-d')
                ];

                DB::table('bank_transaction')->insert($bank_transaction);
            } 

            if($request->payment_type == 1){
                @$Cash_balance = getStoreSettings('Cash_balance');
                @$v = (@$Cash_balance - @$request->amount);
                @$key = 'Cash_balance';
            }
           
            // payment_method     1 to4 =boi , 5=kotak
            // payment_type  2=online , 3=check
            if ($request->payment_type == 2) {
                @$BOI_balance = getStoreSettings('BOI_balance');
                @$KOTAK_balance = getStoreSettings('KOTAK_balance');
                if ($request->payment_method == 5) {
                    @$v = (@$KOTAK_balance-@$online_amount);
                    @$key = 'KOTAK_balance';
                } else {
                    @$v = (@$BOI_balance-@$online_amount);
                    @$key = 'BOI_balance';
                }
            }

            
            if (setStoreSettings(@$key, @$v)) {
                $flag = true;
            } else {
                $flag = false;
            }
            DB::commit();
            // all good
        } catch (\Exception $e) {
            dd($e);
        }
        if ($Expenses) {
            return redirect('expenses')->with('success', 'Record has been added successfully');
        } else {
            return back()->with('Fail', 'Something went wrong');
        }
    }

    public function store_info(Request $request)
    {
       
        DB::beginTransaction();
        try {
            $created_at = $request->created_at;
            $Expenses = new Expenses;
            $Expenses->payment_reason = @$request->payment_reason;
            $pay_r = @$request->payment_reason;
            if ($pay_r == 8 || $pay_r == 9 || $pay_r == 10 || $pay_r == 20) {
                $reason_name = @$request->reason_name;
            } else {
                $reason_name = "null";
            }
            $Expenses->reason_name = @$reason_name;
            $Expenses->payment_type = @$request->payment_type;
            $Expenses->payment_method = @$request->payment_method;

            if (@$request->amount) {
                $amount = @$request->amount;
            } else {
                $amount = @$request->amount1;
            }
            $Expenses->amount = @$amount;

            if ($Expenses->payment_method != 0) {
                $online_amount = @$request->amount1;
            }

            $Expenses->created_at  =  $request->created_at;
            $Expenses->updated_at =  $request->updated_at;
            $Expenses->time  =  $request->time;
            $Expenses->date  =  $request->date;
            $Expenses->month =  $request->month;
            $Expenses->year  =  $request->year;

            $Expenses->save();

            if($Expenses->payment_method != 0){
                if($Expenses->payment_method != 5){
                    $bank_type = 0;
                }
                else{
                    $bank_type = 1;
                }

                @$reasonlist = reasonlist();
                @$prid = @$request->payment_reason;

                $bank_transaction = [
                    'bank_type'        => @$bank_type,
                    'payment_type' => 1,
                    'amount'        => @$amount,
                    'author_name' => @$reasonlist[$prid]['name'],
                    'date' => @$request->created_at
                ];

                DB::table('bank_transaction')->insert($bank_transaction);
            }

            if ($request->payment_type == 1) {
                @$Cash_balance = getStoreSettings('Cash_balance');
                @$v = (@$Cash_balance - @$request->amount);
                @$key = 'Cash_balance';
            }
  

            // payment_method     1 to4 =boi , 5=kotak
            // payment_type  2=online , 3=check
            if ($request->payment_type == 2) {
                @$BOI_balance = getStoreSettings('BOI_balance');
                @$KOTAK_balance = getStoreSettings('KOTAK_balance');
                if ($request->payment_method == 5) {
                    @$v = (@$KOTAK_balance - @$online_amount);
                    @$key = 'KOTAK_balance';
                } else {
                    @$v = (@$BOI_balance - @$online_amount);
                    @$key = 'BOI_balance';
                }
            }
            if (setStoreSettings(@$key, @$v)) {
                $flag = true;
            } else {
                $flag = false;
            }
            DB::commit();
            // all good
        } catch (\Exception $e) {
            dd($e);
        }
        if ($Expenses) {
            return redirect()->route('expenses_list', [$created_at])->with('success', 'Record has been added successfully');
            // return redirect('expenses')->with('success', 'Record has been added successfully');
        } else {
            return back()->with('Fail', 'Something went wrong');
        }
    }

    public function assets_datails(Request $request)
    {

        DB::beginTransaction();
        try {
            $Assets = new Assets;
            $Assets->assets_type = @$request->assets_type;
            $Assets->name = @$request->name;
            $Assets->amount = @$request->amount;
            $Assets->date = @$request->date;
            $Assets->save();
            DB::commit();
            // all good
        } catch (\Exception $e) {
            dd($e);
        }
        if ($Assets) {
             return redirect('assetslist')->with('success', 'Record has been added successfully');
        } else {
            return back()->with('Fail', 'Something went wrong');
        }
    }

    public function edit_assets(Request $request)
    {
        // dd($request->id);
        if (session()->has('Admin_login')) {
            $data['assets_list'] = Assets::where('id', $request->id)->get()->first(); 
            return view('expenses.edit_assets', $data);
        } else {
            return redirect('admin');
        }
    }

    public function update_assets_datails(Request $request)
    {
        $data = Assets::find(@$request->id);
        // dd($data);
        DB::beginTransaction();
        try {
            $data->assets_type = @$request->assets_type;
            $data->name = @$request->name;
            $data->amount = @$request->amount;
            $data->date = @$request->date;
            $data->save();
            DB::commit();
            // all good
        } catch (\Exception $e) {
            dd($e);
        }
        return redirect('assetslist');
    }

    public function deleted_expenses(Request $request)
    {
        $Expenses = Expenses::find($request->id);
        $Expenses->delete();
        return response()->json($Expenses);
    }
}
